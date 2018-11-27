memory.usememorydomain("WRAM")

local hash_code_last = memory.hash_region(0x000a14,188)
local trigger = 0


local address_0 = memory.readbyte(0x000A14)
local address_1 = memory.readbyte(0x000A15)
local address_2 = memory.readbyte(0x000A16)
local address_3 = memory.readbyte(0x000A17)
local address_4 = memory.readbyte(0x000A18)
local address_5 = memory.readbyte(0x000A19)
local address_6 = memory.readbyte(0x000A1A)
local address_7 = memory.readbyte(0x000A1B)
local address_8 = memory.readbyte(0x000A1C)
local address_9 = memory.readbyte(0x000A1D)
local address_10 = memory.readbyte(0x000A1E)
local address_11 = memory.readbyte(0x000A1F)
local address_12 = memory.readbyte(0x000A20)
local address_13 = memory.readbyte(0x000A21)
local address_14 = memory.readbyte(0x000A22)
local address_15 = memory.readbyte(0x000A23)
local address_16 = memory.readbyte(0x000A24)
local address_17 = memory.readbyte(0x000A25)
local address_18 = memory.readbyte(0x000A26)
local address_19 = memory.readbyte(0x000A27)
local address_20 = memory.readbyte(0x000A28)
local address_21 = memory.readbyte(0x000A29)
local address_22 = memory.readbyte(0x000A2A)
local address_23 = memory.readbyte(0x000A2B)
local address_24 = memory.readbyte(0x000A2C)
local address_25 = memory.readbyte(0x000A2D)
local address_26 = memory.readbyte(0x000A2E)
local address_27 = memory.readbyte(0x000A2F)
local address_28 = memory.readbyte(0x000A30)
local address_29 = memory.readbyte(0x000A31)
local address_30 = memory.readbyte(0x000A32)
local address_31 = memory.readbyte(0x000A33)
local address_32 = memory.readbyte(0x000A34)
local address_33 = memory.readbyte(0x000A35)
local address_34 = memory.readbyte(0x000A36)
local address_35 = memory.readbyte(0x000A37)
local address_36 = memory.readbyte(0x000A38)
local address_37 = memory.readbyte(0x000A39)
local address_38 = memory.readbyte(0x000A3A)
local address_39 = memory.readbyte(0x000A3B)
local address_40 = memory.readbyte(0x000A3C)
local address_41 = memory.readbyte(0x000A3D)
local address_42 = memory.readbyte(0x000A3E)
local address_43 = memory.readbyte(0x000A3F)
local address_44 = memory.readbyte(0x000A40)
local address_45 = memory.readbyte(0x000A41)
local address_46 = memory.readbyte(0x000A42)
local address_47 = memory.readbyte(0x000A43)
local address_48 = memory.readbyte(0x000A44)
local address_49 = memory.readbyte(0x000A45)
local address_50 = memory.readbyte(0x000A46)
local address_51 = memory.readbyte(0x000A47)
local address_52 = memory.readbyte(0x000A48)
local address_53 = memory.readbyte(0x000A49)
local address_54 = memory.readbyte(0x000A4A)
local address_55 = memory.readbyte(0x000A4B)
local address_56 = memory.readbyte(0x000A4C)
local address_57 = memory.readbyte(0x000A4D)
local address_58 = memory.readbyte(0x000A4E)
local address_59 = memory.readbyte(0x000A4F)
local address_60 = memory.readbyte(0x000A50)
local address_61 = memory.readbyte(0x000A51)
local address_62 = memory.readbyte(0x000A52)
local address_63 = memory.readbyte(0x000A53)
local address_64 = memory.readbyte(0x000A54)
local address_65 = memory.readbyte(0x000A55)
local address_66 = memory.readbyte(0x000A56)
local address_67 = memory.readbyte(0x000A57)
local address_68 = memory.readbyte(0x000A58)
local address_69 = memory.readbyte(0x000A59)
local address_70 = memory.readbyte(0x000A5A)
local address_71 = memory.readbyte(0x000A5B)
local address_72 = memory.readbyte(0x000A5C)
local address_73 = memory.readbyte(0x000A5D)
local address_74 = memory.readbyte(0x000A5E)
local address_75 = memory.readbyte(0x000A5F)
local address_76 = memory.readbyte(0x000A60)
local address_77 = memory.readbyte(0x000A61)
local address_78 = memory.readbyte(0x000A62)
local address_79 = memory.readbyte(0x000A63)
local address_80 = memory.readbyte(0x000A64)
local address_81 = memory.readbyte(0x000A65)
local address_82 = memory.readbyte(0x000A66)
local address_83 = memory.readbyte(0x000A67)
local address_84 = memory.readbyte(0x000A68)
local address_85 = memory.readbyte(0x000A69)
local address_86 = memory.readbyte(0x000A6A)
local address_87 = memory.readbyte(0x000A6B)
local address_88 = memory.readbyte(0x000A6C)
local address_89 = memory.readbyte(0x000A6D)
local address_90 = memory.readbyte(0x000A6E)
local address_91 = memory.readbyte(0x000A6F)
local address_92 = memory.readbyte(0x000A70)
local address_93 = memory.readbyte(0x000A71)
local address_94 = memory.readbyte(0x000A72)
local address_95 = memory.readbyte(0x000A73)
local address_96 = memory.readbyte(0x000A74)
local address_97 = memory.readbyte(0x000A75)
local address_98 = memory.readbyte(0x000A76)
local address_99 = memory.readbyte(0x000A77)
local address_100 = memory.readbyte(0x000A78)
local address_101 = memory.readbyte(0x000A79)
local address_102 = memory.readbyte(0x000A7A)
local address_103 = memory.readbyte(0x000A7B)
local address_104 = memory.readbyte(0x000A7C)
local address_105 = memory.readbyte(0x000A7D)
local address_106 = memory.readbyte(0x000A7E)
local address_107 = memory.readbyte(0x000A7F)
local address_108 = memory.readbyte(0x000A80)
local address_109 = memory.readbyte(0x000A81)
local address_110 = memory.readbyte(0x000A82)
local address_111 = memory.readbyte(0x000A83)
local address_112 = memory.readbyte(0x000A84)
local address_113 = memory.readbyte(0x000A85)
local address_114 = memory.readbyte(0x000A86)
local address_115 = memory.readbyte(0x000A87)
local address_116 = memory.readbyte(0x000A88)
local address_117 = memory.readbyte(0x000A89)
local address_118 = memory.readbyte(0x000A8A)
local address_119 = memory.readbyte(0x000A8B)
local address_120 = memory.readbyte(0x000A8C)
local address_121 = memory.readbyte(0x000A8D)
local address_122 = memory.readbyte(0x000A8E)
local address_123 = memory.readbyte(0x000A8F)
local address_124 = memory.readbyte(0x000A90)
local address_125 = memory.readbyte(0x000A91)
local address_126 = memory.readbyte(0x000A92)
local address_127 = memory.readbyte(0x000A93)
local address_128 = memory.readbyte(0x000A94)
local address_129 = memory.readbyte(0x000A95)
local address_130 = memory.readbyte(0x000A96)
local address_131 = memory.readbyte(0x000A97)
local address_132 = memory.readbyte(0x000A98)
local address_133 = memory.readbyte(0x000A99)
local address_134 = memory.readbyte(0x000A9A)
local address_135 = memory.readbyte(0x000A9B)
local address_136 = memory.readbyte(0x000A9C)
local address_137 = memory.readbyte(0x000A9D)
local address_138 = memory.readbyte(0x000A9E)
local address_139 = memory.readbyte(0x000A9F)
local address_140 = memory.readbyte(0x000AA0)
local address_141 = memory.readbyte(0x000AA1)
local address_142 = memory.readbyte(0x000AA2)
local address_143 = memory.readbyte(0x000AA3)
local address_144 = memory.readbyte(0x000AA4)
local address_145 = memory.readbyte(0x000AA5)
local address_146 = memory.readbyte(0x000AA6)
local address_147 = memory.readbyte(0x000AA7)
local address_148 = memory.readbyte(0x000AA8)
local address_149 = memory.readbyte(0x000AA9)
local address_150 = memory.readbyte(0x000AAA)
local address_151 = memory.readbyte(0x000AAB)
local address_152 = memory.readbyte(0x000AAC)
local address_153 = memory.readbyte(0x000AAD)
local address_154 = memory.readbyte(0x000AAE)
local address_155 = memory.readbyte(0x000AAF)
local address_156 = memory.readbyte(0x000AB0)
local address_157 = memory.readbyte(0x000AB1)
local address_158 = memory.readbyte(0x000AB2)
local address_159 = memory.readbyte(0x000AB3)
local address_160 = memory.readbyte(0x000AB4)
local address_161 = memory.readbyte(0x000AB5)
local address_162 = memory.readbyte(0x000AB6)
local address_163 = memory.readbyte(0x000AB7)
local address_164 = memory.readbyte(0x000AB8)
local address_165 = memory.readbyte(0x000AB9)
local address_166 = memory.readbyte(0x000ABA)
local address_167 = memory.readbyte(0x000ABB)
local address_168 = memory.readbyte(0x000ABC)
local address_169 = memory.readbyte(0x000ABD)
local address_170 = memory.readbyte(0x000ABE)
local address_171 = memory.readbyte(0x000ABF)
local address_172 = memory.readbyte(0x000AC0)
local address_173 = memory.readbyte(0x000AC1)
local address_174 = memory.readbyte(0x000AC2)
local address_175 = memory.readbyte(0x000AC3)
local address_176 = memory.readbyte(0x000AC4)
local address_177 = memory.readbyte(0x000AC5)
local address_178 = memory.readbyte(0x000AC6)
local address_179 = memory.readbyte(0x000AC7)
local address_180 = memory.readbyte(0x000AC8)
local address_181 = memory.readbyte(0x000AC9)
local address_182 = memory.readbyte(0x000ACA)
local address_183 = memory.readbyte(0x000ACB)
local address_184 = memory.readbyte(0x000ACC)
local address_185 = memory.readbyte(0x000ACD)
local address_186 = memory.readbyte(0x000ACE)
local address_187 = memory.readbyte(0x000ACF)

local time_now = os.time()
local time_backup = os.time()
local TIME_BACKUP = 30

function save_backup()
	if time_now - time_backup >= TIME_BACKUP then
		savestate.save("../SNES/Screenshots/BACKUP.STATE")
		time_backup = time_now
	end
end
function trigger_text()
	if trigger == 1 then
		gui.text(0,80,"Trigger hash")
		read_addresses_0()
		read_addresses_1()
		read_addresses_2()
		read_addresses_3()
	end
end
function hash_region()
	local hash_code
	hash_code = memory.hash_region(0x000a14,188)
	if hash_code ~= hash_code_last then
		trigger = 1
	end
	hash_code_last = hash_code
end

function update_addresses_0()
	address_0 = memory.readbyte(0x000A14)
	address_1 = memory.readbyte(0x000A15)
	address_2 = memory.readbyte(0x000A16)
	address_3 = memory.readbyte(0x000A17)
	address_4 = memory.readbyte(0x000A18)
	address_5 = memory.readbyte(0x000A19)
	address_6 = memory.readbyte(0x000A1A)
	address_7 = memory.readbyte(0x000A1B)
	address_8 = memory.readbyte(0x000A1C)
	address_9 = memory.readbyte(0x000A1D)
	address_10 = memory.readbyte(0x000A1E)
	address_11 = memory.readbyte(0x000A1F)
	address_12 = memory.readbyte(0x000A20)
	address_13 = memory.readbyte(0x000A21)
	address_14 = memory.readbyte(0x000A22)
	address_15 = memory.readbyte(0x000A23)
	address_16 = memory.readbyte(0x000A24)
	address_17 = memory.readbyte(0x000A25)
	address_18 = memory.readbyte(0x000A26)
	address_19 = memory.readbyte(0x000A27)
	address_20 = memory.readbyte(0x000A28)
	address_21 = memory.readbyte(0x000A29)
	address_22 = memory.readbyte(0x000A2A)
	address_23 = memory.readbyte(0x000A2B)
	address_24 = memory.readbyte(0x000A2C)
	address_25 = memory.readbyte(0x000A2D)
	address_26 = memory.readbyte(0x000A2E)
	address_27 = memory.readbyte(0x000A2F)
	address_28 = memory.readbyte(0x000A30)
	address_29 = memory.readbyte(0x000A31)
	address_30 = memory.readbyte(0x000A32)
	address_31 = memory.readbyte(0x000A33)
	address_32 = memory.readbyte(0x000A34)
	address_33 = memory.readbyte(0x000A35)
	address_34 = memory.readbyte(0x000A36)
	address_35 = memory.readbyte(0x000A37)
	address_36 = memory.readbyte(0x000A38)
	address_37 = memory.readbyte(0x000A39)
	address_38 = memory.readbyte(0x000A3A)
	address_39 = memory.readbyte(0x000A3B)
	address_40 = memory.readbyte(0x000A3C)
	address_41 = memory.readbyte(0x000A3D)
	address_42 = memory.readbyte(0x000A3E)
	address_43 = memory.readbyte(0x000A3F)
	address_44 = memory.readbyte(0x000A40)
	address_45 = memory.readbyte(0x000A41)
	address_46 = memory.readbyte(0x000A42)
	address_47 = memory.readbyte(0x000A43)
	address_48 = memory.readbyte(0x000A44)
	address_49 = memory.readbyte(0x000A45)
	address_50 = memory.readbyte(0x000A46)
end
function update_addresses_1()
	address_51 = memory.readbyte(0x000A47)
	address_52 = memory.readbyte(0x000A48)
	address_53 = memory.readbyte(0x000A49)
	address_54 = memory.readbyte(0x000A4A)
	address_55 = memory.readbyte(0x000A4B)
	address_56 = memory.readbyte(0x000A4C)
	address_57 = memory.readbyte(0x000A4D)
	address_58 = memory.readbyte(0x000A4E)
	address_59 = memory.readbyte(0x000A4F)
	address_60 = memory.readbyte(0x000A50)
	address_61 = memory.readbyte(0x000A51)
	address_62 = memory.readbyte(0x000A52)
	address_63 = memory.readbyte(0x000A53)
	address_64 = memory.readbyte(0x000A54)
	address_65 = memory.readbyte(0x000A55)
	address_66 = memory.readbyte(0x000A56)
	address_67 = memory.readbyte(0x000A57)
	address_68 = memory.readbyte(0x000A58)
	address_69 = memory.readbyte(0x000A59)
	address_70 = memory.readbyte(0x000A5A)
	address_71 = memory.readbyte(0x000A5B)
	address_72 = memory.readbyte(0x000A5C)
	address_73 = memory.readbyte(0x000A5D)
	address_74 = memory.readbyte(0x000A5E)
	address_75 = memory.readbyte(0x000A5F)
	address_76 = memory.readbyte(0x000A60)
	address_77 = memory.readbyte(0x000A61)
	address_78 = memory.readbyte(0x000A62)
	address_79 = memory.readbyte(0x000A63)
	address_80 = memory.readbyte(0x000A64)
	address_81 = memory.readbyte(0x000A65)
	address_82 = memory.readbyte(0x000A66)
	address_83 = memory.readbyte(0x000A67)
	address_84 = memory.readbyte(0x000A68)
	address_85 = memory.readbyte(0x000A69)
	address_86 = memory.readbyte(0x000A6A)
	address_87 = memory.readbyte(0x000A6B)
	address_88 = memory.readbyte(0x000A6C)
	address_89 = memory.readbyte(0x000A6D)
	address_90 = memory.readbyte(0x000A6E)
	address_91 = memory.readbyte(0x000A6F)
	address_92 = memory.readbyte(0x000A70)
	address_93 = memory.readbyte(0x000A71)
	address_94 = memory.readbyte(0x000A72)
	address_95 = memory.readbyte(0x000A73)
	address_96 = memory.readbyte(0x000A74)
	address_97 = memory.readbyte(0x000A75)
	address_98 = memory.readbyte(0x000A76)
	address_99 = memory.readbyte(0x000A77)
	address_100 = memory.readbyte(0x000A78)
end
function update_addresses_2()
	address_101 = memory.readbyte(0x000A79)
	address_102 = memory.readbyte(0x000A7A)
	address_103 = memory.readbyte(0x000A7B)
	address_104 = memory.readbyte(0x000A7C)
	address_105 = memory.readbyte(0x000A7D)
	address_106 = memory.readbyte(0x000A7E)
	address_107 = memory.readbyte(0x000A7F)
	address_108 = memory.readbyte(0x000A80)
	address_109 = memory.readbyte(0x000A81)
	address_110 = memory.readbyte(0x000A82)
	address_111 = memory.readbyte(0x000A83)
	address_112 = memory.readbyte(0x000A84)
	address_113 = memory.readbyte(0x000A85)
	address_114 = memory.readbyte(0x000A86)
	address_115 = memory.readbyte(0x000A87)
	address_116 = memory.readbyte(0x000A88)
	address_117 = memory.readbyte(0x000A89)
	address_118 = memory.readbyte(0x000A8A)
	address_119 = memory.readbyte(0x000A8B)
	address_120 = memory.readbyte(0x000A8C)
	address_121 = memory.readbyte(0x000A8D)
	address_122 = memory.readbyte(0x000A8E)
	address_123 = memory.readbyte(0x000A8F)
	address_124 = memory.readbyte(0x000A90)
	address_125 = memory.readbyte(0x000A91)
	address_126 = memory.readbyte(0x000A92)
	address_127 = memory.readbyte(0x000A93)
	address_128 = memory.readbyte(0x000A94)
	address_129 = memory.readbyte(0x000A95)
	address_130 = memory.readbyte(0x000A96)
	address_131 = memory.readbyte(0x000A97)
	address_132 = memory.readbyte(0x000A98)
	address_133 = memory.readbyte(0x000A99)
	address_134 = memory.readbyte(0x000A9A)
	address_135 = memory.readbyte(0x000A9B)
	address_136 = memory.readbyte(0x000A9C)
	address_137 = memory.readbyte(0x000A9D)
	address_138 = memory.readbyte(0x000A9E)
	address_139 = memory.readbyte(0x000A9F)
	address_140 = memory.readbyte(0x000AA0)
	address_141 = memory.readbyte(0x000AA1)
	address_142 = memory.readbyte(0x000AA2)
	address_143 = memory.readbyte(0x000AA3)
	address_144 = memory.readbyte(0x000AA4)
	address_145 = memory.readbyte(0x000AA5)
	address_146 = memory.readbyte(0x000AA6)
	address_147 = memory.readbyte(0x000AA7)
	address_148 = memory.readbyte(0x000AA8)
	address_149 = memory.readbyte(0x000AA9)
	address_150 = memory.readbyte(0x000AAA)
end
function update_addresses_3()
	address_151 = memory.readbyte(0x000AAB)
	address_152 = memory.readbyte(0x000AAC)
	address_153 = memory.readbyte(0x000AAD)
	address_154 = memory.readbyte(0x000AAE)
	address_155 = memory.readbyte(0x000AAF)
	address_156 = memory.readbyte(0x000AB0)
	address_157 = memory.readbyte(0x000AB1)
	address_158 = memory.readbyte(0x000AB2)
	address_159 = memory.readbyte(0x000AB3)
	address_160 = memory.readbyte(0x000AB4)
	address_161 = memory.readbyte(0x000AB5)
	address_162 = memory.readbyte(0x000AB6)
	address_163 = memory.readbyte(0x000AB7)
	address_164 = memory.readbyte(0x000AB8)
	address_165 = memory.readbyte(0x000AB9)
	address_166 = memory.readbyte(0x000ABA)
	address_167 = memory.readbyte(0x000ABB)
	address_168 = memory.readbyte(0x000ABC)
	address_169 = memory.readbyte(0x000ABD)
	address_170 = memory.readbyte(0x000ABE)
	address_171 = memory.readbyte(0x000ABF)
	address_172 = memory.readbyte(0x000AC0)
	address_173 = memory.readbyte(0x000AC1)
	address_174 = memory.readbyte(0x000AC2)
	address_175 = memory.readbyte(0x000AC3)
	address_176 = memory.readbyte(0x000AC4)
	address_177 = memory.readbyte(0x000AC5)
	address_178 = memory.readbyte(0x000AC6)
	address_179 = memory.readbyte(0x000AC7)
	address_180 = memory.readbyte(0x000AC8)
	address_181 = memory.readbyte(0x000AC9)
	address_182 = memory.readbyte(0x000ACA)
	address_183 = memory.readbyte(0x000ACB)
	address_184 = memory.readbyte(0x000ACC)
	address_185 = memory.readbyte(0x000ACD)
	address_186 = memory.readbyte(0x000ACE)
	address_187 = memory.readbyte(0x000ACF)
end


function save_backup_screenshot(address,preval,postval)
	local preval2 = string.format("%.2x", preval)
	local postval2 = string.format("%.2x", postval) 
    client.screenshot("../SNES/Screenshots/"..time_now.."_"..address.."_prevvalue_"..preval2.."_postvalue_"..postval2..".png")
    savestate.save("../SNES/Screenshots/PLAYER_TEMP.STATE")
    savestate.load("../SNES/Screenshots/BACKUP.STATE")
    savestate.save("../SNES/Screenshots/"..time_now.."_"..address.."_prevvalue_"..preval2.."_postvalue_"..postval2..".STATE")
    savestate.load("../SNES/Screenshots/PLAYER_TEMP.STATE")
    emu.frameadvance() -- buffer for screenshots to work
    emu.frameadvance()

end


function read_addresses_0()
	local func_address_0 = memory.readbyte(0x000A14)
	local func_address_1 = memory.readbyte(0x000A15)
	local func_address_2 = memory.readbyte(0x000A16)
	local func_address_3 = memory.readbyte(0x000A17)
	local func_address_4 = memory.readbyte(0x000A18)
	local func_address_5 = memory.readbyte(0x000A19)
	local func_address_6 = memory.readbyte(0x000A1A)
	local func_address_7 = memory.readbyte(0x000A1B)
	local func_address_8 = memory.readbyte(0x000A1C)
	local func_address_9 = memory.readbyte(0x000A1D)
	local func_address_10 = memory.readbyte(0x000A1E)
	local func_address_11 = memory.readbyte(0x000A1F)
	local func_address_12 = memory.readbyte(0x000A20)
	local func_address_13 = memory.readbyte(0x000A21)
	local func_address_14 = memory.readbyte(0x000A22)
	local func_address_15 = memory.readbyte(0x000A23)
	local func_address_16 = memory.readbyte(0x000A24)
	local func_address_17 = memory.readbyte(0x000A25)
	local func_address_18 = memory.readbyte(0x000A26)
	local func_address_19 = memory.readbyte(0x000A27)
	local func_address_20 = memory.readbyte(0x000A28)
	local func_address_21 = memory.readbyte(0x000A29)
	local func_address_22 = memory.readbyte(0x000A2A)
	local func_address_23 = memory.readbyte(0x000A2B)
	local func_address_24 = memory.readbyte(0x000A2C)
	local func_address_25 = memory.readbyte(0x000A2D)
	local func_address_26 = memory.readbyte(0x000A2E)
	local func_address_27 = memory.readbyte(0x000A2F)
	local func_address_28 = memory.readbyte(0x000A30)
	local func_address_29 = memory.readbyte(0x000A31)
	local func_address_30 = memory.readbyte(0x000A32)
	local func_address_31 = memory.readbyte(0x000A33)
	local func_address_32 = memory.readbyte(0x000A34)
	local func_address_33 = memory.readbyte(0x000A35)
	local func_address_34 = memory.readbyte(0x000A36)
	local func_address_35 = memory.readbyte(0x000A37)
	local func_address_36 = memory.readbyte(0x000A38)
	local func_address_37 = memory.readbyte(0x000A39)
	local func_address_38 = memory.readbyte(0x000A3A)
	local func_address_39 = memory.readbyte(0x000A3B)
	local func_address_40 = memory.readbyte(0x000A3C)
	local func_address_41 = memory.readbyte(0x000A3D)
	local func_address_42 = memory.readbyte(0x000A3E)
	local func_address_43 = memory.readbyte(0x000A3F)
	local func_address_44 = memory.readbyte(0x000A40)
	local func_address_45 = memory.readbyte(0x000A41)
	local func_address_46 = memory.readbyte(0x000A42)
	local func_address_47 = memory.readbyte(0x000A43)
	local func_address_48 = memory.readbyte(0x000A44)
	local func_address_49 = memory.readbyte(0x000A45)
	local func_address_50 = memory.readbyte(0x000A46)
	
    if address_0 ~= func_address_0 then
        gui.text(0,20,'Difference address 0 triggered')
        save_backup_screenshot("000A14",address_0,func_address_0)
    end
    if address_1 ~= func_address_1 then
        gui.text(0,20,'Difference address 1 triggered')
        save_backup_screenshot("000A15",address_1,func_address_1)
    end
    if address_2 ~= func_address_2 then
        gui.text(0,20,'Difference address 2 triggered')
        save_backup_screenshot("000A16",address_2,func_address_2)
    end
    if address_3 ~= func_address_3 then
        gui.text(0,20,'Difference address 3 triggered')
        save_backup_screenshot("000A17",address_3,func_address_3)
    end
    if address_4 ~= func_address_4 then
        gui.text(0,20,'Difference address 4 triggered')
        save_backup_screenshot("000A18",address_4,func_address_4)
    end
    if address_5 ~= func_address_5 then
        gui.text(0,20,'Difference address 5 triggered')
        save_backup_screenshot("000A19",address_5,func_address_5)
    end
    if address_6 ~= func_address_6 then
        gui.text(0,20,'Difference address 6 triggered')
        save_backup_screenshot("000A1A",address_6,func_address_6)
    end
    if address_7 ~= func_address_7 then
        gui.text(0,20,'Difference address 7 triggered')
        save_backup_screenshot("000A1B",address_7,func_address_7)
    end
    if address_8 ~= func_address_8 then
        gui.text(0,20,'Difference address 8 triggered')
        save_backup_screenshot("000A1C",address_8,func_address_8)
    end
    if address_9 ~= func_address_9 then
        gui.text(0,20,'Difference address 9 triggered')
        save_backup_screenshot("000A1D",address_9,func_address_9)
    end
    if address_10 ~= func_address_10 then
        gui.text(0,20,'Difference address 10 triggered')
        save_backup_screenshot("000A1E",address_10,func_address_10)
    end
    if address_11 ~= func_address_11 then
        gui.text(0,20,'Difference address 11 triggered')
        save_backup_screenshot("000A1F",address_11,func_address_11)
    end
    if address_12 ~= func_address_12 then
        gui.text(0,20,'Difference address 12 triggered')
        save_backup_screenshot("000A20",address_12,func_address_12)
    end
    if address_13 ~= func_address_13 then
        gui.text(0,20,'Difference address 13 triggered')
        save_backup_screenshot("000A21",address_13,func_address_13)
    end
    if address_14 ~= func_address_14 then
        gui.text(0,20,'Difference address 14 triggered')
        save_backup_screenshot("000A22",address_14,func_address_14)
    end
    if address_15 ~= func_address_15 then
        gui.text(0,20,'Difference address 15 triggered')
        save_backup_screenshot("000A23",address_15,func_address_15)
    end
    if address_16 ~= func_address_16 then
        gui.text(0,20,'Difference address 16 triggered')
        save_backup_screenshot("000A24",address_16,func_address_16)
    end
    if address_17 ~= func_address_17 then
        gui.text(0,20,'Difference address 17 triggered')
        save_backup_screenshot("000A25",address_17,func_address_17)
    end
    if address_18 ~= func_address_18 then
        gui.text(0,20,'Difference address 18 triggered')
        save_backup_screenshot("000A26",address_18,func_address_18)
    end
    if address_19 ~= func_address_19 then
        gui.text(0,20,'Difference address 19 triggered')
        save_backup_screenshot("000A27",address_19,func_address_19)
    end
    if address_20 ~= func_address_20 then
        gui.text(0,20,'Difference address 20 triggered')
        save_backup_screenshot("000A28",address_20,func_address_20)
    end
    if address_21 ~= func_address_21 then
        gui.text(0,20,'Difference address 21 triggered')
        save_backup_screenshot("000A29",address_21,func_address_21)
    end
    if address_22 ~= func_address_22 then
        gui.text(0,20,'Difference address 22 triggered')
        save_backup_screenshot("000A2A",address_22,func_address_22)
    end
    if address_23 ~= func_address_23 then
        gui.text(0,20,'Difference address 23 triggered')
        save_backup_screenshot("000A2B",address_23,func_address_23)
    end
    if address_24 ~= func_address_24 then
        gui.text(0,20,'Difference address 24 triggered')
        save_backup_screenshot("000A2C",address_24,func_address_24)
    end
    if address_25 ~= func_address_25 then
        gui.text(0,20,'Difference address 25 triggered')
        save_backup_screenshot("000A2D",address_25,func_address_25)
    end
    if address_26 ~= func_address_26 then
        gui.text(0,20,'Difference address 26 triggered')
        save_backup_screenshot("000A2E",address_26,func_address_26)
    end
    if address_27 ~= func_address_27 then
        gui.text(0,20,'Difference address 27 triggered')
        save_backup_screenshot("000A2F",address_27,func_address_27)
    end
    if address_28 ~= func_address_28 then
        gui.text(0,20,'Difference address 28 triggered')
        save_backup_screenshot("000A30",address_28,func_address_28)
    end
    if address_29 ~= func_address_29 then
        gui.text(0,20,'Difference address 29 triggered')
        save_backup_screenshot("000A31",address_29,func_address_29)
    end
    if address_30 ~= func_address_30 then
        gui.text(0,20,'Difference address 30 triggered')
        save_backup_screenshot("000A32",address_30,func_address_30)
    end
    if address_31 ~= func_address_31 then
        gui.text(0,20,'Difference address 31 triggered')
        save_backup_screenshot("000A33",address_31,func_address_31)
    end
    if address_32 ~= func_address_32 then
        gui.text(0,20,'Difference address 32 triggered')
        save_backup_screenshot("000A34",address_32,func_address_32)
    end
    if address_33 ~= func_address_33 then
        gui.text(0,20,'Difference address 33 triggered')
        save_backup_screenshot("000A35",address_33,func_address_33)
    end
    if address_34 ~= func_address_34 then
        gui.text(0,20,'Difference address 34 triggered')
        save_backup_screenshot("000A36",address_34,func_address_34)
    end
    if address_35 ~= func_address_35 then
        gui.text(0,20,'Difference address 35 triggered')
        save_backup_screenshot("000A37",address_35,func_address_35)
    end
    if address_36 ~= func_address_36 then
        gui.text(0,20,'Difference address 36 triggered')
        save_backup_screenshot("000A38",address_36,func_address_36)
    end
    if address_37 ~= func_address_37 then
        gui.text(0,20,'Difference address 37 triggered')
        save_backup_screenshot("000A39",address_37,func_address_37)
    end
    if address_38 ~= func_address_38 then
        gui.text(0,20,'Difference address 38 triggered')
        save_backup_screenshot("000A3A",address_38,func_address_38)
    end
    if address_39 ~= func_address_39 then
        gui.text(0,20,'Difference address 39 triggered')
        save_backup_screenshot("000A3B",address_39,func_address_39)
    end
    if address_40 ~= func_address_40 then
        gui.text(0,20,'Difference address 40 triggered')
        save_backup_screenshot("000A3C",address_40,func_address_40)
    end
    if address_41 ~= func_address_41 then
        gui.text(0,20,'Difference address 41 triggered')
        save_backup_screenshot("000A3D",address_41,func_address_41)
    end
    if address_42 ~= func_address_42 then
        gui.text(0,20,'Difference address 42 triggered')
        save_backup_screenshot("000A3E",address_42,func_address_42)
    end
    if address_43 ~= func_address_43 then
        gui.text(0,20,'Difference address 43 triggered')
        save_backup_screenshot("000A3F",address_43,func_address_43)
    end
    if address_44 ~= func_address_44 then
        gui.text(0,20,'Difference address 44 triggered')
        save_backup_screenshot("000A40",address_44,func_address_44)
    end
    if address_45 ~= func_address_45 then
        gui.text(0,20,'Difference address 45 triggered')
        save_backup_screenshot("000A41",address_45,func_address_45)
    end
    if address_46 ~= func_address_46 then
        gui.text(0,20,'Difference address 46 triggered')
        save_backup_screenshot("000A42",address_46,func_address_46)
    end
    if address_47 ~= func_address_47 then
        gui.text(0,20,'Difference address 47 triggered')
        save_backup_screenshot("000A43",address_47,func_address_47)
    end
    if address_48 ~= func_address_48 then
        gui.text(0,20,'Difference address 48 triggered')
        save_backup_screenshot("000A44",address_48,func_address_48)
    end
    if address_49 ~= func_address_49 then
        gui.text(0,20,'Difference address 49 triggered')
        save_backup_screenshot("000A45",address_49,func_address_49)
    end
    if address_50 ~= func_address_50 then
        gui.text(0,20,'Difference address 50 triggered')
        save_backup_screenshot("000A46",address_50,func_address_50)
    end
update_addresses_0()
end
	
function read_addresses_1()
	local func_address_51 = memory.readbyte(0x000A47)
	local func_address_52 = memory.readbyte(0x000A48)
	local func_address_53 = memory.readbyte(0x000A49)
	local func_address_54 = memory.readbyte(0x000A4A)
	local func_address_55 = memory.readbyte(0x000A4B)
	local func_address_56 = memory.readbyte(0x000A4C)
	local func_address_57 = memory.readbyte(0x000A4D)
	local func_address_58 = memory.readbyte(0x000A4E)
	local func_address_59 = memory.readbyte(0x000A4F)
	local func_address_60 = memory.readbyte(0x000A50)
	local func_address_61 = memory.readbyte(0x000A51)
	local func_address_62 = memory.readbyte(0x000A52)
	local func_address_63 = memory.readbyte(0x000A53)
	local func_address_64 = memory.readbyte(0x000A54)
	local func_address_65 = memory.readbyte(0x000A55)
	local func_address_66 = memory.readbyte(0x000A56)
	local func_address_67 = memory.readbyte(0x000A57)
	local func_address_68 = memory.readbyte(0x000A58)
	local func_address_69 = memory.readbyte(0x000A59)
	local func_address_70 = memory.readbyte(0x000A5A)
	local func_address_71 = memory.readbyte(0x000A5B)
	local func_address_72 = memory.readbyte(0x000A5C)
	local func_address_73 = memory.readbyte(0x000A5D)
	local func_address_74 = memory.readbyte(0x000A5E)
	local func_address_75 = memory.readbyte(0x000A5F)
	local func_address_76 = memory.readbyte(0x000A60)
	local func_address_77 = memory.readbyte(0x000A61)
	local func_address_78 = memory.readbyte(0x000A62)
	local func_address_79 = memory.readbyte(0x000A63)
	local func_address_80 = memory.readbyte(0x000A64)
	local func_address_81 = memory.readbyte(0x000A65)
	local func_address_82 = memory.readbyte(0x000A66)
	local func_address_83 = memory.readbyte(0x000A67)
	local func_address_84 = memory.readbyte(0x000A68)
	local func_address_85 = memory.readbyte(0x000A69)
	local func_address_86 = memory.readbyte(0x000A6A)
	local func_address_87 = memory.readbyte(0x000A6B)
	local func_address_88 = memory.readbyte(0x000A6C)
	local func_address_89 = memory.readbyte(0x000A6D)
	local func_address_90 = memory.readbyte(0x000A6E)
	local func_address_91 = memory.readbyte(0x000A6F)
	local func_address_92 = memory.readbyte(0x000A70)
	local func_address_93 = memory.readbyte(0x000A71)
	local func_address_94 = memory.readbyte(0x000A72)
	local func_address_95 = memory.readbyte(0x000A73)
	local func_address_96 = memory.readbyte(0x000A74)
	local func_address_97 = memory.readbyte(0x000A75)
	local func_address_98 = memory.readbyte(0x000A76)
	local func_address_99 = memory.readbyte(0x000A77)
	local func_address_100 = memory.readbyte(0x000A78)


    if address_51 ~= func_address_51 then
        gui.text(0,20,'Difference address 51 triggered')
        save_backup_screenshot("000A47",address_51,func_address_51)
    end
    if address_52 ~= func_address_52 then
        gui.text(0,20,'Difference address 52 triggered')
        save_backup_screenshot("000A48",address_52,func_address_52)
    end
    if address_53 ~= func_address_53 then
        gui.text(0,20,'Difference address 53 triggered')
        save_backup_screenshot("000A49",address_53,func_address_53)
    end
    if address_54 ~= func_address_54 then
        gui.text(0,20,'Difference address 54 triggered')
        save_backup_screenshot("000A4A",address_54,func_address_54)
    end
    if address_55 ~= func_address_55 then
        gui.text(0,20,'Difference address 55 triggered')
        save_backup_screenshot("000A4B",address_55,func_address_55)
    end
    if address_56 ~= func_address_56 then
        gui.text(0,20,'Difference address 56 triggered')
        save_backup_screenshot("000A4C",address_56,func_address_56)
    end
    if address_57 ~= func_address_57 then
        gui.text(0,20,'Difference address 57 triggered')
        save_backup_screenshot("000A4D",address_57,func_address_57)
    end
    if address_58 ~= func_address_58 then
        gui.text(0,20,'Difference address 58 triggered')
        save_backup_screenshot("000A4E",address_58,func_address_58)
    end
    if address_59 ~= func_address_59 then
        gui.text(0,20,'Difference address 59 triggered')
        save_backup_screenshot("000A4F",address_59,func_address_59)
    end
    if address_60 ~= func_address_60 then
        gui.text(0,20,'Difference address 60 triggered')
        save_backup_screenshot("000A50",address_60,func_address_60)
    end
    if address_61 ~= func_address_61 then
        gui.text(0,20,'Difference address 61 triggered')
        save_backup_screenshot("000A51",address_61,func_address_61)
    end
    if address_62 ~= func_address_62 then
        gui.text(0,20,'Difference address 62 triggered')
        save_backup_screenshot("000A52",address_62,func_address_62)
    end
    if address_63 ~= func_address_63 then
        gui.text(0,20,'Difference address 63 triggered')
        save_backup_screenshot("000A53",address_63,func_address_63)
    end
    if address_64 ~= func_address_64 then
        gui.text(0,20,'Difference address 64 triggered')
        save_backup_screenshot("000A54",address_64,func_address_64)
    end
    if address_65 ~= func_address_65 then
        gui.text(0,20,'Difference address 65 triggered')
        save_backup_screenshot("000A55",address_65,func_address_65)
    end
    if address_66 ~= func_address_66 then
        gui.text(0,20,'Difference address 66 triggered')
        save_backup_screenshot("000A56",address_66,func_address_66)
    end
    if address_67 ~= func_address_67 then
        gui.text(0,20,'Difference address 67 triggered')
        save_backup_screenshot("000A57",address_67,func_address_67)
    end
    if address_68 ~= func_address_68 then
        gui.text(0,20,'Difference address 68 triggered')
        save_backup_screenshot("000A58",address_68,func_address_68)
    end
    if address_69 ~= func_address_69 then
        gui.text(0,20,'Difference address 69 triggered')
        save_backup_screenshot("000A59",address_69,func_address_69)
    end
    if address_70 ~= func_address_70 then
        gui.text(0,20,'Difference address 70 triggered')
        save_backup_screenshot("000A5A",address_70,func_address_70)
    end
    if address_71 ~= func_address_71 then
        gui.text(0,20,'Difference address 71 triggered')
        save_backup_screenshot("000A5B",address_71,func_address_71)
    end
    if address_72 ~= func_address_72 then
        gui.text(0,20,'Difference address 72 triggered')
        save_backup_screenshot("000A5C",address_72,func_address_72)
    end
    if address_73 ~= func_address_73 then
        gui.text(0,20,'Difference address 73 triggered')
        save_backup_screenshot("000A5D",address_73,func_address_73)
    end
    if address_74 ~= func_address_74 then
        gui.text(0,20,'Difference address 74 triggered')
        save_backup_screenshot("000A5E",address_74,func_address_74)
    end
    if address_75 ~= func_address_75 then
        gui.text(0,20,'Difference address 75 triggered')
        save_backup_screenshot("000A5F",address_75,func_address_75)
    end
    if address_76 ~= func_address_76 then
        gui.text(0,20,'Difference address 76 triggered')
        save_backup_screenshot("000A60",address_76,func_address_76)
    end
    if address_77 ~= func_address_77 then
        gui.text(0,20,'Difference address 77 triggered')
        save_backup_screenshot("000A61",address_77,func_address_77)
    end
    if address_78 ~= func_address_78 then
        gui.text(0,20,'Difference address 78 triggered')
        save_backup_screenshot("000A62",address_78,func_address_78)
    end
    if address_79 ~= func_address_79 then
        gui.text(0,20,'Difference address 79 triggered')
        save_backup_screenshot("000A63",address_79,func_address_79)
    end
    if address_80 ~= func_address_80 then
        gui.text(0,20,'Difference address 80 triggered')
        save_backup_screenshot("000A64",address_80,func_address_80)
    end
    if address_81 ~= func_address_81 then
        gui.text(0,20,'Difference address 81 triggered')
        save_backup_screenshot("000A65",address_81,func_address_81)
    end
    if address_82 ~= func_address_82 then
        gui.text(0,20,'Difference address 82 triggered')
        save_backup_screenshot("000A66",address_82,func_address_82)
    end
    if address_83 ~= func_address_83 then
        gui.text(0,20,'Difference address 83 triggered')
        save_backup_screenshot("000A67",address_83,func_address_83)
    end
    if address_84 ~= func_address_84 then
        gui.text(0,20,'Difference address 84 triggered')
        save_backup_screenshot("000A68",address_84,func_address_84)
    end
    if address_85 ~= func_address_85 then
        gui.text(0,20,'Difference address 85 triggered')
        save_backup_screenshot("000A69",address_85,func_address_85)
    end
    if address_86 ~= func_address_86 then
        gui.text(0,20,'Difference address 86 triggered')
        save_backup_screenshot("000A6A",address_86,func_address_86)
    end
    if address_87 ~= func_address_87 then
        gui.text(0,20,'Difference address 87 triggered')
        save_backup_screenshot("000A6B",address_87,func_address_87)
    end
    if address_88 ~= func_address_88 then
        gui.text(0,20,'Difference address 88 triggered')
        save_backup_screenshot("000A6C",address_88,func_address_88)
    end
    if address_89 ~= func_address_89 then
        gui.text(0,20,'Difference address 89 triggered')
        save_backup_screenshot("000A6D",address_89,func_address_89)
    end
    if address_90 ~= func_address_90 then
        gui.text(0,20,'Difference address 90 triggered')
        save_backup_screenshot("000A6E",address_90,func_address_90)
    end
    if address_91 ~= func_address_91 then
        gui.text(0,20,'Difference address 91 triggered')
        save_backup_screenshot("000A6F",address_91,func_address_91)
    end
    if address_92 ~= func_address_92 then
        gui.text(0,20,'Difference address 92 triggered')
        save_backup_screenshot("000A70",address_92,func_address_92)
    end
    if address_93 ~= func_address_93 then
        gui.text(0,20,'Difference address 93 triggered')
        save_backup_screenshot("000A71",address_93,func_address_93)
    end
    if address_94 ~= func_address_94 then
        gui.text(0,20,'Difference address 94 triggered')
        save_backup_screenshot("000A72",address_94,func_address_94)
    end
    if address_95 ~= func_address_95 then
        gui.text(0,20,'Difference address 95 triggered')
        save_backup_screenshot("000A73",address_95,func_address_95)
    end
    if address_96 ~= func_address_96 then
        gui.text(0,20,'Difference address 96 triggered')
        save_backup_screenshot("000A74",address_96,func_address_96)
    end
    if address_97 ~= func_address_97 then
        gui.text(0,20,'Difference address 97 triggered')
        save_backup_screenshot("000A75",address_97,func_address_97)
    end
    if address_98 ~= func_address_98 then
        gui.text(0,20,'Difference address 98 triggered')
        save_backup_screenshot("000A76",address_98,func_address_98)
    end
    if address_99 ~= func_address_99 then
        gui.text(0,20,'Difference address 99 triggered')
        save_backup_screenshot("000A77",address_99,func_address_99)
    end
    if address_100 ~= func_address_100 then
        gui.text(0,20,'Difference address 100 triggered')
        save_backup_screenshot("000A78",address_100,func_address_100)
    end
	update_addresses_1()
end
function read_addresses_2()
	local func_address_101 = memory.readbyte(0x000A79)
	local func_address_102 = memory.readbyte(0x000A7A)
	local func_address_103 = memory.readbyte(0x000A7B)
	local func_address_104 = memory.readbyte(0x000A7C)
	local func_address_105 = memory.readbyte(0x000A7D)
	local func_address_106 = memory.readbyte(0x000A7E)
	local func_address_107 = memory.readbyte(0x000A7F)
	local func_address_108 = memory.readbyte(0x000A80)
	local func_address_109 = memory.readbyte(0x000A81)
	local func_address_110 = memory.readbyte(0x000A82)
	local func_address_111 = memory.readbyte(0x000A83)
	local func_address_112 = memory.readbyte(0x000A84)
	local func_address_113 = memory.readbyte(0x000A85)
	local func_address_114 = memory.readbyte(0x000A86)
	local func_address_115 = memory.readbyte(0x000A87)
	local func_address_116 = memory.readbyte(0x000A88)
	local func_address_117 = memory.readbyte(0x000A89)
	local func_address_118 = memory.readbyte(0x000A8A)
	local func_address_119 = memory.readbyte(0x000A8B)
	local func_address_120 = memory.readbyte(0x000A8C)
	local func_address_121 = memory.readbyte(0x000A8D)
	local func_address_122 = memory.readbyte(0x000A8E)
	local func_address_123 = memory.readbyte(0x000A8F)
	local func_address_124 = memory.readbyte(0x000A90)
	local func_address_125 = memory.readbyte(0x000A91)
	local func_address_126 = memory.readbyte(0x000A92)
	local func_address_127 = memory.readbyte(0x000A93)
	local func_address_128 = memory.readbyte(0x000A94)
	local func_address_129 = memory.readbyte(0x000A95)
	local func_address_130 = memory.readbyte(0x000A96)
	local func_address_131 = memory.readbyte(0x000A97)
	local func_address_132 = memory.readbyte(0x000A98)
	local func_address_133 = memory.readbyte(0x000A99)
	local func_address_134 = memory.readbyte(0x000A9A)
	local func_address_135 = memory.readbyte(0x000A9B)
	local func_address_136 = memory.readbyte(0x000A9C)
	local func_address_137 = memory.readbyte(0x000A9D)
	local func_address_138 = memory.readbyte(0x000A9E)
	local func_address_139 = memory.readbyte(0x000A9F)
	local func_address_140 = memory.readbyte(0x000AA0)
	local func_address_141 = memory.readbyte(0x000AA1)
	local func_address_142 = memory.readbyte(0x000AA2)
	local func_address_143 = memory.readbyte(0x000AA3)
	local func_address_144 = memory.readbyte(0x000AA4)
	local func_address_145 = memory.readbyte(0x000AA5)
	local func_address_146 = memory.readbyte(0x000AA6)
	local func_address_147 = memory.readbyte(0x000AA7)
	local func_address_148 = memory.readbyte(0x000AA8)
	local func_address_149 = memory.readbyte(0x000AA9)
	local func_address_150 = memory.readbyte(0x000AAA)
	
    if address_101 ~= func_address_101 then
        gui.text(0,20,'Difference address 101 triggered')
        save_backup_screenshot("000A79",address_101,func_address_101)
    end
    if address_102 ~= func_address_102 then
        gui.text(0,20,'Difference address 102 triggered')
        save_backup_screenshot("000A7A",address_102,func_address_102)
    end
    if address_103 ~= func_address_103 then
        gui.text(0,20,'Difference address 103 triggered')
        save_backup_screenshot("000A7B",address_103,func_address_103)
    end
    if address_104 ~= func_address_104 then
        gui.text(0,20,'Difference address 104 triggered')
        save_backup_screenshot("000A7C",address_104,func_address_104)
    end
    if address_105 ~= func_address_105 then
        gui.text(0,20,'Difference address 105 triggered')
        save_backup_screenshot("000A7D",address_105,func_address_105)
    end
    if address_106 ~= func_address_106 then
        gui.text(0,20,'Difference address 106 triggered')
        save_backup_screenshot("000A7E",address_106,func_address_106)
    end
    if address_107 ~= func_address_107 then
        gui.text(0,20,'Difference address 107 triggered')
        save_backup_screenshot("000A7F",address_107,func_address_107)
    end
    if address_108 ~= func_address_108 then
        gui.text(0,20,'Difference address 108 triggered')
        save_backup_screenshot("000A80",address_108,func_address_108)
    end
    if address_109 ~= func_address_109 then
        gui.text(0,20,'Difference address 109 triggered')
        save_backup_screenshot("000A81",address_109,func_address_109)
    end
    if address_110 ~= func_address_110 then
        gui.text(0,20,'Difference address 110 triggered')
        save_backup_screenshot("000A82",address_110,func_address_110)
    end
    if address_111 ~= func_address_111 then
        gui.text(0,20,'Difference address 111 triggered')
        save_backup_screenshot("000A83",address_111,func_address_111)
    end
    if address_112 ~= func_address_112 then
        gui.text(0,20,'Difference address 112 triggered')
        save_backup_screenshot("000A84",address_112,func_address_112)
    end
    if address_113 ~= func_address_113 then
        gui.text(0,20,'Difference address 113 triggered')
        save_backup_screenshot("000A85",address_113,func_address_113)
    end
    if address_114 ~= func_address_114 then
        gui.text(0,20,'Difference address 114 triggered')
        save_backup_screenshot("000A86",address_114,func_address_114)
    end
    if address_115 ~= func_address_115 then
        gui.text(0,20,'Difference address 115 triggered')
        save_backup_screenshot("000A87",address_115,func_address_115)
    end
    if address_116 ~= func_address_116 then
        gui.text(0,20,'Difference address 116 triggered')
        save_backup_screenshot("000A88",address_116,func_address_116)
    end
    if address_117 ~= func_address_117 then
        gui.text(0,20,'Difference address 117 triggered')
        save_backup_screenshot("000A89",address_117,func_address_117)
    end
    if address_118 ~= func_address_118 then
        gui.text(0,20,'Difference address 118 triggered')
        save_backup_screenshot("000A8A",address_118,func_address_118)
    end
    if address_119 ~= func_address_119 then
        gui.text(0,20,'Difference address 119 triggered')
        save_backup_screenshot("000A8B",address_119,func_address_119)
    end
    if address_120 ~= func_address_120 then
        gui.text(0,20,'Difference address 120 triggered')
        save_backup_screenshot("000A8C",address_120,func_address_120)
    end
    if address_121 ~= func_address_121 then
        gui.text(0,20,'Difference address 121 triggered')
        save_backup_screenshot("000A8D",address_121,func_address_121)
    end
    if address_122 ~= func_address_122 then
        gui.text(0,20,'Difference address 122 triggered')
        save_backup_screenshot("000A8E",address_122,func_address_122)
    end
    if address_123 ~= func_address_123 then
        gui.text(0,20,'Difference address 123 triggered')
        save_backup_screenshot("000A8F",address_123,func_address_123)
    end
    if address_124 ~= func_address_124 then
        gui.text(0,20,'Difference address 124 triggered')
        save_backup_screenshot("000A90",address_124,func_address_124)
    end
    if address_125 ~= func_address_125 then
        gui.text(0,20,'Difference address 125 triggered')
        save_backup_screenshot("000A91",address_125,func_address_125)
    end
    if address_126 ~= func_address_126 then
        gui.text(0,20,'Difference address 126 triggered')
        save_backup_screenshot("000A92",address_126,func_address_126)
    end
    if address_127 ~= func_address_127 then
        gui.text(0,20,'Difference address 127 triggered')
        save_backup_screenshot("000A93",address_127,func_address_127)
    end
    if address_128 ~= func_address_128 then
        gui.text(0,20,'Difference address 128 triggered')
        save_backup_screenshot("000A94",address_128,func_address_128)
    end
    if address_129 ~= func_address_129 then
        gui.text(0,20,'Difference address 129 triggered')
        save_backup_screenshot("000A95",address_129,func_address_129)
    end
    if address_130 ~= func_address_130 then
        gui.text(0,20,'Difference address 130 triggered')
        save_backup_screenshot("000A96",address_130,func_address_130)
    end
    if address_131 ~= func_address_131 then
        gui.text(0,20,'Difference address 131 triggered')
        save_backup_screenshot("000A97",address_131,func_address_131)
    end
    if address_132 ~= func_address_132 then
        gui.text(0,20,'Difference address 132 triggered')
        save_backup_screenshot("000A98",address_132,func_address_132)
    end
    if address_133 ~= func_address_133 then
        gui.text(0,20,'Difference address 133 triggered')
        save_backup_screenshot("000A99",address_133,func_address_133)
    end
    if address_134 ~= func_address_134 then
        gui.text(0,20,'Difference address 134 triggered')
        save_backup_screenshot("000A9A",address_134,func_address_134)
    end
    if address_135 ~= func_address_135 then
        gui.text(0,20,'Difference address 135 triggered')
        save_backup_screenshot("000A9B",address_135,func_address_135)
    end
    if address_136 ~= func_address_136 then
        gui.text(0,20,'Difference address 136 triggered')
        save_backup_screenshot("000A9C",address_136,func_address_136)
    end
    if address_137 ~= func_address_137 then
        gui.text(0,20,'Difference address 137 triggered')
        save_backup_screenshot("000A9D",address_137,func_address_137)
    end
    if address_138 ~= func_address_138 then
        gui.text(0,20,'Difference address 138 triggered')
        save_backup_screenshot("000A9E",address_138,func_address_138)
    end
    if address_139 ~= func_address_139 then
        gui.text(0,20,'Difference address 139 triggered')
        save_backup_screenshot("000A9F",address_139,func_address_139)
    end
    if address_140 ~= func_address_140 then
        gui.text(0,20,'Difference address 140 triggered')
        save_backup_screenshot("000AA0",address_140,func_address_140)
    end
    if address_141 ~= func_address_141 then
        gui.text(0,20,'Difference address 141 triggered')
        save_backup_screenshot("000AA1",address_141,func_address_141)
    end
    if address_142 ~= func_address_142 then
        gui.text(0,20,'Difference address 142 triggered')
        save_backup_screenshot("000AA2",address_142,func_address_142)
    end
    if address_143 ~= func_address_143 then
        gui.text(0,20,'Difference address 143 triggered')
        save_backup_screenshot("000AA3",address_143,func_address_143)
    end
    if address_144 ~= func_address_144 then
        gui.text(0,20,'Difference address 144 triggered')
        save_backup_screenshot("000AA4",address_144,func_address_144)
    end
    if address_145 ~= func_address_145 then
        gui.text(0,20,'Difference address 145 triggered')
        save_backup_screenshot("000AA5",address_145,func_address_145)
    end
    if address_146 ~= func_address_146 then
        gui.text(0,20,'Difference address 146 triggered')
        save_backup_screenshot("000AA6",address_146,func_address_146)
    end
    if address_147 ~= func_address_147 then
        gui.text(0,20,'Difference address 147 triggered')
        save_backup_screenshot("000AA7",address_147,func_address_147)
    end
    if address_148 ~= func_address_148 then
        gui.text(0,20,'Difference address 148 triggered')
        save_backup_screenshot("000AA8",address_148,func_address_148)
    end
    if address_149 ~= func_address_149 then
        gui.text(0,20,'Difference address 149 triggered')
        save_backup_screenshot("000AA9",address_149,func_address_149)
    end
    if address_150 ~= func_address_150 then
        gui.text(0,20,'Difference address 150 triggered')
        save_backup_screenshot("000AAA",address_150,func_address_150)
    end
	update_addresses_2()
end

function read_addresses_3()
	local func_address_151 = memory.readbyte(0x000AAB)
	local func_address_152 = memory.readbyte(0x000AAC)
	local func_address_153 = memory.readbyte(0x000AAD)
	local func_address_154 = memory.readbyte(0x000AAE)
	local func_address_155 = memory.readbyte(0x000AAF)
	local func_address_156 = memory.readbyte(0x000AB0)
	local func_address_157 = memory.readbyte(0x000AB1)
	local func_address_158 = memory.readbyte(0x000AB2)
	local func_address_159 = memory.readbyte(0x000AB3)
	local func_address_160 = memory.readbyte(0x000AB4)
	local func_address_161 = memory.readbyte(0x000AB5)
	local func_address_162 = memory.readbyte(0x000AB6)
	local func_address_163 = memory.readbyte(0x000AB7)
	local func_address_164 = memory.readbyte(0x000AB8)
	local func_address_165 = memory.readbyte(0x000AB9)
	local func_address_166 = memory.readbyte(0x000ABA)
	local func_address_167 = memory.readbyte(0x000ABB)
	local func_address_168 = memory.readbyte(0x000ABC)
	local func_address_169 = memory.readbyte(0x000ABD)
	local func_address_170 = memory.readbyte(0x000ABE)
	local func_address_171 = memory.readbyte(0x000ABF)
	local func_address_172 = memory.readbyte(0x000AC0)
	local func_address_173 = memory.readbyte(0x000AC1)
	local func_address_174 = memory.readbyte(0x000AC2)
	local func_address_175 = memory.readbyte(0x000AC3)
	local func_address_176 = memory.readbyte(0x000AC4)
	local func_address_177 = memory.readbyte(0x000AC5)
	local func_address_178 = memory.readbyte(0x000AC6)
	local func_address_179 = memory.readbyte(0x000AC7)
	local func_address_180 = memory.readbyte(0x000AC8)
	local func_address_181 = memory.readbyte(0x000AC9)
	local func_address_182 = memory.readbyte(0x000ACA)
	local func_address_183 = memory.readbyte(0x000ACB)
	local func_address_184 = memory.readbyte(0x000ACC)
	local func_address_185 = memory.readbyte(0x000ACD)
	local func_address_186 = memory.readbyte(0x000ACE)
	local func_address_187 = memory.readbyte(0x000ACF)

    if address_151 ~= func_address_151 then
        gui.text(0,20,'Difference address 151 triggered')
        save_backup_screenshot("000AAB",address_151,func_address_151)
    end
    if address_152 ~= func_address_152 then
        gui.text(0,20,'Difference address 152 triggered')
        save_backup_screenshot("000AAC",address_152,func_address_152)
    end
    if address_153 ~= func_address_153 then
        gui.text(0,20,'Difference address 153 triggered')
        save_backup_screenshot("000AAD",address_153,func_address_153)
    end
    if address_154 ~= func_address_154 then
        gui.text(0,20,'Difference address 154 triggered')
        save_backup_screenshot("000AAE",address_154,func_address_154)
    end
    if address_155 ~= func_address_155 then
        gui.text(0,20,'Difference address 155 triggered')
        save_backup_screenshot("000AAF",address_155,func_address_155)
    end
    if address_156 ~= func_address_156 then
        gui.text(0,20,'Difference address 156 triggered')
        save_backup_screenshot("000AB0",address_156,func_address_156)
    end
    if address_157 ~= func_address_157 then
        gui.text(0,20,'Difference address 157 triggered')
        save_backup_screenshot("000AB1",address_157,func_address_157)
    end
    if address_158 ~= func_address_158 then
        gui.text(0,20,'Difference address 158 triggered')
        save_backup_screenshot("000AB2",address_158,func_address_158)
    end
    if address_159 ~= func_address_159 then
        gui.text(0,20,'Difference address 159 triggered')
        save_backup_screenshot("000AB3",address_159,func_address_159)
    end
    if address_160 ~= func_address_160 then
        gui.text(0,20,'Difference address 160 triggered')
        save_backup_screenshot("000AB4",address_160,func_address_160)
    end
    if address_161 ~= func_address_161 then
        gui.text(0,20,'Difference address 161 triggered')
        save_backup_screenshot("000AB5",address_161,func_address_161)
    end
    if address_162 ~= func_address_162 then
        gui.text(0,20,'Difference address 162 triggered')
        save_backup_screenshot("000AB6",address_162,func_address_162)
    end
    if address_163 ~= func_address_163 then
        gui.text(0,20,'Difference address 163 triggered')
        save_backup_screenshot("000AB7",address_163,func_address_163)
    end
    if address_164 ~= func_address_164 then
        gui.text(0,20,'Difference address 164 triggered')
        save_backup_screenshot("000AB8",address_164,func_address_164)
    end
    if address_165 ~= func_address_165 then
        gui.text(0,20,'Difference address 165 triggered')
        save_backup_screenshot("000AB9",address_165,func_address_165)
    end
    if address_166 ~= func_address_166 then
        gui.text(0,20,'Difference address 166 triggered')
        save_backup_screenshot("000ABA",address_166,func_address_166)
    end
    if address_167 ~= func_address_167 then
        gui.text(0,20,'Difference address 167 triggered')
        save_backup_screenshot("000ABB",address_167,func_address_167)
    end
    if address_168 ~= func_address_168 then
        gui.text(0,20,'Difference address 168 triggered')
        save_backup_screenshot("000ABC",address_168,func_address_168)
    end
    if address_169 ~= func_address_169 then
        gui.text(0,20,'Difference address 169 triggered')
        save_backup_screenshot("000ABD",address_169,func_address_169)
    end
    if address_170 ~= func_address_170 then
        gui.text(0,20,'Difference address 170 triggered')
        save_backup_screenshot("000ABE",address_170,func_address_170)
    end
    if address_171 ~= func_address_171 then
        gui.text(0,20,'Difference address 171 triggered')
        save_backup_screenshot("000ABF",address_171,func_address_171)
    end
    if address_172 ~= func_address_172 then
        gui.text(0,20,'Difference address 172 triggered')
        save_backup_screenshot("000AC0",address_172,func_address_172)
    end
    if address_173 ~= func_address_173 then
        gui.text(0,20,'Difference address 173 triggered')
        save_backup_screenshot("000AC1",address_173,func_address_173)
    end
    if address_174 ~= func_address_174 then
        gui.text(0,20,'Difference address 174 triggered')
        save_backup_screenshot("000AC2",address_174,func_address_174)
    end
    if address_175 ~= func_address_175 then
        gui.text(0,20,'Difference address 175 triggered')
        save_backup_screenshot("000AC3",address_175,func_address_175)
    end
    if address_176 ~= func_address_176 then
        gui.text(0,20,'Difference address 176 triggered')
        save_backup_screenshot("000AC4",address_176,func_address_176)
    end
    if address_177 ~= func_address_177 then
        gui.text(0,20,'Difference address 177 triggered')
        save_backup_screenshot("000AC5",address_177,func_address_177)
    end
    if address_178 ~= func_address_178 then
        gui.text(0,20,'Difference address 178 triggered')
        save_backup_screenshot("000AC6",address_178,func_address_178)
    end
    if address_179 ~= func_address_179 then
        gui.text(0,20,'Difference address 179 triggered')
        save_backup_screenshot("000AC7",address_179,func_address_179)
    end
    if address_180 ~= func_address_180 then
        gui.text(0,20,'Difference address 180 triggered')
        save_backup_screenshot("000AC8",address_180,func_address_180)
    end
    if address_181 ~= func_address_181 then
        gui.text(0,20,'Difference address 181 triggered')
        save_backup_screenshot("000AC9",address_181,func_address_181)
    end
    if address_182 ~= func_address_182 then
        gui.text(0,20,'Difference address 182 triggered')
        save_backup_screenshot("000ACA",address_182,func_address_182)
    end
    if address_183 ~= func_address_183 then
        gui.text(0,20,'Difference address 183 triggered')
        save_backup_screenshot("000ACB",address_183,func_address_183)
    end
    if address_184 ~= func_address_184 then
        gui.text(0,20,'Difference address 184 triggered')
        save_backup_screenshot("000ACC",address_184,func_address_184)
    end
    if address_185 ~= func_address_185 then
        gui.text(0,20,'Difference address 185 triggered')
        save_backup_screenshot("000ACD",address_185,func_address_185)
    end
    if address_186 ~= func_address_186 then
        gui.text(0,20,'Difference address 186 triggered')
        save_backup_screenshot("000ACE",address_186,func_address_186)
    end
    if address_187 ~= func_address_187 then
        gui.text(0,20,'Difference address 187 triggered')
        save_backup_screenshot("000ACF",address_187,func_address_187)
    end
	-- update addresses based on what was just read 

	update_addresses_3()
	trigger = 0
end







savestate.save("../SNES/Screenshots/BACKUP.STATE")
while true do
	time_now = os.time()
	gui.text(0,0,"Active")
	-- gui.text(0,40,"Hash "..hash_code_last)
	save_backup()
	hash_region()
	trigger_text()
	emu.frameadvance()
end

-- memory.readbyterange(0x000a14,188) this is the range for 7E0A14 → 7E0ACF