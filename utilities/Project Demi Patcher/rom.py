#!/usr/bin/env python

import logging
import os
import struct

__author__ = ('David Anderson <dave@natulte.net>',
              'Maxime Petazzoni <maxime.petazzoni@bulix.org>')

LOG = logging.getLogger('romparser')

# SMC ROM files may have an additional 512-byte SMC header at the beginning:
#   offset  size in bytes    contents
#  ----------------------------------------------------------------------------
#   0       2                ROM dump size, in units of 8kB (little-endian).
#   2       1                Binary flags for the ROM layout and save-RAM size.
#   3       509              All zero.

SMC_HEADER_SIZE = 512
SMC_HEADER_SIZE_NON_ZERO = 3
SMC_HEADER_FORMAT = '@HB'

SMC_ROM_LAYOUT_LOROM = 0x00
SMC_ROM_LAYOUT_HIROM = 0x30
SMC_SAVERAM_SIZE_32KB = 0x00
SMC_SAVERAM_SIZE_8KB = 0x04
SMC_SAVERAM_SIZE_4KB = 0x08
SMC_SAVERAM_SIZE_0kB = 0x0c

# SNES ROM headers are located at addresses 0x7fc0 for LoROM images and 0xffc0
# for HiROM images. These values may need to be offseted by 512 bytes when a
# SMC ROM header is present (respectively 0x81c0 and 0x101c0).
# See http://romhack.wikia.com/wiki/SNES_header for more information on SNES
# header fields and their values.

SNES_HEADER_SIZE = 64
SNES_HEADER_SIZE_PARSED = 25
SNES_HEADER_OFFSET_LOROM = 0x7fc0
SNES_HEADER_OFFSET_HIROM = 0xffc0

# SNES header format:
#   offset  size in bytes    contents
#  ----------------------------------------------------------------------------
#   0       21               Space-padded ASCII game title.
#   21      1                ROM layout (LoROM / HiROM / FastROM).
#   22      1                Cartridge type (ROM-only / with save-RAM).
#   23      1                ROM byte size.
#   24      1                RAM byte size.
#   ... more, unparsed now.
SNES_HEADER_FORMAT = '@21sBBBB'

SNES_ROM_LAYOUT_LOROM = 0x20
SNES_ROM_LAYOUT_HIROM = 0x21
SNES_ROM_LAYOUT_FASTROM = 0x10

SNES_CARTRIDGE_TYPE_ROM_ONLY = 0x00
SNES_CARTRIDGE_TYPE_SAVERAM = 0x02

class InvalidRomFileException(Exception):
    """The provided ROM file is invalid or not supported."""
    pass

class InvalidHeaderFormatException(Exception):
    """The SNES ROM header could not be parsed in this ROM."""
    pass

class SNESRom:

    def __init__(self, filename):
        self.filename = filename
        self.rom = open(filename, encoding="charmap")

        self.filesize = os.fstat(self.rom.fileno()).st_size

        # SMC header data, when present
        self._smc_parsed = False
        self.has_smc_header = None
        self.smc_rom_dumpsize = None
        self.smc_rom_layout = None
        self.smc_saveram_size = None

        # SNES Header data
        self._snes_parsed = False
        self.title = None
        self.rom_layout = None
        self.cartridge_type = None
        self.rom_size = None
        self.ram_size = None

    def _parse_smc_header(self):
        LOG.debug('Looking for SMC header...')
        rem = self.filesize % 1024
        if rem == 0:
            LOG.debug('ROM filesize is N*1024 bytes, no SMC header present.')
            self.has_smc_header = False
            self._smc_parsed = True
        elif rem == 512:
            LOG.debug('Found SMC header, parsing...')
            self.rom.seek(0)
            header = self.rom.read(SMC_HEADER_SIZE_NON_ZERO)
            data = struct.unpack(SMC_HEADER_FORMAT, header)
            LOG.debug('SMC Header data: %s.', data)

            self.has_smc_header = True
            self.smc_rom_dumpsize = data[0]*8*1024
            # TODO: parse binary flags from SMC header data[1]
            self._smc_parsed = True
        else:
            raise InvalidRomFileException

    def _read_header_at(self, offset):
        """Read and unpack the SNES header at the given offset, eventually
        taking into account the presence of an SMC header.
        """
        LOG.debug('Reading SNES header at offset %s (has SMC header: %s)...' %
                  (hex(offset), bool(self.has_smc_header)))

        try:
            self.rom.seek(offset + self.has_smc_header*SMC_HEADER_SIZE)
            header = self.rom.read(SNES_HEADER_SIZE_PARSED)
            data = struct.unpack(SNES_HEADER_FORMAT, header)
            LOG.debug('SNES header data: %s.' % repr(data))
            return data
        except struct.error:
            raise InvalidHeaderFormatException

    def parse(self):
        """Parses the ROM image to extract information from the SNES header
        (game title, ROM details, etc.)."""

        if self._snes_parsed:
            return

        if not self._smc_parsed:
            self._parse_smc_header()

        try:
            LOG.debug('Parsing SNES header at offset %s...' %
                     hex(SNES_HEADER_OFFSET_LOROM))
            header_data = self._read_header_at(SNES_HEADER_OFFSET_LOROM)
        except InvalidHeaderFormatException:
            LOG.warning('Header does not match expected format at LoROM offset. '
                        'Trying at HiROM offset %d...' %
                     hex(SNES_HEADER_OFFSET_HIROM))
            try:
                header_data = self._read_header_at(SNES_HEADER_OFFSET_HIROM)
            except InvalidHeaderFormatException:
                LOG.error('Header still does not match expected format. '
                          'Giving up!')
                raise InvalidRomFileException

        self.title = header_data[0].strip().title()
        self.rom_layout = header_data[1]
        self.cartridge_type = header_data[2]
        self.rom_size = 2**header_data[3]
        self.ram_size = 2**header_data[4]
        self._snes_parsed = True

    def get_layout_type(self):
        """Returns the display-friendly ROM layout type."""
        assert self._snes_parsed

        if self.rom_layout == SNES_ROM_LAYOUT_LOROM:
            return 'LoROM'
        elif self.rom_layout == SNES_ROM_LAYOUT_HIROM:
            return 'HiROM'
        elif self.rom_layout == SNES_ROM_LAYOUT_FASTROM:
            return 'FastROM'
        else:
            return 'n/a'

    def get_cartridge_type(self):
        """Returns the display-friendly cartridge type."""
        assert self._snes_parsed

        if self.cartridge_type == SNES_CARTRIDGE_TYPE_ROM_ONLY:
            return 'ROM-only'
        elif self.cartridge_type == SNES_CARTRIDGE_TYPE_SAVERAM:
            return 'save-RAM'
        else:
            return 'n/a'

    def get_info_string(self):
        """Returns a display-friendly info string on this ROM."""
        assert self._snes_parsed

        info = '%dkB %s' % (self.rom_size, self.get_layout_type())

        if self.cartridge_type == SNES_CARTRIDGE_TYPE_SAVERAM:
            info += ', with %dkB %s' % (self.ram_size,
                                        self.get_cartridge_type())
        else:
            info += ', %s' % self.get_cartridge_type()

        return info
