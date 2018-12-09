# -*- coding: utf-8 -*-
import pandas as pd 
import random

df_chest_table = pd.read_excel('chest_table.xlsx', dtype=str)
df_chest_table['idx'] = df_chest_table['idx'].astype(int)
df_item_id = pd.read_excel('item_id.xlsx',index_col='item_id',dtype=str)
df_chest_id = pd.read_excel('chest_id.xlsx',index_col='chest_id',dtype=str)

item_id_dict = pd.read_excel('item_id.xlsx',index_col='item_id',dtype=str).to_dict()['item_name'] # id first
item_id_dict2 = dict((v,k) for k,v in item_id_dict.items()) # item first
chest_id_dict = pd.read_excel('chest_id.xlsx',index_col='chest_id',dtype=str).to_dict()['chest_name'] # id first
chest_id_dict2 = dict((v,k) for k,v in chest_id_dict.items()) # item first

class Chest(object):
    def __init__(self,index):
        self.idx = index
        self.generate_from_df(df_chest_table)
        self.address = hex(int(self.base_address,base=16)+int(self.offset,base=16)).replace("0x","").upper()
        self.chest_contents = [self.type, self.id, self.reward_type, self.reward]
        self.data = self.loc1 + self.loc2 + self.type + self.id
        self.original_reward = self.reward
        self.asar_output = f";{self.original_reward}→{self.reward}\norg ${self.address} \ndb ${self.loc1}, ${self.loc2}, ${self.type}, ${self.id} "
    def generate_from_df(self, df):
        s = df[df['idx']==self.idx].iloc[0]
        if s.empty:
            print("No match on index found for Chest class "+self.boss_name)
        else:
            for index in s.index:
                setattr(self,index,s.loc[index])
    def update_contents(self):
        '''
        Updates text string/output based on new contents 
        '''
        if self.type == '40':
            self.reward = item_id_dict[self.id]
        self.chest_contents = [self.type, self.id, self.reward_type, self.reward]
        self.data = self.loc1 + self.loc2 + self.type + self.id
        self.asar_output = f";{self.original_reward}→{self.reward}\norg ${self.address} \ndb ${self.loc1}, ${self.loc2}, ${self.type}, ${self.id} "
    def random_item(self):
        random_item = random.choice(list(item_id_dict2.items()))
        self.reward = random_item[0]
        self.type = '40'
        self.id = random_item[1]
        self.update_contents()
    def update_item(self,item_type,item):
        '''
        item_type: item, 
        '''
        print("Updating")
        if item_type == 'item':
            new_item_id = item_id_dict2[item]
            self.type = '40'
            self.id = new_item_id
        else:
            print("No item type match.")
        self.update_contents()                
        
    def update_asar_output(self):
        self.asar_output = f";{self.original_reward}→{self.reward}\norg ${self.address} \ndb ${self.loc1}, ${self.loc2}, ${self.type}, ${self.id} "
                
Chest_1 = Chest(1)
Chest_2 = Chest(2)
Chest_3 = Chest(3)
Chest_4 = Chest(4)
Chest_5 = Chest(5)
Chest_6 = Chest(6)
Chest_7 = Chest(7)
Chest_8 = Chest(8)
Chest_9 = Chest(9)
Chest_10 = Chest(10)
Chest_11 = Chest(11)
Chest_12 = Chest(12)
Chest_13 = Chest(13)
Chest_14 = Chest(14)
Chest_15 = Chest(15)
Chest_16 = Chest(16)
Chest_17 = Chest(17)
Chest_18 = Chest(18)
Chest_19 = Chest(19)
Chest_20 = Chest(20)
Chest_21 = Chest(21)
Chest_22 = Chest(22)
Chest_23 = Chest(23)
Chest_24 = Chest(24)
Chest_25 = Chest(25)
Chest_26 = Chest(26)
Chest_27 = Chest(27)
Chest_28 = Chest(28)
Chest_29 = Chest(29)
Chest_30 = Chest(30)
Chest_31 = Chest(31)
Chest_32 = Chest(32)
Chest_33 = Chest(33)
Chest_34 = Chest(34)
Chest_35 = Chest(35)
Chest_36 = Chest(36)
Chest_37 = Chest(37)
Chest_38 = Chest(38)
Chest_39 = Chest(39)
Chest_40 = Chest(40)
Chest_41 = Chest(41)
Chest_42 = Chest(42)
Chest_43 = Chest(43)
Chest_44 = Chest(44)
Chest_45 = Chest(45)
Chest_46 = Chest(46)
Chest_47 = Chest(47)
Chest_48 = Chest(48)
Chest_49 = Chest(49)
Chest_50 = Chest(50)
Chest_51 = Chest(51)
Chest_52 = Chest(52)
Chest_53 = Chest(53)
Chest_54 = Chest(54)
Chest_55 = Chest(55)
Chest_56 = Chest(56)
Chest_57 = Chest(57)
Chest_58 = Chest(58)
Chest_59 = Chest(59)
Chest_60 = Chest(60)
Chest_61 = Chest(61)
Chest_62 = Chest(62)
Chest_63 = Chest(63)
Chest_64 = Chest(64)
Chest_65 = Chest(65)
Chest_66 = Chest(66)
Chest_67 = Chest(67)
Chest_68 = Chest(68)
Chest_69 = Chest(69)
Chest_70 = Chest(70)
Chest_71 = Chest(71)
Chest_72 = Chest(72)
Chest_73 = Chest(73)
Chest_74 = Chest(74)
Chest_75 = Chest(75)
Chest_76 = Chest(76)
Chest_77 = Chest(77)
Chest_78 = Chest(78)
Chest_79 = Chest(79)
Chest_80 = Chest(80)
Chest_81 = Chest(81)
Chest_82 = Chest(82)
Chest_83 = Chest(83)
Chest_84 = Chest(84)
Chest_85 = Chest(85)
Chest_86 = Chest(86)
Chest_87 = Chest(87)
Chest_88 = Chest(88)
Chest_89 = Chest(89)
Chest_90 = Chest(90)
Chest_91 = Chest(91)
Chest_92 = Chest(92)
Chest_93 = Chest(93)
Chest_94 = Chest(94)
Chest_95 = Chest(95)
Chest_96 = Chest(96)
Chest_97 = Chest(97)
Chest_98 = Chest(98)
Chest_99 = Chest(99)
Chest_100 = Chest(100)
Chest_101 = Chest(101)
Chest_102 = Chest(102)
Chest_103 = Chest(103)
Chest_104 = Chest(104)
Chest_105 = Chest(105)
Chest_106 = Chest(106)
Chest_107 = Chest(107)
Chest_108 = Chest(108)
Chest_109 = Chest(109)
Chest_110 = Chest(110)
Chest_111 = Chest(111)
Chest_112 = Chest(112)
Chest_113 = Chest(113)
Chest_114 = Chest(114)
Chest_115 = Chest(115)
Chest_116 = Chest(116)
Chest_117 = Chest(117)
Chest_118 = Chest(118)
Chest_119 = Chest(119)
Chest_120 = Chest(120)
Chest_121 = Chest(121)
Chest_122 = Chest(122)
Chest_123 = Chest(123)
Chest_124 = Chest(124)
Chest_125 = Chest(125)
Chest_126 = Chest(126)
Chest_127 = Chest(127)
Chest_128 = Chest(128)
Chest_129 = Chest(129)
Chest_130 = Chest(130)
Chest_131 = Chest(131)
Chest_132 = Chest(132)
Chest_133 = Chest(133)
Chest_134 = Chest(134)
Chest_135 = Chest(135)
Chest_136 = Chest(136)
Chest_137 = Chest(137)
Chest_138 = Chest(138)
Chest_139 = Chest(139)
Chest_140 = Chest(140)
Chest_141 = Chest(141)
Chest_142 = Chest(142)
Chest_143 = Chest(143)
Chest_144 = Chest(144)
Chest_145 = Chest(145)
Chest_146 = Chest(146)
Chest_147 = Chest(147)
Chest_148 = Chest(148)
Chest_149 = Chest(149)
Chest_150 = Chest(150)
Chest_151 = Chest(151)
Chest_152 = Chest(152)
Chest_153 = Chest(153)
Chest_154 = Chest(154)
Chest_155 = Chest(155)
Chest_156 = Chest(156)
Chest_157 = Chest(157)
Chest_158 = Chest(158)
Chest_159 = Chest(159)
Chest_160 = Chest(160)
Chest_161 = Chest(161)
Chest_162 = Chest(162)
Chest_163 = Chest(163)
Chest_164 = Chest(164)
Chest_165 = Chest(165)
Chest_166 = Chest(166)
Chest_167 = Chest(167)
Chest_168 = Chest(168)
Chest_169 = Chest(169)
Chest_170 = Chest(170)
Chest_171 = Chest(171)
Chest_172 = Chest(172)
Chest_173 = Chest(173)
Chest_174 = Chest(174)
Chest_175 = Chest(175)
Chest_176 = Chest(176)
Chest_177 = Chest(177)
Chest_178 = Chest(178)
Chest_179 = Chest(179)
Chest_180 = Chest(180)
Chest_181 = Chest(181)
Chest_182 = Chest(182)
Chest_183 = Chest(183)
Chest_184 = Chest(184)
Chest_185 = Chest(185)
Chest_186 = Chest(186)
Chest_187 = Chest(187)
Chest_188 = Chest(188)
Chest_189 = Chest(189)
Chest_190 = Chest(190)
Chest_191 = Chest(191)
Chest_192 = Chest(192)
Chest_193 = Chest(193)
Chest_194 = Chest(194)
Chest_195 = Chest(195)
Chest_196 = Chest(196)
Chest_197 = Chest(197)
Chest_198 = Chest(198)
Chest_199 = Chest(199)
Chest_200 = Chest(200)
Chest_201 = Chest(201)
Chest_202 = Chest(202)
Chest_203 = Chest(203)
Chest_204 = Chest(204)
Chest_205 = Chest(205)
Chest_206 = Chest(206)
Chest_207 = Chest(207)
Chest_208 = Chest(208)
Chest_209 = Chest(209)
Chest_210 = Chest(210)
Chest_211 = Chest(211)
Chest_212 = Chest(212)
Chest_213 = Chest(213)
Chest_214 = Chest(214)
Chest_215 = Chest(215)
Chest_216 = Chest(216)
Chest_217 = Chest(217)
Chest_218 = Chest(218)
Chest_219 = Chest(219)
Chest_220 = Chest(220)
Chest_221 = Chest(221)
Chest_222 = Chest(222)
Chest_223 = Chest(223)
Chest_224 = Chest(224)
Chest_225 = Chest(225)
Chest_226 = Chest(226)
Chest_227 = Chest(227)
Chest_228 = Chest(228)
Chest_229 = Chest(229)
Chest_230 = Chest(230)
Chest_231 = Chest(231)
Chest_232 = Chest(232)
Chest_233 = Chest(233)
Chest_234 = Chest(234)
Chest_235 = Chest(235)
Chest_236 = Chest(236)
Chest_237 = Chest(237)
Chest_238 = Chest(238)
Chest_239 = Chest(239)
Chest_240 = Chest(240)
Chest_241 = Chest(241)
Chest_242 = Chest(242)
Chest_243 = Chest(243)
Chest_244 = Chest(244)
Chest_245 = Chest(245)
Chest_246 = Chest(246)
Chest_247 = Chest(247)
Chest_248 = Chest(248)
Chest_249 = Chest(249)
Chest_250 = Chest(250)
Chest_251 = Chest(251)
Chest_252 = Chest(252)

all_chests = [Chest_1,Chest_2,Chest_3,Chest_4,Chest_5,Chest_6,Chest_7,Chest_8,Chest_9,Chest_10,Chest_11,Chest_12,Chest_13,Chest_14,Chest_15,Chest_16,Chest_17,Chest_18,Chest_19,Chest_20,Chest_21,Chest_22,Chest_23,Chest_24,Chest_25,Chest_26,Chest_27,Chest_28,Chest_29,Chest_30,Chest_31,Chest_32,Chest_33,Chest_34,Chest_35,Chest_36,Chest_37,Chest_38,Chest_39,Chest_40,Chest_41,Chest_42,Chest_43,Chest_44,Chest_45,Chest_46,Chest_47,Chest_48,Chest_49,Chest_50,Chest_51,Chest_52,Chest_53,Chest_54,Chest_55,Chest_56,Chest_57,Chest_58,Chest_59,Chest_60,Chest_61,Chest_62,Chest_63,Chest_64,Chest_65,Chest_66,Chest_67,Chest_68,Chest_69,Chest_70,Chest_71,Chest_72,Chest_73,Chest_74,Chest_75,Chest_76,Chest_77,Chest_78,Chest_79,Chest_80,Chest_81,Chest_82,Chest_83,Chest_84,Chest_85,Chest_86,Chest_87,Chest_88,Chest_89,Chest_90,Chest_91,Chest_92,Chest_93,Chest_94,Chest_95,Chest_96,Chest_97,Chest_98,Chest_99,Chest_100,Chest_101,Chest_102,Chest_103,Chest_104,Chest_105,Chest_106,Chest_107,Chest_108,Chest_109,Chest_110,Chest_111,Chest_112,Chest_113,Chest_114,Chest_115,Chest_116,Chest_117,Chest_118,Chest_119,Chest_120,Chest_121,Chest_122,Chest_123,Chest_124,Chest_125,Chest_126,Chest_127,Chest_128,Chest_129,Chest_130,Chest_131,Chest_132,Chest_133,Chest_134,Chest_135,Chest_136,Chest_137,Chest_138,Chest_139,Chest_140,Chest_141,Chest_142,Chest_143,Chest_144,Chest_145,Chest_146,Chest_147,Chest_148,Chest_149,Chest_150,Chest_151,Chest_152,Chest_153,Chest_154,Chest_155,Chest_156,Chest_157,Chest_158,Chest_159,Chest_160,Chest_161,Chest_162,Chest_163,Chest_164,Chest_165,Chest_166,Chest_167,Chest_168,Chest_169,Chest_170,Chest_171,Chest_172,Chest_173,Chest_174,Chest_175,Chest_176,Chest_177,Chest_178,Chest_179,Chest_180,Chest_181,Chest_182,Chest_183,Chest_184,Chest_185,Chest_186,Chest_187,Chest_188,Chest_189,Chest_190,Chest_191,Chest_192,Chest_193,Chest_194,Chest_195,Chest_196,Chest_197,Chest_198,Chest_199,Chest_200,Chest_201,Chest_202,Chest_203,Chest_204,Chest_205,Chest_206,Chest_207,Chest_208,Chest_209,Chest_210,Chest_211,Chest_212,Chest_213,Chest_214,Chest_215,Chest_216,Chest_217,Chest_218,Chest_219,Chest_220,Chest_221,Chest_222,Chest_223,Chest_224,Chest_225,Chest_226,Chest_227,Chest_228,Chest_229,Chest_230,Chest_231,Chest_232,Chest_233,Chest_234,Chest_235,Chest_236,Chest_237,Chest_238,Chest_239,Chest_240,Chest_241,Chest_242,Chest_243,Chest_244,Chest_245,Chest_246,Chest_247,Chest_248,Chest_249,Chest_250,Chest_251,Chest_252]