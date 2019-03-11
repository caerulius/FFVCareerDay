# -*- mode: python -*-

block_cipher = None


a = Analysis(['CareerDayifier.py'],
             pathex=['C:\\Users\\cae\\projects\\FFVCareerDay\\utilities\\CareerDayPatcher'],
             binaries=[],
             datas=[('../../utilities/data/area.py', '.'), ('../../utilities/data/collectible.py', '.'), ('../../utilities/data/conductor.py', '.'), ('../../utilities/data/reward.py', '.'), ('../../utilities/data/shop.py', '.'), ('../../utilities/data/shop_price.py', '.'), ('../../utilities/data/data_manager.py', '.'), ('../../utilities/data/tables/ability_id.csv', 'tables/'), ('../../utilities/data/tables/areas.csv', 'tables/'), ('../../utilities/data/tables/collectibles.csv', 'tables/'), ('../../utilities/data/tables/crystal_id.csv', 'tables/'), ('../../utilities/data/tables/item_id.csv', 'tables/'), ('../../utilities/data/tables/gil_rewards.csv', 'tables/'), ('../../utilities/data/tables/magic_id.csv', 'tables/'), ('../../utilities/data/tables/rewards.csv', 'tables/'), ('../../utilities/data/tables/shop_id.csv', 'tables/'), ('../../utilities/data/tables/shop_prices.csv', 'tables/'), ('../../utilities/CareerDayPatcher/patches/ffv_project_demi_boss.ips', 'patches/'), ('../../utilities/CareerDayPatcher/patches/ffv_project_demi_expabp2.ips', 'patches/'), ('../../utilities/CareerDayPatcher/patches/ffv_project_demi_expabp4.ips', 'patches/'), ('../../utilities/CareerDayPatcher/patches/ffv_project_demi_main.ips', 'patches/'), ('../../utilities/CareerDayPatcher/patches/ffv_project_demi_main_rando.ips', 'patches/'), ('../../utilities/CareerDayPatcher/patches/rpge.ips', 'patches/'), ('../../utilities/CareerDayPatcher/asar.exe', '.')],
             hiddenimports=['pandas'],
             hookspath=[],
             runtime_hooks=[],
             excludes=[],
             win_no_prefer_redirects=False,
             win_private_assemblies=False,
             cipher=block_cipher,
             noarchive=False)
pyz = PYZ(a.pure, a.zipped_data,
             cipher=block_cipher)
exe = EXE(pyz,
          a.scripts,
          a.binaries,
          a.zipfiles,
          a.datas,
          [],
          name='CareerDayifier',
          debug=False,
          bootloader_ignore_signals=False,
          strip=False,
          upx=True,
          runtime_tmpdir=None,
          console=True , icon='..\\..\\careerday-web\\favicon.ico')
