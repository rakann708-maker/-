-- MoonSec V3 devirtualized Lua-like pseudocode
-- Variable names were destroyed by the obfuscator; registers are named R[index].
-- This artifact is for inspection and is intentionally not executed.

local function proto_root(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_361 (0, 1, 0) consumes=4
	do
		R[0] = true
		UP["MoonSec_StringsHiddenAttr"] = R[0]
		R[0] = UP["_aSUQiPqwiDJg"]
		if R[0] == "This file was protected with MoonSec V3" then
		else
			pc = 6
		end
		-- fallthrough -> 5
	end
	-- [5] OP_93 (0, 6, nil) consumes=1
	do
		pc = 6
		pc = 7
		-- fallthrough -> 6
	end
	-- [6] OP_93 (0, 7, nil) consumes=1
	do
		pc = 7
		pc = 8
		-- fallthrough -> 7
	end
	-- [7] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 8
	end
	-- [8] OP_344 (0, 0, 1) consumes=1
	do
		R[0] = {}
		-- fallthrough -> 9
	end
	-- [9] OP_309 (1, 0, 2) consumes=7
	do
		R[1] = {}
		R[1][1] = "Prefix"
		R[1][2] = "."
		R[0][1] = R[1]
		R[1] = UP["game"]
		R[2] = R[1]
		R[1] = R[1]["GetService"]
		R[3] = "ReplicatedStorage"
		-- fallthrough -> 16
	end
	-- [16] OP_107 (1, 3, 2) consumes=1
	do
		R[1] = R[1](UNPACKREG(R, 2, 3))
		-- fallthrough -> 17
	end
	-- [17] OP_148 (1, 1, "HDAdminHDClient") consumes=1
	do
		R[1] = R[1]["HDAdminHDClient"]
		-- fallthrough -> 18
	end
	-- [18] OP_148 (1, 1, "Signals") consumes=1
	do
		R[1] = R[1]["Signals"]
		-- fallthrough -> 19
	end
	-- [19] OP_304 (1, 1, "ChangeSetting") consumes=2
	do
		R[1] = R[1]["ChangeSetting"]
		R[2] = R[1]
		R[1] = R[1]["InvokeServer"]
		-- fallthrough -> 21
	end
	-- [21] OP_254 (3, "unpack", nil) consumes=10
	do
		R[3] = UP["unpack"]
		R[4] = R[0]
		R[1](UNPACKREG(R, 2, 2))
		R[1] = UP["Instance"]
		R[1] = R[1]["new"]
		R[2] = "ScreenGui"
		R[1] = R[1](R[2])
		R[2] = UP["game"]
		R[2] = R[2]["Players"]
		-- fallthrough -> 31
	end
	-- [31] OP_304 (2, 2, "LocalPlayer") consumes=2
	do
		R[2] = R[2]["LocalPlayer"]
		R[3] = R[2]
		R[2] = R[2]["WaitForChild"]
		-- fallthrough -> 33
	end
	-- [33] OP_205 (4, "PlayerGui", nil) consumes=7
	do
		R[4] = "PlayerGui"
		R[2] = R[2](UNPACKREG(R, 3, 4))
		R[1]["Parent"] = R[2]
		R[1]["ResetOnSpawn"] = false
		R[2] = UP["Instance"]
		R[2] = R[2]["new"]
		R[3] = "Frame"
		-- fallthrough -> 40
	end
	-- [40] OP_202 (2, 2, 2) consumes=1
	do
		R[2] = R[2](R[3])
		-- fallthrough -> 41
	end
	-- [41] OP_263 (3, "UDim2", nil) consumes=7
	do
		R[3] = UP["UDim2"]
		R[3] = R[3]["new"]
		R[4] = 0
		R[5] = 490
		R[6] = 0
		R[7] = 300
		R[3] = R[3](UNPACKREG(R, 4, 7))
		-- fallthrough -> 48
	end
	-- [48] OP_283 (2, "Size", 3) consumes=7
	do
		R[2]["Size"] = R[3]
		R[3] = UP["UDim2"]
		R[3] = R[3]["new"]
		R[4] = 0.5
		R[5] = -200
		R[6] = 0.5
		R[7] = -150
		-- fallthrough -> 55
	end
	-- [55] OP_128 (3, 7, 2) consumes=7
	do
		R[3] = R[3](UNPACKREG(R, 4, 7))
		R[2]["Position"] = R[3]
		R[3] = UP["Color3"]
		R[3] = R[3]["new"]
		R[4] = 0.2
		R[5] = 0.2
		R[6] = 0.2
		-- fallthrough -> 62
	end
	-- [62] OP_157 (3, 6, 2) consumes=7
	do
		R[3] = R[3](UNPACKREG(R, 4, 6))
		R[2]["BackgroundColor3"] = R[3]
		R[2]["Parent"] = R[1]
		R[3] = UP["Instance"]
		R[3] = R[3]["new"]
		R[4] = "UICorner"
		R[3] = R[3](R[4])
		-- fallthrough -> 69
	end
	-- [69] OP_184 (4, "UDim", nil) consumes=7
	do
		R[4] = UP["UDim"]
		R[4] = R[4]["new"]
		R[5] = 0.1
		R[6] = 0
		R[4] = R[4](UNPACKREG(R, 5, 6))
		R[3]["CornerRadius"] = R[4]
		R[3]["Parent"] = R[2]
		-- fallthrough -> 76
	end
	-- [76] OP_124 (4, "Instance", nil) consumes=7
	do
		R[4] = UP["Instance"]
		R[4] = R[4]["new"]
		R[5] = "Frame"
		R[4] = R[4](R[5])
		R[5] = UP["UDim2"]
		R[5] = R[5]["new"]
		R[6] = 1
		-- fallthrough -> 83
	end
	-- [83] OP_72 (7, 0, nil) consumes=7
	do
		R[7] = 0
		R[8] = 0
		R[9] = 30
		R[5] = R[5](UNPACKREG(R, 6, 9))
		R[4]["Size"] = R[5]
		R[5] = UP["UDim2"]
		R[5] = R[5]["new"]
		-- fallthrough -> 90
	end
	-- [90] OP_76 (6, 0, nil) consumes=7
	do
		R[6] = 0
		R[7] = 0
		R[8] = 0
		R[9] = 0
		R[5] = R[5](UNPACKREG(R, 6, 9))
		R[4]["Position"] = R[5]
		R[5] = UP["Color3"]
		-- fallthrough -> 97
	end
	-- [97] OP_148 (5, 5, "new") consumes=1
	do
		R[5] = R[5]["new"]
		-- fallthrough -> 98
	end
	-- [98] OP_16 (6, 0.1, nil) consumes=2
	do
		R[6] = 0.1
		R[7] = 0.1
		-- fallthrough -> 100
	end
	-- [100] OP_249 (8, 0.1, nil) consumes=1
	do
		R[8] = 0.1
		-- fallthrough -> 101
	end
	-- [101] OP_157 (5, 8, 2) consumes=7
	do
		R[5] = R[5](UNPACKREG(R, 6, 8))
		R[4]["BackgroundColor3"] = R[5]
		R[4]["Parent"] = R[2]
		R[5] = UP["Instance"]
		R[5] = R[5]["new"]
		R[6] = "TextLabel"
		R[5] = R[5](R[6])
		-- fallthrough -> 108
	end
	-- [108] OP_263 (6, "UDim2", nil) consumes=7
	do
		R[6] = UP["UDim2"]
		R[6] = R[6]["new"]
		R[7] = 0
		R[8] = 100
		R[9] = 0
		R[10] = 20
		R[6] = R[6](UNPACKREG(R, 7, 10))
		-- fallthrough -> 115
	end
	-- [115] OP_283 (5, "Size", 6) consumes=7
	do
		R[5]["Size"] = R[6]
		R[6] = UP["UDim2"]
		R[6] = R[6]["new"]
		R[7] = 0.5
		R[8] = -50
		R[9] = 0.5
		R[10] = -10
		-- fallthrough -> 122
	end
	-- [122] OP_107 (6, 10, 2) consumes=1
	do
		R[6] = R[6](UNPACKREG(R, 7, 10))
		-- fallthrough -> 123
	end
	-- [123] OP_30 (5, "Position", 6) consumes=1
	do
		R[5]["Position"] = R[6]
		-- fallthrough -> 124
	end
	-- [124] OP_85 (5, "Text", "1ST") consumes=1
	do
		R[5]["Text"] = "1ST"
		-- fallthrough -> 125
	end
	-- [125] OP_252 (6, "Color3", nil) consumes=7
	do
		R[6] = UP["Color3"]
		R[6] = R[6]["new"]
		R[7] = 1
		R[8] = 1
		R[9] = 1
		R[6] = R[6](UNPACKREG(R, 7, 9))
		R[5]["TextColor3"] = R[6]
		-- fallthrough -> 132
	end
	-- [132] OP_85 (5, "BackgroundTransparency", 1) consumes=1
	do
		R[5]["BackgroundTransparency"] = 1
		-- fallthrough -> 133
	end
	-- [133] OP_246 (6, "Enum", nil) consumes=1
	do
		R[6] = UP["Enum"]
		-- fallthrough -> 134
	end
	-- [134] OP_148 (6, 6, "Font") consumes=1
	do
		R[6] = R[6]["Font"]
		-- fallthrough -> 135
	end
	-- [135] OP_88 (6, 6, "SourceSansBold") consumes=7
	do
		R[6] = R[6]["SourceSansBold"]
		R[5]["Font"] = R[6]
		R[5]["TextSize"] = 18
		R[5]["Parent"] = R[4]
		R[6] = UP["Instance"]
		R[6] = R[6]["new"]
		R[7] = "TextButton"
		-- fallthrough -> 142
	end
	-- [142] OP_202 (6, 2, 2) consumes=1
	do
		R[6] = R[6](R[7])
		-- fallthrough -> 143
	end
	-- [143] OP_263 (7, "UDim2", nil) consumes=7
	do
		R[7] = UP["UDim2"]
		R[7] = R[7]["new"]
		R[8] = 0
		R[9] = 20
		R[10] = 0
		R[11] = 20
		R[7] = R[7](UNPACKREG(R, 8, 11))
		-- fallthrough -> 150
	end
	-- [150] OP_283 (6, "Size", 7) consumes=7
	do
		R[6]["Size"] = R[7]
		R[7] = UP["UDim2"]
		R[7] = R[7]["new"]
		R[8] = 1
		R[9] = -60
		R[10] = 0.5
		R[11] = -10
		-- fallthrough -> 157
	end
	-- [157] OP_107 (7, 11, 2) consumes=1
	do
		R[7] = R[7](UNPACKREG(R, 8, 11))
		-- fallthrough -> 158
	end
	-- [158] OP_30 (6, "Position", 7) consumes=1
	do
		R[6]["Position"] = R[7]
		-- fallthrough -> 159
	end
	-- [159] OP_85 (6, "Text", "-") consumes=1
	do
		R[6]["Text"] = "-"
		-- fallthrough -> 160
	end
	-- [160] OP_252 (7, "Color3", nil) consumes=7
	do
		R[7] = UP["Color3"]
		R[7] = R[7]["new"]
		R[8] = 0.4
		R[9] = 0.4
		R[10] = 0.4
		R[7] = R[7](UNPACKREG(R, 8, 10))
		R[6]["BackgroundColor3"] = R[7]
		-- fallthrough -> 167
	end
	-- [167] OP_252 (7, "Color3", nil) consumes=7
	do
		R[7] = UP["Color3"]
		R[7] = R[7]["new"]
		R[8] = 1
		R[9] = 1
		R[10] = 1
		R[7] = R[7](UNPACKREG(R, 8, 10))
		R[6]["TextColor3"] = R[7]
		-- fallthrough -> 174
	end
	-- [174] OP_246 (7, "Enum", nil) consumes=1
	do
		R[7] = UP["Enum"]
		-- fallthrough -> 175
	end
	-- [175] OP_148 (7, 7, "Font") consumes=1
	do
		R[7] = R[7]["Font"]
		-- fallthrough -> 176
	end
	-- [176] OP_88 (7, 7, "SourceSansBold") consumes=7
	do
		R[7] = R[7]["SourceSansBold"]
		R[6]["Font"] = R[7]
		R[6]["TextSize"] = 18
		R[6]["Parent"] = R[4]
		R[7] = UP["Instance"]
		R[7] = R[7]["new"]
		R[8] = "TextButton"
		-- fallthrough -> 183
	end
	-- [183] OP_202 (7, 2, 2) consumes=1
	do
		R[7] = R[7](R[8])
		-- fallthrough -> 184
	end
	-- [184] OP_263 (8, "UDim2", nil) consumes=7
	do
		R[8] = UP["UDim2"]
		R[8] = R[8]["new"]
		R[9] = 0
		R[10] = 20
		R[11] = 0
		R[12] = 20
		R[8] = R[8](UNPACKREG(R, 9, 12))
		-- fallthrough -> 191
	end
	-- [191] OP_283 (7, "Size", 8) consumes=7
	do
		R[7]["Size"] = R[8]
		R[8] = UP["UDim2"]
		R[8] = R[8]["new"]
		R[9] = 1
		R[10] = -30
		R[11] = 0.5
		R[12] = -10
		-- fallthrough -> 198
	end
	-- [198] OP_107 (8, 12, 2) consumes=1
	do
		R[8] = R[8](UNPACKREG(R, 9, 12))
		-- fallthrough -> 199
	end
	-- [199] OP_30 (7, "Position", 8) consumes=1
	do
		R[7]["Position"] = R[8]
		-- fallthrough -> 200
	end
	-- [200] OP_85 (7, "Text", "X") consumes=1
	do
		R[7]["Text"] = "X"
		-- fallthrough -> 201
	end
	-- [201] OP_252 (8, "Color3", nil) consumes=7
	do
		R[8] = UP["Color3"]
		R[8] = R[8]["new"]
		R[9] = 0.4
		R[10] = 0.4
		R[11] = 0.4
		R[8] = R[8](UNPACKREG(R, 9, 11))
		R[7]["BackgroundColor3"] = R[8]
		-- fallthrough -> 208
	end
	-- [208] OP_252 (8, "Color3", nil) consumes=7
	do
		R[8] = UP["Color3"]
		R[8] = R[8]["new"]
		R[9] = 1
		R[10] = 1
		R[11] = 1
		R[8] = R[8](UNPACKREG(R, 9, 11))
		R[7]["TextColor3"] = R[8]
		-- fallthrough -> 215
	end
	-- [215] OP_246 (8, "Enum", nil) consumes=1
	do
		R[8] = UP["Enum"]
		-- fallthrough -> 216
	end
	-- [216] OP_148 (8, 8, "Font") consumes=1
	do
		R[8] = R[8]["Font"]
		-- fallthrough -> 217
	end
	-- [217] OP_88 (8, 8, "SourceSansBold") consumes=7
	do
		R[8] = R[8]["SourceSansBold"]
		R[7]["Font"] = R[8]
		R[7]["TextSize"] = 18
		R[7]["Parent"] = R[4]
		R[8] = UP["Instance"]
		R[8] = R[8]["new"]
		R[9] = "UICorner"
		-- fallthrough -> 224
	end
	-- [224] OP_202 (8, 2, 2) consumes=1
	do
		R[8] = R[8](R[9])
		-- fallthrough -> 225
	end
	-- [225] OP_184 (9, "UDim", nil) consumes=7
	do
		R[9] = UP["UDim"]
		R[9] = R[9]["new"]
		R[10] = 0.2
		R[11] = 0
		R[9] = R[9](UNPACKREG(R, 10, 11))
		R[8]["CornerRadius"] = R[9]
		R[8]["Parent"] = R[7]
		-- fallthrough -> 232
	end
	-- [232] OP_124 (9, "Instance", nil) consumes=7
	do
		R[9] = UP["Instance"]
		R[9] = R[9]["new"]
		R[10] = "UICorner"
		R[9] = R[9](R[10])
		R[10] = UP["UDim"]
		R[10] = R[10]["new"]
		R[11] = 0.2
		-- fallthrough -> 239
	end
	-- [239] OP_249 (12, 0, nil) consumes=1
	do
		R[12] = 0
		-- fallthrough -> 240
	end
	-- [240] OP_157 (10, 12, 2) consumes=7
	do
		R[10] = R[10](UNPACKREG(R, 11, 12))
		R[9]["CornerRadius"] = R[10]
		R[9]["Parent"] = R[6]
		R[10] = UP["Instance"]
		R[10] = R[10]["new"]
		R[11] = "Frame"
		R[10] = R[10](R[11])
		-- fallthrough -> 247
	end
	-- [247] OP_263 (11, "UDim2", nil) consumes=7
	do
		R[11] = UP["UDim2"]
		R[11] = R[11]["new"]
		R[12] = 0
		R[13] = 100
		R[14] = 1
		R[15] = -30
		R[11] = R[11](UNPACKREG(R, 12, 15))
		-- fallthrough -> 254
	end
	-- [254] OP_283 (10, "Size", 11) consumes=7
	do
		R[10]["Size"] = R[11]
		R[11] = UP["UDim2"]
		R[11] = R[11]["new"]
		R[12] = 0
		R[13] = 0
		R[14] = 0
		R[15] = 30
		-- fallthrough -> 261
	end
	-- [261] OP_128 (11, 15, 2) consumes=7
	do
		R[11] = R[11](UNPACKREG(R, 12, 15))
		R[10]["Position"] = R[11]
		R[11] = UP["Color3"]
		R[11] = R[11]["new"]
		R[12] = 0.3
		R[13] = 0.3
		R[14] = 0.3
		-- fallthrough -> 268
	end
	-- [268] OP_157 (11, 14, 2) consumes=7
	do
		R[11] = R[11](UNPACKREG(R, 12, 14))
		R[10]["BackgroundColor3"] = R[11]
		R[10]["Parent"] = R[2]
		R[11] = UP["Instance"]
		R[11] = R[11]["new"]
		R[12] = "Frame"
		R[11] = R[11](R[12])
		-- fallthrough -> 275
	end
	-- [275] OP_263 (12, "UDim2", nil) consumes=7
	do
		R[12] = UP["UDim2"]
		R[12] = R[12]["new"]
		R[13] = 1
		R[14] = -100
		R[15] = 1
		R[16] = -30
		R[12] = R[12](UNPACKREG(R, 13, 16))
		-- fallthrough -> 282
	end
	-- [282] OP_283 (11, "Size", 12) consumes=7
	do
		R[11]["Size"] = R[12]
		R[12] = UP["UDim2"]
		R[12] = R[12]["new"]
		R[13] = 0
		R[14] = 100
		R[15] = 0
		R[16] = 30
		-- fallthrough -> 289
	end
	-- [289] OP_128 (12, 16, 2) consumes=7
	do
		R[12] = R[12](UNPACKREG(R, 13, 16))
		R[11]["Position"] = R[12]
		R[12] = UP["Color3"]
		R[12] = R[12]["new"]
		R[13] = 0.1
		R[14] = 0.1
		R[15] = 0.1
		-- fallthrough -> 296
	end
	-- [296] OP_282 (12, 15, 2) consumes=6
	do
		R[12] = R[12](UNPACKREG(R, 13, 15))
		R[11]["BackgroundColor3"] = R[12]
		R[11]["Parent"] = R[2]
		R[12] = {}
		R[13] = {}
		R[13]["Text"] = "ترحيب"
		-- fallthrough -> 302
	end
	-- [302] OP_263 (14, "UDim2", nil) consumes=7
	do
		R[14] = UP["UDim2"]
		R[14] = R[14]["new"]
		R[15] = 0
		R[16] = 10
		R[17] = 0
		R[18] = 10
		R[14] = R[14](UNPACKREG(R, 15, 18))
		-- fallthrough -> 309
	end
	-- [309] OP_30 (13, "Position", 14) consumes=1
	do
		R[13]["Position"] = R[14]
		-- fallthrough -> 310
	end
	-- [310] OP_344 (14, 0, 2) consumes=1
	do
		R[14] = {}
		-- fallthrough -> 311
	end
	-- [311] OP_85 (14, "Text", "الشات") consumes=1
	do
		R[14]["Text"] = "الشات"
		-- fallthrough -> 312
	end
	-- [312] OP_263 (15, "UDim2", nil) consumes=7
	do
		R[15] = UP["UDim2"]
		R[15] = R[15]["new"]
		R[16] = 0
		R[17] = 10
		R[18] = 0
		R[19] = 45
		R[15] = R[15](UNPACKREG(R, 16, 19))
		-- fallthrough -> 319
	end
	-- [319] OP_30 (14, "Position", 15) consumes=1
	do
		R[14]["Position"] = R[15]
		-- fallthrough -> 320
	end
	-- [320] OP_344 (15, 0, 2) consumes=1
	do
		R[15] = {}
		-- fallthrough -> 321
	end
	-- [321] OP_85 (15, "Text", "تخريب") consumes=1
	do
		R[15]["Text"] = "تخريب"
		-- fallthrough -> 322
	end
	-- [322] OP_263 (16, "UDim2", nil) consumes=7
	do
		R[16] = UP["UDim2"]
		R[16] = R[16]["new"]
		R[17] = 0
		R[18] = 10
		R[19] = 0
		R[20] = 80
		R[16] = R[16](UNPACKREG(R, 17, 20))
		-- fallthrough -> 329
	end
	-- [329] OP_30 (15, "Position", 16) consumes=1
	do
		R[15]["Position"] = R[16]
		-- fallthrough -> 330
	end
	-- [330] OP_344 (16, 0, 2) consumes=1
	do
		R[16] = {}
		-- fallthrough -> 331
	end
	-- [331] OP_85 (16, "Text", "ضحيه") consumes=1
	do
		R[16]["Text"] = "ضحيه"
		-- fallthrough -> 332
	end
	-- [332] OP_263 (17, "UDim2", nil) consumes=7
	do
		R[17] = UP["UDim2"]
		R[17] = R[17]["new"]
		R[18] = 0
		R[19] = 10
		R[20] = 0
		R[21] = 115
		R[17] = R[17](UNPACKREG(R, 18, 21))
		-- fallthrough -> 339
	end
	-- [339] OP_30 (16, "Position", 17) consumes=1
	do
		R[16]["Position"] = R[17]
		-- fallthrough -> 340
	end
	-- [340] OP_344 (17, 0, 2) consumes=1
	do
		R[17] = {}
		-- fallthrough -> 341
	end
	-- [341] OP_85 (17, "Text", "مضادات") consumes=1
	do
		R[17]["Text"] = "مضادات"
		-- fallthrough -> 342
	end
	-- [342] OP_263 (18, "UDim2", nil) consumes=7
	do
		R[18] = UP["UDim2"]
		R[18] = R[18]["new"]
		R[19] = 0
		R[20] = 10
		R[21] = 0
		R[22] = 150
		R[18] = R[18](UNPACKREG(R, 19, 22))
		-- fallthrough -> 349
	end
	-- [349] OP_30 (17, "Position", 18) consumes=1
	do
		R[17]["Position"] = R[18]
		-- fallthrough -> 350
	end
	-- [350] OP_344 (18, 0, 2) consumes=1
	do
		R[18] = {}
		-- fallthrough -> 351
	end
	-- [351] OP_85 (18, "Text", "تخريب الماب") consumes=1
	do
		R[18]["Text"] = "تخريب الماب"
		-- fallthrough -> 352
	end
	-- [352] OP_263 (19, "UDim2", nil) consumes=7
	do
		R[19] = UP["UDim2"]
		R[19] = R[19]["new"]
		R[20] = 0
		R[21] = 10
		R[22] = 0
		R[23] = 185
		R[19] = R[19](UNPACKREG(R, 20, 23))
		-- fallthrough -> 359
	end
	-- [359] OP_30 (18, "Position", 19) consumes=1
	do
		R[18]["Position"] = R[19]
		-- fallthrough -> 360
	end
	-- [360] OP_344 (19, 0, 2) consumes=1
	do
		R[19] = {}
		-- fallthrough -> 361
	end
	-- [361] OP_85 (19, "Text", "رقصات") consumes=1
	do
		R[19]["Text"] = "رقصات"
		-- fallthrough -> 362
	end
	-- [362] OP_263 (20, "UDim2", nil) consumes=7
	do
		R[20] = UP["UDim2"]
		R[20] = R[20]["new"]
		R[21] = 0
		R[22] = 10
		R[23] = 0
		R[24] = 220
		R[20] = R[20](UNPACKREG(R, 21, 24))
		-- fallthrough -> 369
	end
	-- [369] OP_30 (19, "Position", 20) consumes=1
	do
		R[19]["Position"] = R[20]
		-- fallthrough -> 370
	end
	-- [370] OP_21 (12, 19, 1) consumes=1
	do
		S.kUqtKEKt(R[12], R[13])
		S.kUqtKEKt(R[12], R[14])
		S.kUqtKEKt(R[12], R[15])
		S.kUqtKEKt(R[12], R[16])
		S.kUqtKEKt(R[12], R[17])
		S.kUqtKEKt(R[12], R[18])
		S.kUqtKEKt(R[12], R[19])
		-- fallthrough -> 371
	end
	-- [371] OP_344 (13, 0, 0) consumes=1
	do
		R[13] = {}
		-- fallthrough -> 372
	end
	-- [372] OP_73 (14, 20, 1) consumes=2
	do
		-- unresolved VM temporary: nil = {R, 13}
		c[(#c + 1)] = {}
		R[14] = CLOSURE(PROTO[20], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 374
	end
	-- [374] OP_124 (15, "Instance", nil) consumes=7
	do
		R[15] = UP["Instance"]
		R[15] = R[15]["new"]
		R[16] = "Frame"
		R[15] = R[15](R[16])
		R[16] = UP["UDim2"]
		R[16] = R[16]["new"]
		R[17] = 1
		-- fallthrough -> 381
	end
	-- [381] OP_72 (18, 0, nil) consumes=7
	do
		R[18] = 0
		R[19] = 1
		R[20] = 0
		R[16] = R[16](UNPACKREG(R, 17, 20))
		R[15]["Size"] = R[16]
		R[16] = UP["UDim2"]
		R[16] = R[16]["new"]
		-- fallthrough -> 388
	end
	-- [388] OP_76 (17, 0, nil) consumes=7
	do
		R[17] = 0
		R[18] = 0
		R[19] = 0
		R[20] = 0
		R[16] = R[16](UNPACKREG(R, 17, 20))
		R[15]["Position"] = R[16]
		R[16] = UP["Color3"]
		-- fallthrough -> 395
	end
	-- [395] OP_148 (16, 16, "fromRGB") consumes=1
	do
		R[16] = R[16]["fromRGB"]
		-- fallthrough -> 396
	end
	-- [396] OP_16 (17, 0, nil) consumes=2
	do
		R[17] = 0
		R[18] = 0
		-- fallthrough -> 398
	end
	-- [398] OP_249 (19, 0, nil) consumes=1
	do
		R[19] = 0
		-- fallthrough -> 399
	end
	-- [399] OP_107 (16, 19, 2) consumes=1
	do
		R[16] = R[16](UNPACKREG(R, 17, 19))
		-- fallthrough -> 400
	end
	-- [400] OP_30 (15, "BackgroundColor3", 16) consumes=1
	do
		R[15]["BackgroundColor3"] = R[16]
		-- fallthrough -> 401
	end
	-- [401] OP_85 (15, "Visible", false) consumes=1
	do
		R[15]["Visible"] = false
		-- fallthrough -> 402
	end
	-- [402] OP_30 (15, "Parent", 11) consumes=1
	do
		R[15]["Parent"] = R[11]
		-- fallthrough -> 403
	end
	-- [403] OP_246 (16, "game", nil) consumes=1
	do
		R[16] = UP["game"]
		-- fallthrough -> 404
	end
	-- [404] OP_270 (16, 16, "GetService") consumes=1
	do
		R[17] = R[16]
		R[16] = R[16]["GetService"]
		-- fallthrough -> 405
	end
	-- [405] OP_249 (18, "TweenService", nil) consumes=1
	do
		R[18] = "TweenService"
		-- fallthrough -> 406
	end
	-- [406] OP_107 (16, 18, 2) consumes=1
	do
		R[16] = R[16](UNPACKREG(R, 17, 18))
		-- fallthrough -> 407
	end
	-- [407] OP_124 (17, "Instance", nil) consumes=7
	do
		R[17] = UP["Instance"]
		R[17] = R[17]["new"]
		R[18] = "ImageLabel"
		R[17] = R[17](R[18])
		R[18] = UP["UDim2"]
		R[18] = R[18]["new"]
		R[19] = 0
		-- fallthrough -> 414
	end
	-- [414] OP_72 (20, 120, nil) consumes=7
	do
		R[20] = 120
		R[21] = 0
		R[22] = 120
		R[18] = R[18](UNPACKREG(R, 19, 22))
		R[17]["Size"] = R[18]
		R[18] = UP["UDim2"]
		R[18] = R[18]["new"]
		-- fallthrough -> 421
	end
	-- [421] OP_135 (19, 1, nil) consumes=7
	do
		R[19] = 1
		R[20] = 0
		R[21] = 0.01
		R[22] = 0
		R[18] = R[18](UNPACKREG(R, 19, 22))
		R[17]["Position"] = R[18]
		R[18] = "https://www.roblox.com/headshot-thumbnail/image?userId="
		-- fallthrough -> 428
	end
	-- [428] OP_26 (19, "game", nil) consumes=6
	do
		R[19] = UP["game"]
		R[19] = R[19]["Players"]
		R[19] = R[19]["LocalPlayer"]
		R[19] = R[19]["UserId"]
		R[20] = "&width=420&height=420&format=png"
		R[18] = ((R[18] .. R[19]) .. R[20])
		-- fallthrough -> 434
	end
	-- [434] OP_345 (17, "Image", 18) consumes=7
	do
		R[17]["Image"] = R[18]
		R[18] = UP["Color3"]
		R[18] = R[18]["new"]
		R[19] = 0
		R[20] = 0
		R[21] = 0
		R[18] = R[18](UNPACKREG(R, 19, 21))
		-- fallthrough -> 441
	end
	-- [441] OP_30 (17, "BackgroundColor3", 18) consumes=1
	do
		R[17]["BackgroundColor3"] = R[18]
		-- fallthrough -> 442
	end
	-- [442] OP_85 (17, "BorderSizePixel", 0) consumes=1
	do
		R[17]["BorderSizePixel"] = 0
		-- fallthrough -> 443
	end
	-- [443] OP_260 (17, "Parent", 15) consumes=7
	do
		R[17]["Parent"] = R[15]
		R[18] = UP["Instance"]
		R[18] = R[18]["new"]
		R[19] = "UICorner"
		R[18] = R[18](R[19])
		R[19] = UP["UDim"]
		R[19] = R[19]["new"]
		-- fallthrough -> 450
	end
	-- [450] OP_132 (20, 1, nil) consumes=7
	do
		R[20] = 1
		R[21] = 0
		R[19] = R[19](UNPACKREG(R, 20, 21))
		R[18]["CornerRadius"] = R[19]
		R[18]["Parent"] = R[17]
		R[19] = UP["TweenInfo"]
		R[19] = R[19]["new"]
		-- fallthrough -> 457
	end
	-- [457] OP_318 (20, 1, nil) consumes=8
	do
		R[20] = 1
		R[21] = UP["Enum"]
		R[21] = R[21]["EasingStyle"]
		R[21] = R[21]["Bounce"]
		R[22] = UP["Enum"]
		R[22] = R[22]["EasingDirection"]
		R[22] = R[22]["Out"]
		R[19] = R[19](UNPACKREG(R, 20, 22))
		-- fallthrough -> 465
	end
	-- [465] OP_263 (20, "UDim2", nil) consumes=7
	do
		R[20] = UP["UDim2"]
		R[20] = R[20]["new"]
		R[21] = 0.5
		R[22] = -60
		R[23] = 0.01
		R[24] = 0
		R[20] = R[20](UNPACKREG(R, 21, 24))
		-- fallthrough -> 472
	end
	-- [472] OP_34 (21, 16, "Create") consumes=8
	do
		R[22] = R[16]
		R[21] = R[16]["Create"]
		R[23] = R[17]
		R[24] = R[19]
		R[25] = {}
		R[25]["Position"] = R[20]
		R[21] = R[21](UNPACKREG(R, 22, 25))
		R[23] = R[21]
		R[22] = R[21]["Play"]
		R[22](R[23])
		-- fallthrough -> 480
	end
	-- [480] OP_124 (22, "Instance", nil) consumes=7
	do
		R[22] = UP["Instance"]
		R[22] = R[22]["new"]
		R[23] = "TextLabel"
		R[22] = R[22](R[23])
		R[23] = UP["UDim2"]
		R[23] = R[23]["new"]
		R[24] = 0
		-- fallthrough -> 487
	end
	-- [487] OP_72 (25, 300, nil) consumes=7
	do
		R[25] = 300
		R[26] = 0
		R[27] = 50
		R[23] = R[23](UNPACKREG(R, 24, 27))
		R[22]["Size"] = R[23]
		R[23] = UP["UDim2"]
		R[23] = R[23]["new"]
		-- fallthrough -> 494
	end
	-- [494] OP_135 (24, 0.5, nil) consumes=7
	do
		R[24] = 0.5
		R[25] = -150
		R[26] = 0.4
		R[27] = 0
		R[23] = R[23](UNPACKREG(R, 24, 27))
		R[22]["Position"] = R[23]
		R[23] = "مرحبًا بك، "
		-- fallthrough -> 501
	end
	-- [501] OP_26 (24, "game", nil) consumes=6
	do
		R[24] = UP["game"]
		R[24] = R[24]["Players"]
		R[24] = R[24]["LocalPlayer"]
		R[24] = R[24]["Name"]
		R[25] = "!"
		R[23] = ((R[23] .. R[24]) .. R[25])
		-- fallthrough -> 507
	end
	-- [507] OP_345 (22, "Text", 23) consumes=7
	do
		R[22]["Text"] = R[23]
		R[23] = UP["Color3"]
		R[23] = R[23]["new"]
		R[24] = 1
		R[25] = 1
		R[26] = 1
		R[23] = R[23](UNPACKREG(R, 24, 26))
		-- fallthrough -> 514
	end
	-- [514] OP_30 (22, "TextColor3", 23) consumes=1
	do
		R[22]["TextColor3"] = R[23]
		-- fallthrough -> 515
	end
	-- [515] OP_85 (22, "BackgroundTransparency", 1) consumes=1
	do
		R[22]["BackgroundTransparency"] = 1
		-- fallthrough -> 516
	end
	-- [516] OP_246 (23, "Enum", nil) consumes=1
	do
		R[23] = UP["Enum"]
		-- fallthrough -> 517
	end
	-- [517] OP_148 (23, 23, "Font") consumes=1
	do
		R[23] = R[23]["Font"]
		-- fallthrough -> 518
	end
	-- [518] OP_88 (23, 23, "SourceSansBold") consumes=7
	do
		R[23] = R[23]["SourceSansBold"]
		R[22]["Font"] = R[23]
		R[22]["TextSize"] = 24
		R[22]["Parent"] = R[15]
		R[23] = UP["Instance"]
		R[23] = R[23]["new"]
		R[24] = "TextButton"
		-- fallthrough -> 525
	end
	-- [525] OP_202 (23, 2, 2) consumes=1
	do
		R[23] = R[23](R[24])
		-- fallthrough -> 526
	end
	-- [526] OP_263 (24, "UDim2", nil) consumes=7
	do
		R[24] = UP["UDim2"]
		R[24] = R[24]["new"]
		R[25] = 0
		R[26] = 200
		R[27] = 0
		R[28] = 40
		R[24] = R[24](UNPACKREG(R, 25, 28))
		-- fallthrough -> 533
	end
	-- [533] OP_283 (23, "Size", 24) consumes=7
	do
		R[23]["Size"] = R[24]
		R[24] = UP["UDim2"]
		R[24] = R[24]["new"]
		R[25] = 1
		R[26] = 0
		R[27] = 0.6
		R[28] = 0
		-- fallthrough -> 540
	end
	-- [540] OP_107 (24, 28, 2) consumes=1
	do
		R[24] = R[24](UNPACKREG(R, 25, 28))
		-- fallthrough -> 541
	end
	-- [541] OP_30 (23, "Position", 24) consumes=1
	do
		R[23]["Position"] = R[24]
		-- fallthrough -> 542
	end
	-- [542] OP_85 (23, "Text", "نسخ رابط الديسكورد") consumes=1
	do
		R[23]["Text"] = "نسخ رابط الديسكورد"
		-- fallthrough -> 543
	end
	-- [543] OP_252 (24, "Color3", nil) consumes=7
	do
		R[24] = UP["Color3"]
		R[24] = R[24]["fromRGB"]
		R[25] = 255
		R[26] = 215
		R[27] = 0
		R[24] = R[24](UNPACKREG(R, 25, 27))
		R[23]["BackgroundColor3"] = R[24]
		-- fallthrough -> 550
	end
	-- [550] OP_252 (24, "Color3", nil) consumes=7
	do
		R[24] = UP["Color3"]
		R[24] = R[24]["new"]
		R[25] = 0
		R[26] = 0
		R[27] = 0
		R[24] = R[24](UNPACKREG(R, 25, 27))
		R[23]["TextColor3"] = R[24]
		-- fallthrough -> 557
	end
	-- [557] OP_246 (24, "Enum", nil) consumes=1
	do
		R[24] = UP["Enum"]
		-- fallthrough -> 558
	end
	-- [558] OP_148 (24, 24, "Font") consumes=1
	do
		R[24] = R[24]["Font"]
		-- fallthrough -> 559
	end
	-- [559] OP_88 (24, 24, "SourceSansBold") consumes=7
	do
		R[24] = R[24]["SourceSansBold"]
		R[23]["Font"] = R[24]
		R[23]["TextSize"] = 18
		R[23]["Parent"] = R[15]
		R[24] = UP["Instance"]
		R[24] = R[24]["new"]
		R[25] = "UIGradient"
		-- fallthrough -> 566
	end
	-- [566] OP_192 (24, 2, 2) consumes=9
	do
		R[24] = R[24](R[25])
		R[25] = UP["ColorSequence"]
		R[25] = R[25]["new"]
		R[26] = {}
		R[27] = UP["ColorSequenceKeypoint"]
		R[27] = R[27]["new"]
		R[28] = 0
		R[29] = UP["Color3"]
		R[29] = R[29]["fromRGB"]
		-- fallthrough -> 575
	end
	-- [575] OP_16 (30, 223, nil) consumes=2
	do
		R[30] = 223
		R[31] = 1
		-- fallthrough -> 577
	end
	-- [577] OP_74 (32, 0, nil) consumes=8
	do
		R[32] = 0
		R[27] = R[27](UNPACKREG(R, 28, 28))
		R[28] = UP["ColorSequenceKeypoint"]
		R[28] = R[28]["new"]
		R[29] = 1
		R[30] = UP["Color3"]
		R[30] = R[30]["fromRGB"]
		-- fallthrough -> 585
	end
	-- [585] OP_16 (31, 0, nil) consumes=2
	do
		R[31] = 0
		R[32] = 0
		-- fallthrough -> 587
	end
	-- [587] OP_249 (33, 0, nil) consumes=1
	do
		R[33] = 0
		-- fallthrough -> 588
	end
	-- [588] OP_271 (30, 33, 0) consumes=1
	do
		for l = 30, ((d + 30) - 1), 1 do
			R[l] = PACK(R[30](UNPACKREG(R, 31, 33)))[1]
		end
		-- fallthrough -> 589
	end
	-- [589] OP_7 (28, 0, 0) consumes=1
	do
		for d = 28, ((l + 28) - 1), 1 do
			R[d] = PACK(R[28](UNPACKREG(R, 29, b)))[1]
		end
		-- fallthrough -> 590
	end
	-- [590] OP_337 (26, 0, 1) consumes=1
	do
		for d = 27, b, 1 do
			S.kUqtKEKt(R[26], R[d])
		end
		-- fallthrough -> 591
	end
	-- [591] OP_202 (25, 2, 2) consumes=1
	do
		R[25] = R[25](R[26])
		-- fallthrough -> 592
	end
	-- [592] OP_349 (24, "Color", 25) consumes=7
	do
		R[24]["Color"] = R[25]
		R[24]["Parent"] = R[23]
		R[25] = UP["Instance"]
		R[25] = R[25]["new"]
		R[26] = "UICorner"
		R[25] = R[25](R[26])
		R[26] = UP["UDim"]
		-- fallthrough -> 599
	end
	-- [599] OP_148 (26, 26, "new") consumes=1
	do
		R[26] = R[26]["new"]
		-- fallthrough -> 600
	end
	-- [600] OP_132 (27, 0.2, nil) consumes=7
	do
		R[27] = 0.2
		R[28] = 0
		R[26] = R[26](UNPACKREG(R, 27, 28))
		R[25]["CornerRadius"] = R[26]
		R[25]["Parent"] = R[23]
		R[26] = UP["TweenInfo"]
		R[26] = R[26]["new"]
		-- fallthrough -> 607
	end
	-- [607] OP_318 (27, 1, nil) consumes=8
	do
		R[27] = 1
		R[28] = UP["Enum"]
		R[28] = R[28]["EasingStyle"]
		R[28] = R[28]["Quad"]
		R[29] = UP["Enum"]
		R[29] = R[29]["EasingDirection"]
		R[29] = R[29]["Out"]
		R[26] = R[26](UNPACKREG(R, 27, 29))
		-- fallthrough -> 615
	end
	-- [615] OP_263 (27, "UDim2", nil) consumes=7
	do
		R[27] = UP["UDim2"]
		R[27] = R[27]["new"]
		R[28] = 0.5
		R[29] = -100
		R[30] = 0.6
		R[31] = 0
		R[27] = R[27](UNPACKREG(R, 28, 31))
		-- fallthrough -> 622
	end
	-- [622] OP_34 (28, 16, "Create") consumes=8
	do
		R[29] = R[16]
		R[28] = R[16]["Create"]
		R[30] = R[23]
		R[31] = R[26]
		R[32] = {}
		R[32]["Position"] = R[27]
		R[28] = R[28](UNPACKREG(R, 29, 32))
		R[30] = R[28]
		R[29] = R[28]["Play"]
		R[29](R[30])
		-- fallthrough -> 630
	end
	-- [630] OP_304 (29, 23, "MouseButton1Click") consumes=2
	do
		R[29] = R[23]["MouseButton1Click"]
		R[30] = R[29]
		R[29] = R[29]["Connect"]
		-- fallthrough -> 632
	end
	-- [632] OP_73 (31, 64, 1) consumes=2
	do
		-- unresolved VM temporary: nil = {R, 23}
		c[(#c + 1)] = {}
		R[31] = CLOSURE(PROTO[64], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 634
	end
	-- [634] OP_59 (29, 31, 1) consumes=7
	do
		R[29](UNPACKREG(R, 30, 31))
		R[29] = UP["Instance"]
		R[29] = R[29]["new"]
		R[30] = "TextLabel"
		R[29] = R[29](R[30])
		R[30] = UP["UDim2"]
		R[30] = R[30]["new"]
		-- fallthrough -> 641
	end
	-- [641] OP_76 (31, 0, nil) consumes=7
	do
		R[31] = 0
		R[32] = 300
		R[33] = 0
		R[34] = 50
		R[30] = R[30](UNPACKREG(R, 31, 34))
		R[29]["Size"] = R[30]
		R[30] = UP["UDim2"]
		-- fallthrough -> 648
	end
	-- [648] OP_75 (30, 30, "new") consumes=7
	do
		R[30] = R[30]["new"]
		R[31] = 0.5
		R[32] = -150
		R[33] = 0.8
		R[34] = 0
		R[30] = R[30](UNPACKREG(R, 31, 34))
		R[29]["Position"] = R[30]
		-- fallthrough -> 655
	end
	-- [655] OP_85 (29, "Text", "السيرفر القديم تم اختراقه من شخص (انسخ السيرفر الجديد وخش معنا)") consumes=1
	do
		R[29]["Text"] =
			"السيرفر القديم تم اختراقه من شخص (انسخ السيرفر الجديد وخش معنا)"
		-- fallthrough -> 656
	end
	-- [656] OP_252 (30, "Color3", nil) consumes=7
	do
		R[30] = UP["Color3"]
		R[30] = R[30]["new"]
		R[31] = 1
		R[32] = 1
		R[33] = 1
		R[30] = R[30](UNPACKREG(R, 31, 33))
		R[29]["TextColor3"] = R[30]
		-- fallthrough -> 663
	end
	-- [663] OP_85 (29, "BackgroundTransparency", 1) consumes=1
	do
		R[29]["BackgroundTransparency"] = 1
		-- fallthrough -> 664
	end
	-- [664] OP_246 (30, "Enum", nil) consumes=1
	do
		R[30] = UP["Enum"]
		-- fallthrough -> 665
	end
	-- [665] OP_148 (30, 30, "Font") consumes=1
	do
		R[30] = R[30]["Font"]
		-- fallthrough -> 666
	end
	-- [666] OP_88 (30, 30, "SourceSans") consumes=7
	do
		R[30] = R[30]["SourceSans"]
		R[29]["Font"] = R[30]
		R[29]["TextSize"] = 17
		R[29]["Parent"] = R[15]
		R[30] = UP["Instance"]
		R[30] = R[30]["new"]
		R[31] = "TextLabel"
		-- fallthrough -> 673
	end
	-- [673] OP_202 (30, 2, 2) consumes=1
	do
		R[30] = R[30](R[31])
		-- fallthrough -> 674
	end
	-- [674] OP_263 (31, "UDim2", nil) consumes=7
	do
		R[31] = UP["UDim2"]
		R[31] = R[31]["new"]
		R[32] = 0
		R[33] = 300
		R[34] = 0
		R[35] = 10
		R[31] = R[31](UNPACKREG(R, 32, 35))
		-- fallthrough -> 681
	end
	-- [681] OP_283 (30, "Size", 31) consumes=7
	do
		R[30]["Size"] = R[31]
		R[31] = UP["UDim2"]
		R[31] = R[31]["new"]
		R[32] = 0.5
		R[33] = -150
		R[34] = 0.77
		R[35] = 0
		-- fallthrough -> 688
	end
	-- [688] OP_107 (31, 35, 2) consumes=1
	do
		R[31] = R[31](UNPACKREG(R, 32, 35))
		-- fallthrough -> 689
	end
	-- [689] OP_30 (30, "Position", 31) consumes=1
	do
		R[30]["Position"] = R[31]
		-- fallthrough -> 690
	end
	-- [690] OP_85 (30, "Text", "جميع الحقوق محفوظه في سيرفر الدسكورد") consumes=1
	do
		R[30]["Text"] = "جميع الحقوق محفوظه في سيرفر الدسكورد"
		-- fallthrough -> 691
	end
	-- [691] OP_252 (31, "Color3", nil) consumes=7
	do
		R[31] = UP["Color3"]
		R[31] = R[31]["new"]
		R[32] = 1
		R[33] = 1
		R[34] = 1
		R[31] = R[31](UNPACKREG(R, 32, 34))
		R[30]["TextColor3"] = R[31]
		-- fallthrough -> 698
	end
	-- [698] OP_220 (30, "BackgroundTransparency", 1) consumes=10
	do
		R[30]["BackgroundTransparency"] = 1
		R[31] = UP["Enum"]
		R[31] = R[31]["Font"]
		R[31] = R[31]["SourceSans"]
		R[30]["Font"] = R[31]
		R[30]["TextSize"] = 16
		R[30]["Parent"] = R[15]
		R[13]["ترحيب"] = R[15]
		R[31] = false
		R[32] = R[2]["Size"]
		-- fallthrough -> 708
	end
	-- [708] OP_263 (33, "UDim2", nil) consumes=7
	do
		R[33] = UP["UDim2"]
		R[33] = R[33]["new"]
		R[34] = 0
		R[35] = 490
		R[36] = 0
		R[37] = 30
		R[33] = R[33](UNPACKREG(R, 34, 37))
		-- fallthrough -> 715
	end
	-- [715] OP_304 (34, 6, "MouseButton1Click") consumes=2
	do
		R[34] = R[6]["MouseButton1Click"]
		R[35] = R[34]
		R[34] = R[34]["Connect"]
		-- fallthrough -> 717
	end
	-- [717] OP_73 (36, 59, 6) consumes=7
	do
		-- unresolved VM temporary: nil = {R, 31}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 2}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 33}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 10}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 11}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 32}
		c[(#c + 1)] = {}
		R[36] = CLOSURE(PROTO[59], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 724
	end
	-- [724] OP_191 (34, 36, 1) consumes=3
	do
		R[34](UNPACKREG(R, 35, 36))
		R[34] = R[7]["MouseButton1Click"]
		R[35] = R[34]
		R[34] = R[34]["Connect"]
		-- fallthrough -> 727
	end
	-- [727] OP_73 (36, 58, 1) consumes=2
	do
		-- unresolved VM temporary: nil = {R, 1}
		c[(#c + 1)] = {}
		R[36] = CLOSURE(PROTO[58], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 729
	end
	-- [729] OP_262 (34, 36, 1) consumes=1
	do
		R[34](UNPACKREG(R, 35, 36))
		-- fallthrough -> 730
	end
	-- [730] OP_350 (34, 14, 0) consumes=1
	do
		R[34] = R[14]
		-- fallthrough -> 731
	end
	-- [731] OP_249 (35, "ترحيب", nil) consumes=1
	do
		R[35] = "ترحيب"
		-- fallthrough -> 732
	end
	-- [732] OP_201 (34, 2, 1) consumes=1
	do
		R[34](R[35])
		-- fallthrough -> 733
	end
	-- [733] OP_124 (34, "Instance", nil) consumes=7
	do
		R[34] = UP["Instance"]
		R[34] = R[34]["new"]
		R[35] = "Frame"
		R[34] = R[34](R[35])
		R[35] = UP["UDim2"]
		R[35] = R[35]["new"]
		R[36] = 1
		-- fallthrough -> 740
	end
	-- [740] OP_72 (37, 0, nil) consumes=7
	do
		R[37] = 0
		R[38] = 1
		R[39] = 0
		R[35] = R[35](UNPACKREG(R, 36, 39))
		R[34]["Size"] = R[35]
		R[35] = UP["UDim2"]
		R[35] = R[35]["new"]
		-- fallthrough -> 747
	end
	-- [747] OP_76 (36, 0, nil) consumes=7
	do
		R[36] = 0
		R[37] = 0
		R[38] = 0
		R[39] = 0
		R[35] = R[35](UNPACKREG(R, 36, 39))
		R[34]["Position"] = R[35]
		R[35] = UP["Color3"]
		-- fallthrough -> 754
	end
	-- [754] OP_148 (35, 35, "fromRGB") consumes=1
	do
		R[35] = R[35]["fromRGB"]
		-- fallthrough -> 755
	end
	-- [755] OP_16 (36, 30, nil) consumes=2
	do
		R[36] = 30
		R[37] = 30
		-- fallthrough -> 757
	end
	-- [757] OP_249 (38, 30, nil) consumes=1
	do
		R[38] = 30
		-- fallthrough -> 758
	end
	-- [758] OP_107 (35, 38, 2) consumes=1
	do
		R[35] = R[35](UNPACKREG(R, 36, 38))
		-- fallthrough -> 759
	end
	-- [759] OP_30 (34, "BackgroundColor3", 35) consumes=1
	do
		R[34]["BackgroundColor3"] = R[35]
		-- fallthrough -> 760
	end
	-- [760] OP_85 (34, "Visible", false) consumes=1
	do
		R[34]["Visible"] = false
		-- fallthrough -> 761
	end
	-- [761] OP_260 (34, "Parent", 11) consumes=7
	do
		R[34]["Parent"] = R[11]
		R[35] = UP["Instance"]
		R[35] = R[35]["new"]
		R[36] = "TextLabel"
		R[35] = R[35](R[36])
		R[36] = UP["UDim2"]
		R[36] = R[36]["new"]
		-- fallthrough -> 768
	end
	-- [768] OP_76 (37, 0.8, nil) consumes=7
	do
		R[37] = 0.8
		R[38] = 0
		R[39] = 0.1
		R[40] = 0
		R[36] = R[36](UNPACKREG(R, 37, 40))
		R[35]["Size"] = R[36]
		R[36] = UP["UDim2"]
		-- fallthrough -> 775
	end
	-- [775] OP_75 (36, 36, "new") consumes=7
	do
		R[36] = R[36]["new"]
		R[37] = 0.1
		R[38] = 0
		R[39] = 0.001
		R[40] = 0
		R[36] = R[36](UNPACKREG(R, 37, 40))
		R[35]["Position"] = R[36]
		-- fallthrough -> 782
	end
	-- [782] OP_85 (35, "BackgroundTransparency", 1) consumes=1
	do
		R[35]["BackgroundTransparency"] = 1
		-- fallthrough -> 783
	end
	-- [783] OP_85 (35, "Text", "تخريب الماب ") consumes=1
	do
		R[35]["Text"] = "تخريب الماب "
		-- fallthrough -> 784
	end
	-- [784] OP_252 (36, "Color3", nil) consumes=7
	do
		R[36] = UP["Color3"]
		R[36] = R[36]["new"]
		R[37] = 1
		R[38] = 1
		R[39] = 1
		R[36] = R[36](UNPACKREG(R, 37, 39))
		R[35]["TextColor3"] = R[36]
		-- fallthrough -> 791
	end
	-- [791] OP_246 (36, "Enum", nil) consumes=1
	do
		R[36] = UP["Enum"]
		-- fallthrough -> 792
	end
	-- [792] OP_148 (36, 36, "Font") consumes=1
	do
		R[36] = R[36]["Font"]
		-- fallthrough -> 793
	end
	-- [793] OP_88 (36, 36, "SourceSans") consumes=7
	do
		R[36] = R[36]["SourceSans"]
		R[35]["Font"] = R[36]
		R[35]["TextSize"] = 16
		R[35]["Parent"] = R[34]
		R[36] = UP["Instance"]
		R[36] = R[36]["new"]
		R[37] = "TextButton"
		-- fallthrough -> 800
	end
	-- [800] OP_202 (36, 2, 2) consumes=1
	do
		R[36] = R[36](R[37])
		-- fallthrough -> 801
	end
	-- [801] OP_263 (37, "UDim2", nil) consumes=7
	do
		R[37] = UP["UDim2"]
		R[37] = R[37]["new"]
		R[38] = 0.7
		R[39] = 0
		R[40] = 0.15
		R[41] = 0
		R[37] = R[37](UNPACKREG(R, 38, 41))
		-- fallthrough -> 808
	end
	-- [808] OP_283 (36, "Size", 37) consumes=7
	do
		R[36]["Size"] = R[37]
		R[37] = UP["UDim2"]
		R[37] = R[37]["new"]
		R[38] = 0.15
		R[39] = 0
		R[40] = 0.35
		R[41] = 0
		-- fallthrough -> 815
	end
	-- [815] OP_107 (37, 41, 2) consumes=1
	do
		R[37] = R[37](UNPACKREG(R, 38, 41))
		-- fallthrough -> 816
	end
	-- [816] OP_30 (36, "Position", 37) consumes=1
	do
		R[36]["Position"] = R[37]
		-- fallthrough -> 817
	end
	-- [817] OP_85 (36, "Text", "فتح أوامر الأقرب 6") consumes=1
	do
		R[36]["Text"] = "فتح أوامر الأقرب 6"
		-- fallthrough -> 818
	end
	-- [818] OP_252 (37, "Color3", nil) consumes=7
	do
		R[37] = UP["Color3"]
		R[37] = R[37]["fromRGB"]
		R[38] = 0
		R[39] = 100
		R[40] = 255
		R[37] = R[37](UNPACKREG(R, 38, 40))
		R[36]["BackgroundColor3"] = R[37]
		-- fallthrough -> 825
	end
	-- [825] OP_252 (37, "Color3", nil) consumes=7
	do
		R[37] = UP["Color3"]
		R[37] = R[37]["new"]
		R[38] = 1
		R[39] = 1
		R[40] = 1
		R[37] = R[37](UNPACKREG(R, 38, 40))
		R[36]["TextColor3"] = R[37]
		-- fallthrough -> 832
	end
	-- [832] OP_246 (37, "Enum", nil) consumes=1
	do
		R[37] = UP["Enum"]
		-- fallthrough -> 833
	end
	-- [833] OP_148 (37, 37, "Font") consumes=1
	do
		R[37] = R[37]["Font"]
		-- fallthrough -> 834
	end
	-- [834] OP_88 (37, 37, "SourceSansBold") consumes=7
	do
		R[37] = R[37]["SourceSansBold"]
		R[36]["Font"] = R[37]
		R[36]["TextSize"] = 18
		R[36]["Parent"] = R[34]
		R[37] = UP["Instance"]
		R[37] = R[37]["new"]
		R[38] = "UICorner"
		-- fallthrough -> 841
	end
	-- [841] OP_202 (37, 2, 2) consumes=1
	do
		R[37] = R[37](R[38])
		-- fallthrough -> 842
	end
	-- [842] OP_184 (38, "UDim", nil) consumes=7
	do
		R[38] = UP["UDim"]
		R[38] = R[38]["new"]
		R[39] = 0.2
		R[40] = 0
		R[38] = R[38](UNPACKREG(R, 39, 40))
		R[37]["CornerRadius"] = R[38]
		R[37]["Parent"] = R[36]
		-- fallthrough -> 849
	end
	-- [849] OP_304 (38, 36, "MouseButton1Click") consumes=2
	do
		R[38] = R[36]["MouseButton1Click"]
		R[39] = R[38]
		R[38] = R[38]["Connect"]
		-- fallthrough -> 851
	end
	-- [851] OP_296 (40, 10, nil) consumes=1
	do
		R[40] = CLOSURE(PROTO[10], nil, UP)
		-- fallthrough -> 852
	end
	-- [852] OP_59 (38, 40, 1) consumes=7
	do
		R[38](UNPACKREG(R, 39, 40))
		R[38] = UP["Instance"]
		R[38] = R[38]["new"]
		R[39] = "TextButton"
		R[38] = R[38](R[39])
		R[39] = UP["UDim2"]
		R[39] = R[39]["new"]
		-- fallthrough -> 859
	end
	-- [859] OP_76 (40, 0.7, nil) consumes=7
	do
		R[40] = 0.7
		R[41] = 0
		R[42] = 0.15
		R[43] = 0
		R[39] = R[39](UNPACKREG(R, 40, 43))
		R[38]["Size"] = R[39]
		R[39] = UP["UDim2"]
		-- fallthrough -> 866
	end
	-- [866] OP_75 (39, 39, "new") consumes=7
	do
		R[39] = R[39]["new"]
		R[40] = 0.15
		R[41] = 0
		R[42] = 0.15
		R[43] = 0
		R[39] = R[39](UNPACKREG(R, 40, 43))
		R[38]["Position"] = R[39]
		-- fallthrough -> 873
	end
	-- [873] OP_85 (38, "Text", "قريبا") consumes=1
	do
		R[38]["Text"] = "قريبا"
		-- fallthrough -> 874
	end
	-- [874] OP_252 (39, "Color3", nil) consumes=7
	do
		R[39] = UP["Color3"]
		R[39] = R[39]["fromRGB"]
		R[40] = 255
		R[41] = 0
		R[42] = 0
		R[39] = R[39](UNPACKREG(R, 40, 42))
		R[38]["BackgroundColor3"] = R[39]
		-- fallthrough -> 881
	end
	-- [881] OP_252 (39, "Color3", nil) consumes=7
	do
		R[39] = UP["Color3"]
		R[39] = R[39]["new"]
		R[40] = 1
		R[41] = 1
		R[42] = 1
		R[39] = R[39](UNPACKREG(R, 40, 42))
		R[38]["TextColor3"] = R[39]
		-- fallthrough -> 888
	end
	-- [888] OP_246 (39, "Enum", nil) consumes=1
	do
		R[39] = UP["Enum"]
		-- fallthrough -> 889
	end
	-- [889] OP_148 (39, 39, "Font") consumes=1
	do
		R[39] = R[39]["Font"]
		-- fallthrough -> 890
	end
	-- [890] OP_88 (39, 39, "SourceSansBold") consumes=7
	do
		R[39] = R[39]["SourceSansBold"]
		R[38]["Font"] = R[39]
		R[38]["TextSize"] = 18
		R[38]["Parent"] = R[34]
		R[39] = UP["Instance"]
		R[39] = R[39]["new"]
		R[40] = "UICorner"
		-- fallthrough -> 897
	end
	-- [897] OP_202 (39, 2, 2) consumes=1
	do
		R[39] = R[39](R[40])
		-- fallthrough -> 898
	end
	-- [898] OP_184 (40, "UDim", nil) consumes=7
	do
		R[40] = UP["UDim"]
		R[40] = R[40]["new"]
		R[41] = 0.2
		R[42] = 0
		R[40] = R[40](UNPACKREG(R, 41, 42))
		R[39]["CornerRadius"] = R[40]
		R[39]["Parent"] = R[38]
		-- fallthrough -> 905
	end
	-- [905] OP_260 (13, "تخريب الماب", 34) consumes=7
	do
		R[13]["تخريب الماب"] = R[34]
		R[40] = UP["Instance"]
		R[40] = R[40]["new"]
		R[41] = "Frame"
		R[40] = R[40](R[41])
		R[41] = UP["UDim2"]
		R[41] = R[41]["new"]
		-- fallthrough -> 912
	end
	-- [912] OP_76 (42, 1, nil) consumes=7
	do
		R[42] = 1
		R[43] = 0
		R[44] = 1
		R[45] = 0
		R[41] = R[41](UNPACKREG(R, 42, 45))
		R[40]["Size"] = R[41]
		R[41] = UP["UDim2"]
		-- fallthrough -> 919
	end
	-- [919] OP_75 (41, 41, "new") consumes=7
	do
		R[41] = R[41]["new"]
		R[42] = 0
		R[43] = 0
		R[44] = 0
		R[45] = 0
		R[41] = R[41](UNPACKREG(R, 42, 45))
		R[40]["Position"] = R[41]
		-- fallthrough -> 926
	end
	-- [926] OP_252 (41, "Color3", nil) consumes=7
	do
		R[41] = UP["Color3"]
		R[41] = R[41]["fromRGB"]
		R[42] = 30
		R[43] = 30
		R[44] = 30
		R[41] = R[41](UNPACKREG(R, 42, 44))
		R[40]["BackgroundColor3"] = R[41]
		-- fallthrough -> 933
	end
	-- [933] OP_85 (40, "Visible", false) consumes=1
	do
		R[40]["Visible"] = false
		-- fallthrough -> 934
	end
	-- [934] OP_260 (40, "Parent", 11) consumes=7
	do
		R[40]["Parent"] = R[11]
		R[41] = UP["Instance"]
		R[41] = R[41]["new"]
		R[42] = "TextLabel"
		R[41] = R[41](R[42])
		R[42] = UP["UDim2"]
		R[42] = R[42]["new"]
		-- fallthrough -> 941
	end
	-- [941] OP_76 (43, 0.8, nil) consumes=7
	do
		R[43] = 0.8
		R[44] = 0
		R[45] = 0.1
		R[46] = 0
		R[42] = R[42](UNPACKREG(R, 43, 46))
		R[41]["Size"] = R[42]
		R[42] = UP["UDim2"]
		-- fallthrough -> 948
	end
	-- [948] OP_75 (42, 42, "new") consumes=7
	do
		R[42] = R[42]["new"]
		R[43] = 0.1
		R[44] = 0
		R[45] = 0.001
		R[46] = 0
		R[42] = R[42](UNPACKREG(R, 43, 46))
		R[41]["Position"] = R[42]
		-- fallthrough -> 955
	end
	-- [955] OP_85 (41, "BackgroundTransparency", 1) consumes=1
	do
		R[41]["BackgroundTransparency"] = 1
		-- fallthrough -> 956
	end
	-- [956] OP_85 (41, "Text", " رقصات لاغراض بروبكس (تظهر للاعبين)") consumes=1
	do
		R[41]["Text"] = " رقصات لاغراض بروبكس (تظهر للاعبين)"
		-- fallthrough -> 957
	end
	-- [957] OP_252 (42, "Color3", nil) consumes=7
	do
		R[42] = UP["Color3"]
		R[42] = R[42]["new"]
		R[43] = 1
		R[44] = 1
		R[45] = 1
		R[42] = R[42](UNPACKREG(R, 43, 45))
		R[41]["TextColor3"] = R[42]
		-- fallthrough -> 964
	end
	-- [964] OP_154 (42, "Enum", nil) consumes=9
	do
		R[42] = UP["Enum"]
		R[42] = R[42]["Font"]
		R[42] = R[42]["SourceSans"]
		R[41]["Font"] = R[42]
		R[41]["TextSize"] = 16
		R[41]["Parent"] = R[40]
		R[42] = {}
		R[43] = {}
		R[43]["Text"] = "رقصت 1"
		-- fallthrough -> 973
	end
	-- [973] OP_263 (44, "UDim2", nil) consumes=7
	do
		R[44] = UP["UDim2"]
		R[44] = R[44]["new"]
		R[45] = 0.1
		R[46] = 0
		R[47] = 0.13
		R[48] = 0
		R[44] = R[44](UNPACKREG(R, 45, 48))
		-- fallthrough -> 980
	end
	-- [980] OP_30 (43, "Position", 44) consumes=1
	do
		R[43]["Position"] = R[44]
		-- fallthrough -> 981
	end
	-- [981] OP_143 (43, "AnimationId", "rbxassetid://17381912171") consumes=7
	do
		R[43]["AnimationId"] = "rbxassetid://17381912171"
		R[44] = {}
		R[44]["Text"] = "رقصت 2"
		R[45] = UP["UDim2"]
		R[45] = R[45]["new"]
		R[46] = 0.1
		R[47] = 0
		-- fallthrough -> 988
	end
	-- [988] OP_16 (48, 0.33, nil) consumes=2
	do
		R[48] = 0.33
		R[49] = 0
		-- fallthrough -> 990
	end
	-- [990] OP_107 (45, 49, 2) consumes=1
	do
		R[45] = R[45](UNPACKREG(R, 46, 49))
		-- fallthrough -> 991
	end
	-- [991] OP_30 (44, "Position", 45) consumes=1
	do
		R[44]["Position"] = R[45]
		-- fallthrough -> 992
	end
	-- [992] OP_143 (44, "AnimationId", "rbxassetid://18396187889") consumes=7
	do
		R[44]["AnimationId"] = "rbxassetid://18396187889"
		R[45] = {}
		R[45]["Text"] = "رقصت 3"
		R[46] = UP["UDim2"]
		R[46] = R[46]["new"]
		R[47] = 0.1
		R[48] = 0
		-- fallthrough -> 999
	end
	-- [999] OP_16 (49, 0.53, nil) consumes=2
	do
		R[49] = 0.53
		R[50] = 0
		-- fallthrough -> 1001
	end
	-- [1001] OP_107 (46, 50, 2) consumes=1
	do
		R[46] = R[46](UNPACKREG(R, 47, 50))
		-- fallthrough -> 1002
	end
	-- [1002] OP_30 (45, "Position", 46) consumes=1
	do
		R[45]["Position"] = R[46]
		-- fallthrough -> 1003
	end
	-- [1003] OP_85 (45, "AnimationId", "rbxassetid://80909423274891") consumes=1
	do
		R[45]["AnimationId"] = "rbxassetid://80909423274891"
		-- fallthrough -> 1004
	end
	-- [1004] OP_143 (45, "Duration", 2) consumes=7
	do
		R[45]["Duration"] = 2
		R[46] = {}
		R[46]["Text"] = "جلخ"
		R[47] = UP["UDim2"]
		R[47] = R[47]["new"]
		R[48] = 0.1
		R[49] = 0
		-- fallthrough -> 1011
	end
	-- [1011] OP_16 (50, 0.73, nil) consumes=2
	do
		R[50] = 0.73
		R[51] = 0
		-- fallthrough -> 1013
	end
	-- [1013] OP_107 (47, 51, 2) consumes=1
	do
		R[47] = R[47](UNPACKREG(R, 48, 51))
		-- fallthrough -> 1014
	end
	-- [1014] OP_30 (46, "Position", 47) consumes=1
	do
		R[46]["Position"] = R[47]
		-- fallthrough -> 1015
	end
	-- [1015] OP_85 (46, "Script", "loadstring(game:HttpGet('https://gist.githubusercontent.com/amroffaads/63bb24fa62f252950917a9e3deddc2e9/raw/4493307b0620e6d3f6221b2014f3d1949dea1d8a/%25D8%25AC%25D9%2584%25D8%25AE'))()") consumes=1
	do
		R[46]["Script"] =
			"loadstring(game:HttpGet('https://gist.githubusercontent.com/amroffaads/63bb24fa62f252950917a9e3deddc2e9/raw/4493307b0620e6d3f6221b2014f3d1949dea1d8a/%25D8%25AC%25D9%2584%25D8%25AE'))()"
		-- fallthrough -> 1016
	end
	-- [1016] OP_21 (42, 46, 1) consumes=1
	do
		S.kUqtKEKt(R[42], R[43])
		S.kUqtKEKt(R[42], R[44])
		S.kUqtKEKt(R[42], R[45])
		S.kUqtKEKt(R[42], R[46])
		-- fallthrough -> 1017
	end
	-- [1017] OP_246 (43, "ipairs", nil) consumes=1
	do
		R[43] = UP["ipairs"]
		-- fallthrough -> 1018
	end
	-- [1018] OP_63 (44, 42, 0) consumes=3
	do
		R[44] = R[42]
		R[43] = R[43](R[44])
		R[44] = nil
		R[45] = nil
		pc = 1073
		pc = 1074
		-- fallthrough -> 1021
	end
	-- [1021] OP_246 (48, "Instance", nil) consumes=1
	do
		R[48] = UP["Instance"]
		-- fallthrough -> 1022
	end
	-- [1022] OP_248 (48, 48, "new") consumes=7
	do
		R[48] = R[48]["new"]
		R[49] = "TextButton"
		R[48] = R[48](R[49])
		R[49] = UP["UDim2"]
		R[49] = R[49]["new"]
		R[50] = 0.8
		R[51] = 0
		-- fallthrough -> 1029
	end
	-- [1029] OP_16 (52, 0.1, nil) consumes=2
	do
		R[52] = 0.1
		R[53] = 0
		-- fallthrough -> 1031
	end
	-- [1031] OP_218 (49, 53, 2) consumes=5
	do
		R[49] = R[49](UNPACKREG(R, 50, 53))
		R[48]["Size"] = R[49]
		R[49] = R[47]["Position"]
		R[48]["Position"] = R[49]
		R[49] = R[47]["Text"]
		-- fallthrough -> 1036
	end
	-- [1036] OP_345 (48, "Text", 49) consumes=7
	do
		R[48]["Text"] = R[49]
		R[49] = UP["Color3"]
		R[49] = R[49]["fromRGB"]
		R[50] = 255
		R[51] = 215
		R[52] = 0
		R[49] = R[49](UNPACKREG(R, 50, 52))
		-- fallthrough -> 1043
	end
	-- [1043] OP_345 (48, "BackgroundColor3", 49) consumes=7
	do
		R[48]["BackgroundColor3"] = R[49]
		R[49] = UP["Color3"]
		R[49] = R[49]["new"]
		R[50] = 0
		R[51] = 0
		R[52] = 0
		R[49] = R[49](UNPACKREG(R, 50, 52))
		-- fallthrough -> 1050
	end
	-- [1050] OP_96 (48, "TextColor3", 49) consumes=7
	do
		R[48]["TextColor3"] = R[49]
		R[49] = UP["Enum"]
		R[49] = R[49]["Font"]
		R[49] = R[49]["SourceSansBold"]
		R[48]["Font"] = R[49]
		R[48]["TextSize"] = 18
		R[48]["Parent"] = R[40]
		-- fallthrough -> 1057
	end
	-- [1057] OP_124 (49, "Instance", nil) consumes=7
	do
		R[49] = UP["Instance"]
		R[49] = R[49]["new"]
		R[50] = "UICorner"
		R[49] = R[49](R[50])
		R[50] = UP["UDim"]
		R[50] = R[50]["new"]
		R[51] = 0.2
		-- fallthrough -> 1064
	end
	-- [1064] OP_249 (52, 0, nil) consumes=1
	do
		R[52] = 0
		-- fallthrough -> 1065
	end
	-- [1065] OP_107 (50, 52, 2) consumes=1
	do
		R[50] = R[50](UNPACKREG(R, 51, 52))
		-- fallthrough -> 1066
	end
	-- [1066] OP_30 (49, "CornerRadius", 50) consumes=1
	do
		R[49]["CornerRadius"] = R[50]
		-- fallthrough -> 1067
	end
	-- [1067] OP_30 (49, "Parent", 48) consumes=1
	do
		R[49]["Parent"] = R[48]
		-- fallthrough -> 1068
	end
	-- [1068] OP_304 (50, 48, "MouseButton1Click") consumes=2
	do
		R[50] = R[48]["MouseButton1Click"]
		R[51] = R[50]
		R[50] = R[50]["Connect"]
		-- fallthrough -> 1070
	end
	-- [1070] OP_73 (52, 3, 1) consumes=2
	do
		-- unresolved VM temporary: nil = {R, 47}
		c[(#c + 1)] = {}
		R[52] = CLOSURE(PROTO[3], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 1072
	end
	-- [1072] OP_262 (50, 52, 1) consumes=1
	do
		R[50](UNPACKREG(R, 51, 52))
		-- fallthrough -> 1073
	end
	-- [1073] OP_44 (46, 0, 0) consumes=1
	do
		for d = 1, #c, 1 do
			for l = 0, #c[d], 1 do
				if (c[d][l][1] == R) and (c[d][l][2] >= 46) then
					({})[c[d][l][2]] = c[d][l][1][c[d][l][2]]
					c[d][l][1] = {}
				end
			end
		end
		-- fallthrough -> 1074
	end
	-- [1074] OP_175 (43, 1020, 2) consumes=1
	do
		R[46] = R[43](R[44], R[45])
		R[47] = nil
		if R[43](R[44], R[45]) then
			R[45] = R[43](R[44], R[45])
			pc = 1020
		else
		end
		-- fallthrough -> 1075
	end
	-- [1075] OP_93 (0, 1020, nil) consumes=1
	do
		pc = 1020
		pc = 1021
		-- fallthrough -> 1076
	end
	-- [1076] OP_30 (13, "رقصات", 40) consumes=1
	do
		R[13]["رقصات"] = R[40]
		-- fallthrough -> 1077
	end
	-- [1077] OP_124 (43, "Instance", nil) consumes=7
	do
		R[43] = UP["Instance"]
		R[43] = R[43]["new"]
		R[44] = "Frame"
		R[43] = R[43](R[44])
		R[44] = UP["UDim2"]
		R[44] = R[44]["new"]
		R[45] = 1
		-- fallthrough -> 1084
	end
	-- [1084] OP_72 (46, 0, nil) consumes=7
	do
		R[46] = 0
		R[47] = 1
		R[48] = 0
		R[44] = R[44](UNPACKREG(R, 45, 48))
		R[43]["Size"] = R[44]
		R[44] = UP["UDim2"]
		R[44] = R[44]["new"]
		-- fallthrough -> 1091
	end
	-- [1091] OP_76 (45, 0, nil) consumes=7
	do
		R[45] = 0
		R[46] = 0
		R[47] = 0
		R[48] = 0
		R[44] = R[44](UNPACKREG(R, 45, 48))
		R[43]["Position"] = R[44]
		R[44] = UP["Color3"]
		-- fallthrough -> 1098
	end
	-- [1098] OP_148 (44, 44, "fromRGB") consumes=1
	do
		R[44] = R[44]["fromRGB"]
		-- fallthrough -> 1099
	end
	-- [1099] OP_16 (45, 30, nil) consumes=2
	do
		R[45] = 30
		R[46] = 30
		-- fallthrough -> 1101
	end
	-- [1101] OP_249 (47, 30, nil) consumes=1
	do
		R[47] = 30
		-- fallthrough -> 1102
	end
	-- [1102] OP_107 (44, 47, 2) consumes=1
	do
		R[44] = R[44](UNPACKREG(R, 45, 47))
		-- fallthrough -> 1103
	end
	-- [1103] OP_30 (43, "BackgroundColor3", 44) consumes=1
	do
		R[43]["BackgroundColor3"] = R[44]
		-- fallthrough -> 1104
	end
	-- [1104] OP_85 (43, "Visible", false) consumes=1
	do
		R[43]["Visible"] = false
		-- fallthrough -> 1105
	end
	-- [1105] OP_260 (43, "Parent", 11) consumes=7
	do
		R[43]["Parent"] = R[11]
		R[44] = UP["Instance"]
		R[44] = R[44]["new"]
		R[45] = "Frame"
		R[44] = R[44](R[45])
		R[45] = UP["UDim2"]
		R[45] = R[45]["new"]
		-- fallthrough -> 1112
	end
	-- [1112] OP_76 (46, 1, nil) consumes=7
	do
		R[46] = 1
		R[47] = 0
		R[48] = 1
		R[49] = 0
		R[45] = R[45](UNPACKREG(R, 46, 49))
		R[44]["Size"] = R[45]
		R[45] = UP["UDim2"]
		-- fallthrough -> 1119
	end
	-- [1119] OP_75 (45, 45, "new") consumes=7
	do
		R[45] = R[45]["new"]
		R[46] = 0
		R[47] = 0
		R[48] = 0
		R[49] = 0
		R[45] = R[45](UNPACKREG(R, 46, 49))
		R[44]["Position"] = R[45]
		-- fallthrough -> 1126
	end
	-- [1126] OP_252 (45, "Color3", nil) consumes=7
	do
		R[45] = UP["Color3"]
		R[45] = R[45]["fromRGB"]
		R[46] = 30
		R[47] = 30
		R[48] = 30
		R[45] = R[45](UNPACKREG(R, 46, 48))
		R[44]["BackgroundColor3"] = R[45]
		-- fallthrough -> 1133
	end
	-- [1133] OP_260 (44, "Parent", 43) consumes=7
	do
		R[44]["Parent"] = R[43]
		R[45] = UP["Instance"]
		R[45] = R[45]["new"]
		R[46] = "UICorner"
		R[45] = R[45](R[46])
		R[46] = UP["UDim"]
		R[46] = R[46]["new"]
		-- fallthrough -> 1140
	end
	-- [1140] OP_132 (47, 0.05, nil) consumes=7
	do
		R[47] = 0.05
		R[48] = 0
		R[46] = R[46](UNPACKREG(R, 47, 48))
		R[45]["CornerRadius"] = R[46]
		R[45]["Parent"] = R[44]
		R[46] = UP["Instance"]
		R[46] = R[46]["new"]
		-- fallthrough -> 1147
	end
	-- [1147] OP_294 (47, "TextBox", nil) consumes=7
	do
		R[47] = "TextBox"
		R[46] = R[46](R[47])
		R[47] = UP["UDim2"]
		R[47] = R[47]["new"]
		R[48] = 0.8
		R[49] = 0
		R[50] = 0.2
		-- fallthrough -> 1154
	end
	-- [1154] OP_307 (51, 0, nil) consumes=7
	do
		R[51] = 0
		R[47] = R[47](UNPACKREG(R, 48, 51))
		R[46]["Size"] = R[47]
		R[47] = UP["UDim2"]
		R[47] = R[47]["new"]
		R[48] = 0.1
		R[49] = 0
		-- fallthrough -> 1161
	end
	-- [1161] OP_16 (50, 0.1, nil) consumes=2
	do
		R[50] = 0.1
		R[51] = 0
		-- fallthrough -> 1163
	end
	-- [1163] OP_128 (47, 51, 2) consumes=7
	do
		R[47] = R[47](UNPACKREG(R, 48, 51))
		R[46]["Position"] = R[47]
		R[47] = UP["Color3"]
		R[47] = R[47]["fromRGB"]
		R[48] = 50
		R[49] = 50
		R[50] = 50
		-- fallthrough -> 1170
	end
	-- [1170] OP_107 (47, 50, 2) consumes=1
	do
		R[47] = R[47](UNPACKREG(R, 48, 50))
		-- fallthrough -> 1171
	end
	-- [1171] OP_30 (46, "BackgroundColor3", 47) consumes=1
	do
		R[46]["BackgroundColor3"] = R[47]
		-- fallthrough -> 1172
	end
	-- [1172] OP_85 (46, "Text", "اكتب رسالتك هنا...") consumes=1
	do
		R[46]["Text"] = "اكتب رسالتك هنا..."
		-- fallthrough -> 1173
	end
	-- [1173] OP_252 (47, "Color3", nil) consumes=7
	do
		R[47] = UP["Color3"]
		R[47] = R[47]["new"]
		R[48] = 1
		R[49] = 1
		R[50] = 1
		R[47] = R[47](UNPACKREG(R, 48, 50))
		R[46]["TextColor3"] = R[47]
		-- fallthrough -> 1180
	end
	-- [1180] OP_66 (47, "Enum", nil) consumes=6
	do
		R[47] = UP["Enum"]
		R[47] = R[47]["Font"]
		R[47] = R[47]["SourceSansBold"]
		R[46]["Font"] = R[47]
		R[46]["TextSize"] = 18
		R[46]["ClearTextOnFocus"] = true
		-- fallthrough -> 1186
	end
	-- [1186] OP_260 (46, "Parent", 44) consumes=7
	do
		R[46]["Parent"] = R[44]
		R[47] = UP["Instance"]
		R[47] = R[47]["new"]
		R[48] = "TextLabel"
		R[47] = R[47](R[48])
		R[48] = UP["UDim2"]
		R[48] = R[48]["new"]
		-- fallthrough -> 1193
	end
	-- [1193] OP_76 (49, 0.8, nil) consumes=7
	do
		R[49] = 0.8
		R[50] = 0
		R[51] = 0.1
		R[52] = 0
		R[48] = R[48](UNPACKREG(R, 49, 52))
		R[47]["Size"] = R[48]
		R[48] = UP["UDim2"]
		-- fallthrough -> 1200
	end
	-- [1200] OP_75 (48, 48, "new") consumes=7
	do
		R[48] = R[48]["new"]
		R[49] = 0.1
		R[50] = 0
		R[51] = 0.001
		R[52] = 0
		R[48] = R[48](UNPACKREG(R, 49, 52))
		R[47]["Position"] = R[48]
		-- fallthrough -> 1207
	end
	-- [1207] OP_85 (47, "BackgroundTransparency", 1) consumes=1
	do
		R[47]["BackgroundTransparency"] = 1
		-- fallthrough -> 1208
	end
	-- [1208] OP_85 (47, "Text", "اقرا التعليمات قبل الستخدام ارسال رساله طويله") consumes=1
	do
		R[47]["Text"] = "اقرا التعليمات قبل الستخدام ارسال رساله طويله"
		-- fallthrough -> 1209
	end
	-- [1209] OP_252 (48, "Color3", nil) consumes=7
	do
		R[48] = UP["Color3"]
		R[48] = R[48]["new"]
		R[49] = 0
		R[50] = 0
		R[51] = 0
		R[48] = R[48](UNPACKREG(R, 49, 51))
		R[47]["TextColor3"] = R[48]
		-- fallthrough -> 1216
	end
	-- [1216] OP_246 (48, "Enum", nil) consumes=1
	do
		R[48] = UP["Enum"]
		-- fallthrough -> 1217
	end
	-- [1217] OP_148 (48, 48, "Font") consumes=1
	do
		R[48] = R[48]["Font"]
		-- fallthrough -> 1218
	end
	-- [1218] OP_88 (48, 48, "SourceSans") consumes=7
	do
		R[48] = R[48]["SourceSans"]
		R[47]["Font"] = R[48]
		R[47]["TextSize"] = 16
		R[47]["Parent"] = R[44]
		R[48] = UP["Instance"]
		R[48] = R[48]["new"]
		R[49] = "UICorner"
		-- fallthrough -> 1225
	end
	-- [1225] OP_202 (48, 2, 2) consumes=1
	do
		R[48] = R[48](R[49])
		-- fallthrough -> 1226
	end
	-- [1226] OP_184 (49, "UDim", nil) consumes=7
	do
		R[49] = UP["UDim"]
		R[49] = R[49]["new"]
		R[50] = 0.1
		R[51] = 0
		R[49] = R[49](UNPACKREG(R, 50, 51))
		R[48]["CornerRadius"] = R[49]
		R[48]["Parent"] = R[46]
		-- fallthrough -> 1233
	end
	-- [1233] OP_124 (49, "Instance", nil) consumes=7
	do
		R[49] = UP["Instance"]
		R[49] = R[49]["new"]
		R[50] = "Frame"
		R[49] = R[49](R[50])
		R[50] = UP["UDim2"]
		R[50] = R[50]["new"]
		R[51] = 0.8
		-- fallthrough -> 1240
	end
	-- [1240] OP_72 (52, 0, nil) consumes=7
	do
		R[52] = 0
		R[53] = 0.1
		R[54] = 0
		R[50] = R[50](UNPACKREG(R, 51, 54))
		R[49]["Size"] = R[50]
		R[50] = UP["UDim2"]
		R[50] = R[50]["new"]
		-- fallthrough -> 1247
	end
	-- [1247] OP_118 (51, 0.1, nil) consumes=7
	do
		R[51] = 0.1
		R[52] = 0
		R[53] = 0.3
		R[54] = 0
		R[50] = R[50](UNPACKREG(R, 51, 54))
		R[49]["Position"] = R[50]
		R[49]["BackgroundTransparency"] = 1
		-- fallthrough -> 1254
	end
	-- [1254] OP_260 (49, "Parent", 44) consumes=7
	do
		R[49]["Parent"] = R[44]
		R[50] = UP["Instance"]
		R[50] = R[50]["new"]
		R[51] = "TextButton"
		R[50] = R[50](R[51])
		R[51] = UP["UDim2"]
		R[51] = R[51]["new"]
		-- fallthrough -> 1261
	end
	-- [1261] OP_76 (52, 0.38, nil) consumes=7
	do
		R[52] = 0.38
		R[53] = 0
		R[54] = 1
		R[55] = 0
		R[51] = R[51](UNPACKREG(R, 52, 55))
		R[50]["Size"] = R[51]
		R[51] = UP["UDim2"]
		-- fallthrough -> 1268
	end
	-- [1268] OP_75 (51, 51, "new") consumes=7
	do
		R[51] = R[51]["new"]
		R[52] = 0
		R[53] = 0
		R[54] = 0
		R[55] = 0
		R[51] = R[51](UNPACKREG(R, 52, 55))
		R[50]["Position"] = R[51]
		-- fallthrough -> 1275
	end
	-- [1275] OP_85 (50, "Text", "ارسال رساله طويله") consumes=1
	do
		R[50]["Text"] = "ارسال رساله طويله"
		-- fallthrough -> 1276
	end
	-- [1276] OP_252 (51, "Color3", nil) consumes=7
	do
		R[51] = UP["Color3"]
		R[51] = R[51]["fromRGB"]
		R[52] = 255
		R[53] = 215
		R[54] = 0
		R[51] = R[51](UNPACKREG(R, 52, 54))
		R[50]["BackgroundColor3"] = R[51]
		-- fallthrough -> 1283
	end
	-- [1283] OP_252 (51, "Color3", nil) consumes=7
	do
		R[51] = UP["Color3"]
		R[51] = R[51]["new"]
		R[52] = 0
		R[53] = 0
		R[54] = 0
		R[51] = R[51](UNPACKREG(R, 52, 54))
		R[50]["TextColor3"] = R[51]
		-- fallthrough -> 1290
	end
	-- [1290] OP_246 (51, "Enum", nil) consumes=1
	do
		R[51] = UP["Enum"]
		-- fallthrough -> 1291
	end
	-- [1291] OP_148 (51, 51, "Font") consumes=1
	do
		R[51] = R[51]["Font"]
		-- fallthrough -> 1292
	end
	-- [1292] OP_88 (51, 51, "SourceSansBold") consumes=7
	do
		R[51] = R[51]["SourceSansBold"]
		R[50]["Font"] = R[51]
		R[50]["TextSize"] = 18
		R[50]["Parent"] = R[49]
		R[51] = UP["Instance"]
		R[51] = R[51]["new"]
		R[52] = "UICorner"
		-- fallthrough -> 1299
	end
	-- [1299] OP_202 (51, 2, 2) consumes=1
	do
		R[51] = R[51](R[52])
		-- fallthrough -> 1300
	end
	-- [1300] OP_184 (52, "UDim", nil) consumes=7
	do
		R[52] = UP["UDim"]
		R[52] = R[52]["new"]
		R[53] = 0.1
		R[54] = 0
		R[52] = R[52](UNPACKREG(R, 53, 54))
		R[51]["CornerRadius"] = R[52]
		R[51]["Parent"] = R[50]
		-- fallthrough -> 1307
	end
	-- [1307] OP_124 (52, "Instance", nil) consumes=7
	do
		R[52] = UP["Instance"]
		R[52] = R[52]["new"]
		R[53] = "TextButton"
		R[52] = R[52](R[53])
		R[53] = UP["UDim2"]
		R[53] = R[53]["new"]
		R[54] = 0.24
		-- fallthrough -> 1314
	end
	-- [1314] OP_72 (55, 0, nil) consumes=7
	do
		R[55] = 0
		R[56] = 1
		R[57] = 0
		R[53] = R[53](UNPACKREG(R, 54, 57))
		R[52]["Size"] = R[53]
		R[53] = UP["UDim2"]
		R[53] = R[53]["new"]
		-- fallthrough -> 1321
	end
	-- [1321] OP_118 (54, 0.39, nil) consumes=7
	do
		R[54] = 0.39
		R[55] = 0
		R[56] = 0
		R[57] = 0
		R[53] = R[53](UNPACKREG(R, 54, 57))
		R[52]["Position"] = R[53]
		R[52]["Text"] = "فلترة"
		-- fallthrough -> 1328
	end
	-- [1328] OP_252 (53, "Color3", nil) consumes=7
	do
		R[53] = UP["Color3"]
		R[53] = R[53]["fromRGB"]
		R[54] = 255
		R[55] = 215
		R[56] = 0
		R[53] = R[53](UNPACKREG(R, 54, 56))
		R[52]["BackgroundColor3"] = R[53]
		-- fallthrough -> 1335
	end
	-- [1335] OP_252 (53, "Color3", nil) consumes=7
	do
		R[53] = UP["Color3"]
		R[53] = R[53]["new"]
		R[54] = 0
		R[55] = 0
		R[56] = 0
		R[53] = R[53](UNPACKREG(R, 54, 56))
		R[52]["TextColor3"] = R[53]
		-- fallthrough -> 1342
	end
	-- [1342] OP_246 (53, "Enum", nil) consumes=1
	do
		R[53] = UP["Enum"]
		-- fallthrough -> 1343
	end
	-- [1343] OP_148 (53, 53, "Font") consumes=1
	do
		R[53] = R[53]["Font"]
		-- fallthrough -> 1344
	end
	-- [1344] OP_88 (53, 53, "SourceSansBold") consumes=7
	do
		R[53] = R[53]["SourceSansBold"]
		R[52]["Font"] = R[53]
		R[52]["TextSize"] = 18
		R[52]["Parent"] = R[49]
		R[53] = UP["Instance"]
		R[53] = R[53]["new"]
		R[54] = "UICorner"
		-- fallthrough -> 1351
	end
	-- [1351] OP_202 (53, 2, 2) consumes=1
	do
		R[53] = R[53](R[54])
		-- fallthrough -> 1352
	end
	-- [1352] OP_184 (54, "UDim", nil) consumes=7
	do
		R[54] = UP["UDim"]
		R[54] = R[54]["new"]
		R[55] = 0.1
		R[56] = 0
		R[54] = R[54](UNPACKREG(R, 55, 56))
		R[53]["CornerRadius"] = R[54]
		R[53]["Parent"] = R[52]
		-- fallthrough -> 1359
	end
	-- [1359] OP_124 (54, "Instance", nil) consumes=7
	do
		R[54] = UP["Instance"]
		R[54] = R[54]["new"]
		R[55] = "TextButton"
		R[54] = R[54](R[55])
		R[55] = UP["UDim2"]
		R[55] = R[55]["new"]
		R[56] = 0.36
		-- fallthrough -> 1366
	end
	-- [1366] OP_72 (57, 0, nil) consumes=7
	do
		R[57] = 0
		R[58] = 1
		R[59] = 0
		R[55] = R[55](UNPACKREG(R, 56, 59))
		R[54]["Size"] = R[55]
		R[55] = UP["UDim2"]
		R[55] = R[55]["new"]
		-- fallthrough -> 1373
	end
	-- [1373] OP_118 (56, 0.64, nil) consumes=7
	do
		R[56] = 0.64
		R[57] = 0
		R[58] = 0
		R[59] = 0
		R[55] = R[55](UNPACKREG(R, 56, 59))
		R[54]["Position"] = R[55]
		R[54]["Text"] = "سبام"
		-- fallthrough -> 1380
	end
	-- [1380] OP_252 (55, "Color3", nil) consumes=7
	do
		R[55] = UP["Color3"]
		R[55] = R[55]["fromRGB"]
		R[56] = 255
		R[57] = 215
		R[58] = 0
		R[55] = R[55](UNPACKREG(R, 56, 58))
		R[54]["BackgroundColor3"] = R[55]
		-- fallthrough -> 1387
	end
	-- [1387] OP_252 (55, "Color3", nil) consumes=7
	do
		R[55] = UP["Color3"]
		R[55] = R[55]["new"]
		R[56] = 0
		R[57] = 0
		R[58] = 0
		R[55] = R[55](UNPACKREG(R, 56, 58))
		R[54]["TextColor3"] = R[55]
		-- fallthrough -> 1394
	end
	-- [1394] OP_246 (55, "Enum", nil) consumes=1
	do
		R[55] = UP["Enum"]
		-- fallthrough -> 1395
	end
	-- [1395] OP_148 (55, 55, "Font") consumes=1
	do
		R[55] = R[55]["Font"]
		-- fallthrough -> 1396
	end
	-- [1396] OP_88 (55, 55, "SourceSansBold") consumes=7
	do
		R[55] = R[55]["SourceSansBold"]
		R[54]["Font"] = R[55]
		R[54]["TextSize"] = 18
		R[54]["Parent"] = R[49]
		R[55] = UP["Instance"]
		R[55] = R[55]["new"]
		R[56] = "UICorner"
		-- fallthrough -> 1403
	end
	-- [1403] OP_202 (55, 2, 2) consumes=1
	do
		R[55] = R[55](R[56])
		-- fallthrough -> 1404
	end
	-- [1404] OP_184 (56, "UDim", nil) consumes=7
	do
		R[56] = UP["UDim"]
		R[56] = R[56]["new"]
		R[57] = 0.1
		R[58] = 0
		R[56] = R[56](UNPACKREG(R, 57, 58))
		R[55]["CornerRadius"] = R[56]
		R[55]["Parent"] = R[54]
		-- fallthrough -> 1411
	end
	-- [1411] OP_124 (56, "Instance", nil) consumes=7
	do
		R[56] = UP["Instance"]
		R[56] = R[56]["new"]
		R[57] = "TextButton"
		R[56] = R[56](R[57])
		R[57] = UP["UDim2"]
		R[57] = R[57]["new"]
		R[58] = 1
		-- fallthrough -> 1418
	end
	-- [1418] OP_72 (59, 1, nil) consumes=7
	do
		R[59] = 1
		R[60] = 1
		R[61] = 0
		R[57] = R[57](UNPACKREG(R, 58, 61))
		R[56]["Size"] = R[57]
		R[57] = UP["UDim2"]
		R[57] = R[57]["new"]
		-- fallthrough -> 1425
	end
	-- [1425] OP_118 (58, -0.003, nil) consumes=7
	do
		R[58] = -0.003
		R[59] = 1
		R[60] = 1
		R[61] = 1
		R[57] = R[57](UNPACKREG(R, 58, 61))
		R[56]["Position"] = R[57]
		R[56]["Text"] = "30% إرسال ما يشفر"
		-- fallthrough -> 1432
	end
	-- [1432] OP_252 (57, "Color3", nil) consumes=7
	do
		R[57] = UP["Color3"]
		R[57] = R[57]["fromRGB"]
		R[58] = 255
		R[59] = 215
		R[60] = 0
		R[57] = R[57](UNPACKREG(R, 58, 60))
		R[56]["BackgroundColor3"] = R[57]
		-- fallthrough -> 1439
	end
	-- [1439] OP_252 (57, "Color3", nil) consumes=7
	do
		R[57] = UP["Color3"]
		R[57] = R[57]["new"]
		R[58] = 0
		R[59] = 0
		R[60] = 0
		R[57] = R[57](UNPACKREG(R, 58, 60))
		R[56]["TextColor3"] = R[57]
		-- fallthrough -> 1446
	end
	-- [1446] OP_246 (57, "Enum", nil) consumes=1
	do
		R[57] = UP["Enum"]
		-- fallthrough -> 1447
	end
	-- [1447] OP_148 (57, 57, "Font") consumes=1
	do
		R[57] = R[57]["Font"]
		-- fallthrough -> 1448
	end
	-- [1448] OP_88 (57, 57, "SourceSansBold") consumes=7
	do
		R[57] = R[57]["SourceSansBold"]
		R[56]["Font"] = R[57]
		R[56]["TextSize"] = 18
		R[56]["Parent"] = R[49]
		R[57] = UP["Instance"]
		R[57] = R[57]["new"]
		R[58] = "UICorner"
		-- fallthrough -> 1455
	end
	-- [1455] OP_202 (57, 2, 2) consumes=1
	do
		R[57] = R[57](R[58])
		-- fallthrough -> 1456
	end
	-- [1456] OP_184 (58, "UDim", nil) consumes=7
	do
		R[58] = UP["UDim"]
		R[58] = R[58]["new"]
		R[59] = 0.1
		R[60] = 0
		R[58] = R[58](UNPACKREG(R, 59, 60))
		R[57]["CornerRadius"] = R[58]
		R[57]["Parent"] = R[56]
		-- fallthrough -> 1463
	end
	-- [1463] OP_278 (58, "Instance", nil) consumes=7
	do
		R[58] = UP["Instance"]
		R[58] = R[58]["new"]
		R[59] = "TextButton"
		R[58] = R[58](R[59])
		R[58]["Name"] = "PrivateSpamButton"
		R[59] = UP["UDim2"]
		R[59] = R[59]["new"]
		-- fallthrough -> 1470
	end
	-- [1470] OP_76 (60, 1, nil) consumes=7
	do
		R[60] = 1
		R[61] = 0
		R[62] = 1
		R[63] = 0
		R[59] = R[59](UNPACKREG(R, 60, 63))
		R[58]["Size"] = R[59]
		R[59] = UP["UDim2"]
		-- fallthrough -> 1477
	end
	-- [1477] OP_75 (59, 59, "new") consumes=7
	do
		R[59] = R[59]["new"]
		R[60] = 0
		R[61] = 0
		R[62] = 3
		R[63] = 0
		R[59] = R[59](UNPACKREG(R, 60, 63))
		R[58]["Position"] = R[59]
		-- fallthrough -> 1484
	end
	-- [1484] OP_85 (58, "Text", "نظام كاشف الرسائل الخاصه") consumes=1
	do
		R[58]["Text"] = "نظام كاشف الرسائل الخاصه"
		-- fallthrough -> 1485
	end
	-- [1485] OP_252 (59, "Color3", nil) consumes=7
	do
		R[59] = UP["Color3"]
		R[59] = R[59]["fromRGB"]
		R[60] = 255
		R[61] = 215
		R[62] = 0
		R[59] = R[59](UNPACKREG(R, 60, 62))
		R[58]["BackgroundColor3"] = R[59]
		-- fallthrough -> 1492
	end
	-- [1492] OP_252 (59, "Color3", nil) consumes=7
	do
		R[59] = UP["Color3"]
		R[59] = R[59]["new"]
		R[60] = 0
		R[61] = 0
		R[62] = 0
		R[59] = R[59](UNPACKREG(R, 60, 62))
		R[58]["TextColor3"] = R[59]
		-- fallthrough -> 1499
	end
	-- [1499] OP_246 (59, "Enum", nil) consumes=1
	do
		R[59] = UP["Enum"]
		-- fallthrough -> 1500
	end
	-- [1500] OP_148 (59, 59, "Font") consumes=1
	do
		R[59] = R[59]["Font"]
		-- fallthrough -> 1501
	end
	-- [1501] OP_88 (59, 59, "SourceSansBold") consumes=7
	do
		R[59] = R[59]["SourceSansBold"]
		R[58]["Font"] = R[59]
		R[58]["TextSize"] = 18
		R[58]["Parent"] = R[49]
		R[59] = UP["Instance"]
		R[59] = R[59]["new"]
		R[60] = "TextButton"
		-- fallthrough -> 1508
	end
	-- [1508] OP_202 (59, 2, 2) consumes=1
	do
		R[59] = R[59](R[60])
		-- fallthrough -> 1509
	end
	-- [1509] OP_85 (59, "Name", "MessageDetectorButton") consumes=1
	do
		R[59]["Name"] = "MessageDetectorButton"
		-- fallthrough -> 1510
	end
	-- [1510] OP_263 (60, "UDim2", nil) consumes=7
	do
		R[60] = UP["UDim2"]
		R[60] = R[60]["new"]
		R[61] = 1
		R[62] = 0
		R[63] = 1
		R[64] = 0
		R[60] = R[60](UNPACKREG(R, 61, 64))
		-- fallthrough -> 1517
	end
	-- [1517] OP_283 (59, "Size", 60) consumes=7
	do
		R[59]["Size"] = R[60]
		R[60] = UP["UDim2"]
		R[60] = R[60]["new"]
		R[61] = 0
		R[62] = 0
		R[63] = 4.1
		R[64] = 0
		-- fallthrough -> 1524
	end
	-- [1524] OP_107 (60, 64, 2) consumes=1
	do
		R[60] = R[60](UNPACKREG(R, 61, 64))
		-- fallthrough -> 1525
	end
	-- [1525] OP_30 (59, "Position", 60) consumes=1
	do
		R[59]["Position"] = R[60]
		-- fallthrough -> 1526
	end
	-- [1526] OP_85 (59, "Text", "نظام سبام خاص") consumes=1
	do
		R[59]["Text"] = "نظام سبام خاص"
		-- fallthrough -> 1527
	end
	-- [1527] OP_252 (60, "Color3", nil) consumes=7
	do
		R[60] = UP["Color3"]
		R[60] = R[60]["fromRGB"]
		R[61] = 255
		R[62] = 215
		R[63] = 0
		R[60] = R[60](UNPACKREG(R, 61, 63))
		R[59]["BackgroundColor3"] = R[60]
		-- fallthrough -> 1534
	end
	-- [1534] OP_252 (60, "Color3", nil) consumes=7
	do
		R[60] = UP["Color3"]
		R[60] = R[60]["new"]
		R[61] = 0
		R[62] = 0
		R[63] = 0
		R[60] = R[60](UNPACKREG(R, 61, 63))
		R[59]["TextColor3"] = R[60]
		-- fallthrough -> 1541
	end
	-- [1541] OP_198 (60, "Enum", nil) consumes=6
	do
		R[60] = UP["Enum"]
		R[60] = R[60]["Font"]
		R[60] = R[60]["SourceSansBold"]
		R[59]["Font"] = R[60]
		R[59]["TextSize"] = 18
		R[59]["Parent"] = R[49]
		-- fallthrough -> 1547
	end
	-- [1547] OP_15 (60, "ipairs", nil) consumes=5
	do
		R[60] = UP["ipairs"]
		R[62] = R[49]
		R[61] = R[49]["GetChildren"]
		R[60] = R[60](UNPACKREG(R, 61, 60))
		R[61] = nil
		R[62] = nil
		pc = 1567
		pc = 1568
		-- fallthrough -> 1552
	end
	-- [1552] OP_270 (65, 64, "IsA") consumes=1
	do
		R[66] = R[64]
		R[65] = R[64]["IsA"]
		-- fallthrough -> 1553
	end
	-- [1553] OP_249 (67, "TextButton", nil) consumes=1
	do
		R[67] = "TextButton"
		-- fallthrough -> 1554
	end
	-- [1554] OP_107 (65, 67, 2) consumes=1
	do
		R[65] = R[65](UNPACKREG(R, 66, 67))
		-- fallthrough -> 1555
	end
	-- [1555] OP_84 (65, 1567, 0) consumes=1
	do
		if R[65] then
		else
			pc = 1567
		end
		-- fallthrough -> 1556
	end
	-- [1556] OP_93 (0, 1567, nil) consumes=1
	do
		pc = 1567
		pc = 1568
		-- fallthrough -> 1557
	end
	-- [1557] OP_246 (65, "Instance", nil) consumes=1
	do
		R[65] = UP["Instance"]
		-- fallthrough -> 1558
	end
	-- [1558] OP_248 (65, 65, "new") consumes=7
	do
		R[65] = R[65]["new"]
		R[66] = "UICorner"
		R[65] = R[65](R[66])
		R[66] = UP["UDim"]
		R[66] = R[66]["new"]
		R[67] = 0.1
		R[68] = 0
		-- fallthrough -> 1565
	end
	-- [1565] OP_107 (66, 68, 2) consumes=1
	do
		R[66] = R[66](UNPACKREG(R, 67, 68))
		-- fallthrough -> 1566
	end
	-- [1566] OP_30 (65, "CornerRadius", 66) consumes=1
	do
		R[65]["CornerRadius"] = R[66]
		-- fallthrough -> 1567
	end
	-- [1567] OP_30 (65, "Parent", 64) consumes=1
	do
		R[65]["Parent"] = R[64]
		-- fallthrough -> 1568
	end
	-- [1568] OP_175 (60, 1551, 2) consumes=1
	do
		R[63] = R[60](R[61], R[62])
		R[64] = nil
		if R[60](R[61], R[62]) then
			R[62] = R[60](R[61], R[62])
			pc = 1551
		else
		end
		-- fallthrough -> 1569
	end
	-- [1569] OP_93 (0, 1551, nil) consumes=1
	do
		pc = 1551
		pc = 1552
		-- fallthrough -> 1570
	end
	-- [1570] OP_246 (60, "game", nil) consumes=1
	do
		R[60] = UP["game"]
		-- fallthrough -> 1571
	end
	-- [1571] OP_215 (60, 60, "GetService") consumes=7
	do
		R[61] = R[60]
		R[60] = R[60]["GetService"]
		R[62] = "TextChatService"
		R[60] = R[60](UNPACKREG(R, 61, 62))
		R[61] = UP["game"]
		R[62] = R[61]
		R[61] = R[61]["GetService"]
		R[63] = "ReplicatedStorage"
		R[61] = R[61](UNPACKREG(R, 62, 63))
		-- fallthrough -> 1578
	end
	-- [1578] OP_73 (62, 51, 2) consumes=3
	do
		-- unresolved VM temporary: nil = {R, 60}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 61}
		c[(#c + 1)] = {}
		R[62] = CLOSURE(PROTO[51], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 1581
	end
	-- [1581] OP_73 (63, 53, 1) consumes=2
	do
		-- unresolved VM temporary: nil = {R, 62}
		c[(#c + 1)] = {}
		R[63] = CLOSURE(PROTO[53], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 1583
	end
	-- [1583] OP_304 (64, 50, "MouseButton1Click") consumes=2
	do
		R[64] = R[50]["MouseButton1Click"]
		R[65] = R[64]
		R[64] = R[64]["Connect"]
		-- fallthrough -> 1585
	end
	-- [1585] OP_73 (66, 63, 2) consumes=3
	do
		-- unresolved VM temporary: nil = {R, 46}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 63}
		c[(#c + 1)] = {}
		R[66] = CLOSURE(PROTO[63], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 1588
	end
	-- [1588] OP_191 (64, 66, 1) consumes=3
	do
		R[64](UNPACKREG(R, 65, 66))
		R[64] = R[52]["MouseButton1Click"]
		R[65] = R[64]
		R[64] = R[64]["Connect"]
		-- fallthrough -> 1591
	end
	-- [1591] OP_73 (66, 55, 1) consumes=2
	do
		-- unresolved VM temporary: nil = {R, 62}
		c[(#c + 1)] = {}
		R[66] = CLOSURE(PROTO[55], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 1593
	end
	-- [1593] OP_262 (64, 66, 1) consumes=1
	do
		R[64](UNPACKREG(R, 65, 66))
		-- fallthrough -> 1594
	end
	-- [1594] OP_268 (64, 0, 0) consumes=1
	do
		R[64] = false
		-- fallthrough -> 1595
	end
	-- [1595] OP_304 (65, 54, "MouseButton1Click") consumes=2
	do
		R[65] = R[54]["MouseButton1Click"]
		R[66] = R[65]
		R[65] = R[65]["Connect"]
		-- fallthrough -> 1597
	end
	-- [1597] OP_73 (67, 40, 3) consumes=4
	do
		-- unresolved VM temporary: nil = {R, 64}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 54}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 63}
		c[(#c + 1)] = {}
		R[67] = CLOSURE(PROTO[40], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 1601
	end
	-- [1601] OP_262 (65, 67, 1) consumes=1
	do
		R[65](UNPACKREG(R, 66, 67))
		-- fallthrough -> 1602
	end
	-- [1602] OP_296 (65, 0, nil) consumes=1
	do
		R[65] = CLOSURE(PROTO[0], nil, UP)
		-- fallthrough -> 1603
	end
	-- [1603] OP_304 (66, 56, "MouseButton1Click") consumes=2
	do
		R[66] = R[56]["MouseButton1Click"]
		R[67] = R[66]
		R[66] = R[66]["Connect"]
		-- fallthrough -> 1605
	end
	-- [1605] OP_73 (68, 23, 3) consumes=4
	do
		-- unresolved VM temporary: nil = {R, 46}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 65}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 62}
		c[(#c + 1)] = {}
		R[68] = CLOSURE(PROTO[23], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 1609
	end
	-- [1609] OP_191 (66, 68, 1) consumes=3
	do
		R[66](UNPACKREG(R, 67, 68))
		R[66] = R[58]["MouseButton1Click"]
		R[67] = R[66]
		R[66] = R[66]["Connect"]
		-- fallthrough -> 1612
	end
	-- [1612] OP_296 (68, 28, nil) consumes=1
	do
		R[68] = CLOSURE(PROTO[28], nil, UP)
		-- fallthrough -> 1613
	end
	-- [1613] OP_191 (66, 68, 1) consumes=3
	do
		R[66](UNPACKREG(R, 67, 68))
		R[66] = R[59]["MouseButton1Click"]
		R[67] = R[66]
		R[66] = R[66]["Connect"]
		-- fallthrough -> 1616
	end
	-- [1616] OP_296 (68, 2, nil) consumes=1
	do
		R[68] = CLOSURE(PROTO[2], nil, UP)
		-- fallthrough -> 1617
	end
	-- [1617] OP_262 (66, 68, 1) consumes=1
	do
		R[66](UNPACKREG(R, 67, 68))
		-- fallthrough -> 1618
	end
	-- [1618] OP_260 (13, "الشات", 43) consumes=7
	do
		R[13]["الشات"] = R[43]
		R[66] = UP["Instance"]
		R[66] = R[66]["new"]
		R[67] = "ScrollingFrame"
		R[66] = R[66](R[67])
		R[67] = UP["UDim2"]
		R[67] = R[67]["new"]
		-- fallthrough -> 1625
	end
	-- [1625] OP_76 (68, 1, nil) consumes=7
	do
		R[68] = 1
		R[69] = 0
		R[70] = 1
		R[71] = 0
		R[67] = R[67](UNPACKREG(R, 68, 71))
		R[66]["Size"] = R[67]
		R[67] = UP["UDim2"]
		-- fallthrough -> 1632
	end
	-- [1632] OP_75 (67, 67, "new") consumes=7
	do
		R[67] = R[67]["new"]
		R[68] = 0
		R[69] = 0
		R[70] = 0
		R[71] = 0
		R[67] = R[67](UNPACKREG(R, 68, 71))
		R[66]["Position"] = R[67]
		-- fallthrough -> 1639
	end
	-- [1639] OP_252 (67, "Color3", nil) consumes=7
	do
		R[67] = UP["Color3"]
		R[67] = R[67]["fromRGB"]
		R[68] = 30
		R[69] = 30
		R[70] = 30
		R[67] = R[67](UNPACKREG(R, 68, 70))
		R[66]["BackgroundColor3"] = R[67]
		-- fallthrough -> 1646
	end
	-- [1646] OP_85 (66, "Visible", false) consumes=1
	do
		R[66]["Visible"] = false
		-- fallthrough -> 1647
	end
	-- [1647] OP_263 (67, "UDim2", nil) consumes=7
	do
		R[67] = UP["UDim2"]
		R[67] = R[67]["new"]
		R[68] = 0
		R[69] = 0
		R[70] = 2
		R[71] = 0
		R[67] = R[67](UNPACKREG(R, 68, 71))
		-- fallthrough -> 1654
	end
	-- [1654] OP_30 (66, "CanvasSize", 67) consumes=1
	do
		R[66]["CanvasSize"] = R[67]
		-- fallthrough -> 1655
	end
	-- [1655] OP_85 (66, "ScrollBarThickness", 10) consumes=1
	do
		R[66]["ScrollBarThickness"] = 10
		-- fallthrough -> 1656
	end
	-- [1656] OP_260 (66, "Parent", 11) consumes=7
	do
		R[66]["Parent"] = R[11]
		R[67] = UP["Instance"]
		R[67] = R[67]["new"]
		R[68] = "UICorner"
		R[67] = R[67](R[68])
		R[68] = UP["UDim"]
		R[68] = R[68]["new"]
		-- fallthrough -> 1663
	end
	-- [1663] OP_16 (69, 0.05, nil) consumes=2
	do
		R[69] = 0.05
		R[70] = 0
		-- fallthrough -> 1665
	end
	-- [1665] OP_107 (68, 70, 2) consumes=1
	do
		R[68] = R[68](UNPACKREG(R, 69, 70))
		-- fallthrough -> 1666
	end
	-- [1666] OP_30 (67, "CornerRadius", 68) consumes=1
	do
		R[67]["CornerRadius"] = R[68]
		-- fallthrough -> 1667
	end
	-- [1667] OP_30 (67, "Parent", 66) consumes=1
	do
		R[67]["Parent"] = R[66]
		-- fallthrough -> 1668
	end
	-- [1668] OP_344 (68, 7, 0) consumes=1
	do
		R[68] = {}
		-- fallthrough -> 1669
	end
	-- [1669] OP_314 (69, "Color3", nil) consumes=7
	do
		R[69] = UP["Color3"]
		R[69] = R[69]["new"]
		R[70] = 0.1
		R[71] = 0.1
		R[72] = 0.1
		R[69] = R[69](UNPACKREG(R, 70, 72))
		R[70] = UP["Color3"]
		-- fallthrough -> 1676
	end
	-- [1676] OP_148 (70, 70, "new") consumes=1
	do
		R[70] = R[70]["new"]
		-- fallthrough -> 1677
	end
	-- [1677] OP_46 (71, 0.8, nil) consumes=7
	do
		R[71] = 0.8
		R[72] = 0.7
		R[73] = 0.2
		R[70] = R[70](UNPACKREG(R, 71, 73))
		R[71] = UP["Color3"]
		R[71] = R[71]["new"]
		R[72] = 0.75
		-- fallthrough -> 1684
	end
	-- [1684] OP_16 (73, 0.75, nil) consumes=2
	do
		R[73] = 0.75
		R[74] = 0.75
		-- fallthrough -> 1686
	end
	-- [1686] OP_107 (71, 74, 2) consumes=1
	do
		R[71] = R[71](UNPACKREG(R, 72, 74))
		-- fallthrough -> 1687
	end
	-- [1687] OP_314 (72, "Color3", nil) consumes=7
	do
		R[72] = UP["Color3"]
		R[72] = R[72]["new"]
		R[73] = 1
		R[74] = 0.27
		R[75] = 0
		R[72] = R[72](UNPACKREG(R, 73, 75))
		R[73] = UP["Color3"]
		-- fallthrough -> 1694
	end
	-- [1694] OP_148 (73, 73, "new") consumes=1
	do
		R[73] = R[73]["new"]
		-- fallthrough -> 1695
	end
	-- [1695] OP_46 (74, 0.47, nil) consumes=7
	do
		R[74] = 0.47
		R[75] = 0.53
		R[76] = 0.6
		R[73] = R[73](UNPACKREG(R, 74, 76))
		R[74] = UP["Color3"]
		R[74] = R[74]["new"]
		R[75] = 0.5
		-- fallthrough -> 1702
	end
	-- [1702] OP_16 (76, 0, nil) consumes=2
	do
		R[76] = 0
		R[77] = 0
		-- fallthrough -> 1704
	end
	-- [1704] OP_107 (74, 77, 2) consumes=1
	do
		R[74] = R[74](UNPACKREG(R, 75, 77))
		-- fallthrough -> 1705
	end
	-- [1705] OP_314 (75, "Color3", nil) consumes=7
	do
		R[75] = UP["Color3"]
		R[75] = R[75]["new"]
		R[76] = 0
		R[77] = 0.3
		R[78] = 0
		R[75] = R[75](UNPACKREG(R, 76, 78))
		R[76] = UP["Color3"]
		-- fallthrough -> 1712
	end
	-- [1712] OP_148 (76, 76, "new") consumes=1
	do
		R[76] = R[76]["new"]
		-- fallthrough -> 1713
	end
	-- [1713] OP_16 (77, 0, nil) consumes=2
	do
		R[77] = 0
		R[78] = 0.5
		-- fallthrough -> 1715
	end
	-- [1715] OP_249 (79, 1, nil) consumes=1
	do
		R[79] = 1
		-- fallthrough -> 1716
	end
	-- [1716] OP_271 (76, 79, 0) consumes=1
	do
		for l = 76, ((d + 76) - 1), 1 do
			R[l] = PACK(R[76](UNPACKREG(R, 77, 79)))[1]
		end
		-- fallthrough -> 1717
	end
	-- [1717] OP_337 (68, 0, 1) consumes=1
	do
		for d = 69, b, 1 do
			S.kUqtKEKt(R[68], R[d])
		end
		-- fallthrough -> 1718
	end
	-- [1718] OP_344 (69, 2, 0) consumes=1
	do
		R[69] = {}
		-- fallthrough -> 1719
	end
	-- [1719] OP_16 (70, "1st", nil) consumes=2
	do
		R[70] = "1st"
		R[71] = "1st"
		-- fallthrough -> 1721
	end
	-- [1721] OP_21 (69, 71, 1) consumes=1
	do
		S.kUqtKEKt(R[69], R[70])
		S.kUqtKEKt(R[69], R[71])
		-- fallthrough -> 1722
	end
	-- [1722] OP_268 (70, 0, 0) consumes=1
	do
		R[70] = false
		-- fallthrough -> 1723
	end
	-- [1723] OP_73 (71, 56, 3) consumes=4
	do
		-- unresolved VM temporary: nil = {R, 70}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 68}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 69}
		c[(#c + 1)] = {}
		R[71] = CLOSURE(PROTO[56], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 1727
	end
	-- [1727] OP_124 (72, "Instance", nil) consumes=7
	do
		R[72] = UP["Instance"]
		R[72] = R[72]["new"]
		R[73] = "TextLabel"
		R[72] = R[72](R[73])
		R[73] = UP["UDim2"]
		R[73] = R[73]["new"]
		R[74] = 0.8
		-- fallthrough -> 1734
	end
	-- [1734] OP_72 (75, 0, nil) consumes=7
	do
		R[75] = 0
		R[76] = 0.1
		R[77] = 0
		R[73] = R[73](UNPACKREG(R, 74, 77))
		R[72]["Size"] = R[73]
		R[73] = UP["UDim2"]
		R[73] = R[73]["new"]
		-- fallthrough -> 1741
	end
	-- [1741] OP_118 (74, 0.1, nil) consumes=7
	do
		R[74] = 0.1
		R[75] = 0
		R[76] = 0.26
		R[77] = 0
		R[73] = R[73](UNPACKREG(R, 74, 77))
		R[72]["Position"] = R[73]
		R[72]["BackgroundTransparency"] = 1
		-- fallthrough -> 1748
	end
	-- [1748] OP_85 (72, "Text", "تحذير لا تفعله سوف يتم حظرك من تغير الاسم") consumes=1
	do
		R[72]["Text"] = "تحذير لا تفعله سوف يتم حظرك من تغير الاسم"
		-- fallthrough -> 1749
	end
	-- [1749] OP_252 (73, "Color3", nil) consumes=7
	do
		R[73] = UP["Color3"]
		R[73] = R[73]["new"]
		R[74] = 1
		R[75] = 0
		R[76] = 0
		R[73] = R[73](UNPACKREG(R, 74, 76))
		R[72]["TextColor3"] = R[73]
		-- fallthrough -> 1756
	end
	-- [1756] OP_246 (73, "Enum", nil) consumes=1
	do
		R[73] = UP["Enum"]
		-- fallthrough -> 1757
	end
	-- [1757] OP_148 (73, 73, "Font") consumes=1
	do
		R[73] = R[73]["Font"]
		-- fallthrough -> 1758
	end
	-- [1758] OP_88 (73, 73, "SourceSans") consumes=7
	do
		R[73] = R[73]["SourceSans"]
		R[72]["Font"] = R[73]
		R[72]["TextSize"] = 22
		R[72]["Parent"] = R[66]
		R[73] = UP["Instance"]
		R[73] = R[73]["new"]
		R[74] = "TextButton"
		-- fallthrough -> 1765
	end
	-- [1765] OP_202 (73, 2, 2) consumes=1
	do
		R[73] = R[73](R[74])
		-- fallthrough -> 1766
	end
	-- [1766] OP_263 (74, "UDim2", nil) consumes=7
	do
		R[74] = UP["UDim2"]
		R[74] = R[74]["new"]
		R[75] = 0.8
		R[76] = 0
		R[77] = 0.06
		R[78] = 0
		R[74] = R[74](UNPACKREG(R, 75, 78))
		-- fallthrough -> 1773
	end
	-- [1773] OP_283 (73, "Size", 74) consumes=7
	do
		R[73]["Size"] = R[74]
		R[74] = UP["UDim2"]
		R[74] = R[74]["new"]
		R[75] = 0.1
		R[76] = 0
		R[77] = 0.42
		R[78] = 0
		-- fallthrough -> 1780
	end
	-- [1780] OP_107 (74, 78, 2) consumes=1
	do
		R[74] = R[74](UNPACKREG(R, 75, 78))
		-- fallthrough -> 1781
	end
	-- [1781] OP_30 (73, "Position", 74) consumes=1
	do
		R[73]["Position"] = R[74]
		-- fallthrough -> 1782
	end
	-- [1782] OP_85 (73, "Text", "1st") consumes=1
	do
		R[73]["Text"] = "1st"
		-- fallthrough -> 1783
	end
	-- [1783] OP_252 (74, "Color3", nil) consumes=7
	do
		R[74] = UP["Color3"]
		R[74] = R[74]["fromRGB"]
		R[75] = 255
		R[76] = 215
		R[77] = 0
		R[74] = R[74](UNPACKREG(R, 75, 77))
		R[73]["BackgroundColor3"] = R[74]
		-- fallthrough -> 1790
	end
	-- [1790] OP_252 (74, "Color3", nil) consumes=7
	do
		R[74] = UP["Color3"]
		R[74] = R[74]["new"]
		R[75] = 0
		R[76] = 0
		R[77] = 0
		R[74] = R[74](UNPACKREG(R, 75, 77))
		R[73]["TextColor3"] = R[74]
		-- fallthrough -> 1797
	end
	-- [1797] OP_246 (74, "Enum", nil) consumes=1
	do
		R[74] = UP["Enum"]
		-- fallthrough -> 1798
	end
	-- [1798] OP_148 (74, 74, "Font") consumes=1
	do
		R[74] = R[74]["Font"]
		-- fallthrough -> 1799
	end
	-- [1799] OP_88 (74, 74, "SourceSansBold") consumes=7
	do
		R[74] = R[74]["SourceSansBold"]
		R[73]["Font"] = R[74]
		R[73]["TextSize"] = 18
		R[73]["Parent"] = R[66]
		R[74] = UP["Instance"]
		R[74] = R[74]["new"]
		R[75] = "UICorner"
		-- fallthrough -> 1806
	end
	-- [1806] OP_202 (74, 2, 2) consumes=1
	do
		R[74] = R[74](R[75])
		-- fallthrough -> 1807
	end
	-- [1807] OP_184 (75, "UDim", nil) consumes=7
	do
		R[75] = UP["UDim"]
		R[75] = R[75]["new"]
		R[76] = 0.1
		R[77] = 0
		R[75] = R[75](UNPACKREG(R, 76, 77))
		R[74]["CornerRadius"] = R[75]
		R[74]["Parent"] = R[73]
		-- fallthrough -> 1814
	end
	-- [1814] OP_304 (75, 73, "MouseButton1Click") consumes=2
	do
		R[75] = R[73]["MouseButton1Click"]
		R[76] = R[75]
		R[75] = R[75]["Connect"]
		-- fallthrough -> 1816
	end
	-- [1816] OP_73 (77, 27, 3) consumes=4
	do
		-- unresolved VM temporary: nil = {R, 70}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 73}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 71}
		c[(#c + 1)] = {}
		R[77] = CLOSURE(PROTO[27], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 1820
	end
	-- [1820] OP_320 (75, 77, 1) consumes=7
	do
		R[75](UNPACKREG(R, 76, 77))
		R[75] = {}
		R[76] = UP["Color3"]
		R[76] = R[76]["new"]
		R[77] = 0.1
		R[78] = 0.1
		R[79] = 0.1
		-- fallthrough -> 1827
	end
	-- [1827] OP_107 (76, 79, 2) consumes=1
	do
		R[76] = R[76](UNPACKREG(R, 77, 79))
		-- fallthrough -> 1828
	end
	-- [1828] OP_314 (77, "Color3", nil) consumes=7
	do
		R[77] = UP["Color3"]
		R[77] = R[77]["new"]
		R[78] = 0.8
		R[79] = 0.7
		R[80] = 0.2
		R[77] = R[77](UNPACKREG(R, 78, 80))
		R[78] = UP["Color3"]
		-- fallthrough -> 1835
	end
	-- [1835] OP_148 (78, 78, "new") consumes=1
	do
		R[78] = R[78]["new"]
		-- fallthrough -> 1836
	end
	-- [1836] OP_46 (79, 0.75, nil) consumes=7
	do
		R[79] = 0.75
		R[80] = 0.75
		R[81] = 0.75
		R[78] = R[78](UNPACKREG(R, 79, 81))
		R[79] = UP["Color3"]
		R[79] = R[79]["new"]
		R[80] = 1
		-- fallthrough -> 1843
	end
	-- [1843] OP_16 (81, 0.27, nil) consumes=2
	do
		R[81] = 0.27
		R[82] = 0
		-- fallthrough -> 1845
	end
	-- [1845] OP_107 (79, 82, 2) consumes=1
	do
		R[79] = R[79](UNPACKREG(R, 80, 82))
		-- fallthrough -> 1846
	end
	-- [1846] OP_314 (80, "Color3", nil) consumes=7
	do
		R[80] = UP["Color3"]
		R[80] = R[80]["new"]
		R[81] = 0.47
		R[82] = 0.53
		R[83] = 0.6
		R[80] = R[80](UNPACKREG(R, 81, 83))
		R[81] = UP["Color3"]
		-- fallthrough -> 1853
	end
	-- [1853] OP_148 (81, 81, "new") consumes=1
	do
		R[81] = R[81]["new"]
		-- fallthrough -> 1854
	end
	-- [1854] OP_46 (82, 0.5, nil) consumes=7
	do
		R[82] = 0.5
		R[83] = 0
		R[84] = 0
		R[81] = R[81](UNPACKREG(R, 82, 84))
		R[82] = UP["Color3"]
		R[82] = R[82]["new"]
		R[83] = 0
		-- fallthrough -> 1861
	end
	-- [1861] OP_16 (84, 0.3, nil) consumes=2
	do
		R[84] = 0.3
		R[85] = 0
		-- fallthrough -> 1863
	end
	-- [1863] OP_107 (82, 85, 2) consumes=1
	do
		R[82] = R[82](UNPACKREG(R, 83, 85))
		-- fallthrough -> 1864
	end
	-- [1864] OP_246 (83, "Color3", nil) consumes=1
	do
		R[83] = UP["Color3"]
		-- fallthrough -> 1865
	end
	-- [1865] OP_148 (83, 83, "new") consumes=1
	do
		R[83] = R[83]["new"]
		-- fallthrough -> 1866
	end
	-- [1866] OP_16 (84, 0, nil) consumes=2
	do
		R[84] = 0
		R[85] = 0.5
		-- fallthrough -> 1868
	end
	-- [1868] OP_249 (86, 1, nil) consumes=1
	do
		R[86] = 1
		-- fallthrough -> 1869
	end
	-- [1869] OP_271 (83, 86, 0) consumes=1
	do
		for l = 83, ((d + 83) - 1), 1 do
			R[l] = PACK(R[83](UNPACKREG(R, 84, 86)))[1]
		end
		-- fallthrough -> 1870
	end
	-- [1870] OP_337 (75, 0, 1) consumes=1
	do
		for d = 76, b, 1 do
			S.kUqtKEKt(R[75], R[d])
		end
		-- fallthrough -> 1871
	end
	-- [1871] OP_344 (76, 7, 0) consumes=1
	do
		R[76] = {}
		-- fallthrough -> 1872
	end
	-- [1872] OP_285 (77, "︻┻┳══━一∵∵", nil) consumes=7
	do
		R[77] = "︻┻┳══━一∵∵"
		R[78] = "︻デ═一∵."
		R[79] = "︻┳═一∵∵"
		R[80] = "︻┻┳═一∵"
		R[81] = "︻デ═一∶∵"
		R[82] = "``∵∵一┳═┻︻"
		R[83] = "︻┻┳━ ·`."
		-- fallthrough -> 1879
	end
	-- [1879] OP_21 (76, 83, 1) consumes=1
	do
		S.kUqtKEKt(R[76], R[77])
		S.kUqtKEKt(R[76], R[78])
		S.kUqtKEKt(R[76], R[79])
		S.kUqtKEKt(R[76], R[80])
		S.kUqtKEKt(R[76], R[81])
		S.kUqtKEKt(R[76], R[82])
		S.kUqtKEKt(R[76], R[83])
		-- fallthrough -> 1880
	end
	-- [1880] OP_344 (77, 7, 0) consumes=1
	do
		R[77] = {}
		-- fallthrough -> 1881
	end
	-- [1881] OP_314 (78, "Color3", nil) consumes=7
	do
		R[78] = UP["Color3"]
		R[78] = R[78]["new"]
		R[79] = 0.1
		R[80] = 0.1
		R[81] = 0.1
		R[78] = R[78](UNPACKREG(R, 79, 81))
		R[79] = UP["Color3"]
		-- fallthrough -> 1888
	end
	-- [1888] OP_148 (79, 79, "new") consumes=1
	do
		R[79] = R[79]["new"]
		-- fallthrough -> 1889
	end
	-- [1889] OP_46 (80, 0.8, nil) consumes=7
	do
		R[80] = 0.8
		R[81] = 0.7
		R[82] = 0.2
		R[79] = R[79](UNPACKREG(R, 80, 82))
		R[80] = UP["Color3"]
		R[80] = R[80]["new"]
		R[81] = 0.75
		-- fallthrough -> 1896
	end
	-- [1896] OP_16 (82, 0.75, nil) consumes=2
	do
		R[82] = 0.75
		R[83] = 0.75
		-- fallthrough -> 1898
	end
	-- [1898] OP_107 (80, 83, 2) consumes=1
	do
		R[80] = R[80](UNPACKREG(R, 81, 83))
		-- fallthrough -> 1899
	end
	-- [1899] OP_314 (81, "Color3", nil) consumes=7
	do
		R[81] = UP["Color3"]
		R[81] = R[81]["new"]
		R[82] = 1
		R[83] = 0.27
		R[84] = 0
		R[81] = R[81](UNPACKREG(R, 82, 84))
		R[82] = UP["Color3"]
		-- fallthrough -> 1906
	end
	-- [1906] OP_148 (82, 82, "new") consumes=1
	do
		R[82] = R[82]["new"]
		-- fallthrough -> 1907
	end
	-- [1907] OP_46 (83, 0.47, nil) consumes=7
	do
		R[83] = 0.47
		R[84] = 0.53
		R[85] = 0.6
		R[82] = R[82](UNPACKREG(R, 83, 85))
		R[83] = UP["Color3"]
		R[83] = R[83]["new"]
		R[84] = 0.5
		-- fallthrough -> 1914
	end
	-- [1914] OP_16 (85, 0, nil) consumes=2
	do
		R[85] = 0
		R[86] = 0
		-- fallthrough -> 1916
	end
	-- [1916] OP_107 (83, 86, 2) consumes=1
	do
		R[83] = R[83](UNPACKREG(R, 84, 86))
		-- fallthrough -> 1917
	end
	-- [1917] OP_314 (84, "Color3", nil) consumes=7
	do
		R[84] = UP["Color3"]
		R[84] = R[84]["new"]
		R[85] = 0
		R[86] = 0.3
		R[87] = 0
		R[84] = R[84](UNPACKREG(R, 85, 87))
		R[85] = UP["Color3"]
		-- fallthrough -> 1924
	end
	-- [1924] OP_148 (85, 85, "new") consumes=1
	do
		R[85] = R[85]["new"]
		-- fallthrough -> 1925
	end
	-- [1925] OP_16 (86, 0, nil) consumes=2
	do
		R[86] = 0
		R[87] = 0.5
		-- fallthrough -> 1927
	end
	-- [1927] OP_249 (88, 1, nil) consumes=1
	do
		R[88] = 1
		-- fallthrough -> 1928
	end
	-- [1928] OP_271 (85, 88, 0) consumes=1
	do
		for l = 85, ((d + 85) - 1), 1 do
			R[l] = PACK(R[85](UNPACKREG(R, 86, 88)))[1]
		end
		-- fallthrough -> 1929
	end
	-- [1929] OP_337 (77, 0, 1) consumes=1
	do
		for d = 78, b, 1 do
			S.kUqtKEKt(R[77], R[d])
		end
		-- fallthrough -> 1930
	end
	-- [1930] OP_344 (78, 10, 0) consumes=1
	do
		R[78] = {}
		-- fallthrough -> 1931
	end
	-- [1931] OP_285 (79, "╭∩╮_( ︶︿︶)_╭∩╮", nil) consumes=7
	do
		R[79] = "╭∩╮_( ︶︿︶)_╭∩╮"
		R[80] = "凸(｀0´)凸"
		R[81] = "凸(｀⌒´メ)凸"
		R[82] = "凸(^▼ｪ▼ﾒ^)"
		R[83] = "╭∩╮(⋋‿⋌)ᕗ)"
		R[84] = "╭∩╮ʕ•ᴥ•ʔ╭∩╮"
		R[85] = "（︶︿︶_╭∩╮"
		-- fallthrough -> 1938
	end
	-- [1938] OP_16 (86, "╭∩╮ʕ•ᴥ•ʔ╭∩╮_╭∩╮(ʕ•ᴥ•ʔ)╭∩╮", nil) consumes=2
	do
		R[86] = "╭∩╮ʕ•ᴥ•ʔ╭∩╮_╭∩╮(ʕ•ᴥ•ʔ)╭∩╮"
		R[87] = "╭∩╮_☯_☯_╭∩╮"
		-- fallthrough -> 1940
	end
	-- [1940] OP_153 (88, "╭∩╮(-_-)╭∩╮", nil) consumes=2
	do
		R[88] = "╭∩╮(-_-)╭∩╮"
		S.kUqtKEKt(R[78], R[79])
		S.kUqtKEKt(R[78], R[80])
		S.kUqtKEKt(R[78], R[81])
		S.kUqtKEKt(R[78], R[82])
		S.kUqtKEKt(R[78], R[83])
		S.kUqtKEKt(R[78], R[84])
		S.kUqtKEKt(R[78], R[85])
		S.kUqtKEKt(R[78], R[86])
		S.kUqtKEKt(R[78], R[87])
		S.kUqtKEKt(R[78], R[88])
		-- fallthrough -> 1942
	end
	-- [1942] OP_268 (79, 0, 0) consumes=1
	do
		R[79] = false
		-- fallthrough -> 1943
	end
	-- [1943] OP_268 (80, 0, 0) consumes=1
	do
		R[80] = false
		-- fallthrough -> 1944
	end
	-- [1944] OP_296 (81, 39, nil) consumes=1
	do
		R[81] = CLOSURE(PROTO[39], nil, UP)
		-- fallthrough -> 1945
	end
	-- [1945] OP_124 (82, "Instance", nil) consumes=7
	do
		R[82] = UP["Instance"]
		R[82] = R[82]["new"]
		R[83] = "TextButton"
		R[82] = R[82](R[83])
		R[83] = UP["UDim2"]
		R[83] = R[83]["new"]
		R[84] = 0.25
		-- fallthrough -> 1952
	end
	-- [1952] OP_72 (85, 0, nil) consumes=7
	do
		R[85] = 0
		R[86] = 0.06
		R[87] = 0
		R[83] = R[83](UNPACKREG(R, 84, 87))
		R[82]["Size"] = R[83]
		R[83] = UP["UDim2"]
		R[83] = R[83]["new"]
		-- fallthrough -> 1959
	end
	-- [1959] OP_118 (84, 0.1, nil) consumes=7
	do
		R[84] = 0.1
		R[85] = 0
		R[86] = 0.35
		R[87] = 0
		R[83] = R[83](UNPACKREG(R, 84, 87))
		R[82]["Position"] = R[83]
		R[82]["Text"] = "أسلحة"
		-- fallthrough -> 1966
	end
	-- [1966] OP_252 (83, "Color3", nil) consumes=7
	do
		R[83] = UP["Color3"]
		R[83] = R[83]["fromRGB"]
		R[84] = 255
		R[85] = 215
		R[86] = 0
		R[83] = R[83](UNPACKREG(R, 84, 86))
		R[82]["BackgroundColor3"] = R[83]
		-- fallthrough -> 1973
	end
	-- [1973] OP_252 (83, "Color3", nil) consumes=7
	do
		R[83] = UP["Color3"]
		R[83] = R[83]["new"]
		R[84] = 0
		R[85] = 0
		R[86] = 0
		R[83] = R[83](UNPACKREG(R, 84, 86))
		R[82]["TextColor3"] = R[83]
		-- fallthrough -> 1980
	end
	-- [1980] OP_198 (83, "Enum", nil) consumes=6
	do
		R[83] = UP["Enum"]
		R[83] = R[83]["Font"]
		R[83] = R[83]["SourceSansBold"]
		R[82]["Font"] = R[83]
		R[82]["TextSize"] = 18
		R[82]["Parent"] = R[66]
		-- fallthrough -> 1986
	end
	-- [1986] OP_304 (83, 82, "MouseButton1Click") consumes=2
	do
		R[83] = R[82]["MouseButton1Click"]
		R[84] = R[83]
		R[83] = R[83]["Connect"]
		-- fallthrough -> 1988
	end
	-- [1988] OP_73 (85, 29, 5) consumes=6
	do
		-- unresolved VM temporary: nil = {R, 79}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 82}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 81}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 75}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 76}
		c[(#c + 1)] = {}
		R[85] = CLOSURE(PROTO[29], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 1994
	end
	-- [1994] OP_59 (83, 85, 1) consumes=7
	do
		R[83](UNPACKREG(R, 84, 85))
		R[83] = UP["Instance"]
		R[83] = R[83]["new"]
		R[84] = "TextButton"
		R[83] = R[83](R[84])
		R[84] = UP["UDim2"]
		R[84] = R[84]["new"]
		-- fallthrough -> 2001
	end
	-- [2001] OP_76 (85, 0.25, nil) consumes=7
	do
		R[85] = 0.25
		R[86] = 0
		R[87] = 0.06
		R[88] = 0
		R[84] = R[84](UNPACKREG(R, 85, 88))
		R[83]["Size"] = R[84]
		R[84] = UP["UDim2"]
		-- fallthrough -> 2008
	end
	-- [2008] OP_75 (84, 84, "new") consumes=7
	do
		R[84] = R[84]["new"]
		R[85] = 0.377
		R[86] = 0
		R[87] = 0.35
		R[88] = 0
		R[84] = R[84](UNPACKREG(R, 85, 88))
		R[83]["Position"] = R[84]
		-- fallthrough -> 2015
	end
	-- [2015] OP_85 (83, "Text", "إصبع") consumes=1
	do
		R[83]["Text"] = "إصبع"
		-- fallthrough -> 2016
	end
	-- [2016] OP_252 (84, "Color3", nil) consumes=7
	do
		R[84] = UP["Color3"]
		R[84] = R[84]["fromRGB"]
		R[85] = 255
		R[86] = 215
		R[87] = 0
		R[84] = R[84](UNPACKREG(R, 85, 87))
		R[83]["BackgroundColor3"] = R[84]
		-- fallthrough -> 2023
	end
	-- [2023] OP_252 (84, "Color3", nil) consumes=7
	do
		R[84] = UP["Color3"]
		R[84] = R[84]["new"]
		R[85] = 0
		R[86] = 0
		R[87] = 0
		R[84] = R[84](UNPACKREG(R, 85, 87))
		R[83]["TextColor3"] = R[84]
		-- fallthrough -> 2030
	end
	-- [2030] OP_198 (84, "Enum", nil) consumes=6
	do
		R[84] = UP["Enum"]
		R[84] = R[84]["Font"]
		R[84] = R[84]["SourceSansBold"]
		R[83]["Font"] = R[84]
		R[83]["TextSize"] = 18
		R[83]["Parent"] = R[66]
		-- fallthrough -> 2036
	end
	-- [2036] OP_304 (84, 83, "MouseButton1Click") consumes=2
	do
		R[84] = R[83]["MouseButton1Click"]
		R[85] = R[84]
		R[84] = R[84]["Connect"]
		-- fallthrough -> 2038
	end
	-- [2038] OP_73 (86, 62, 5) consumes=6
	do
		-- unresolved VM temporary: nil = {R, 80}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 83}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 81}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 77}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 78}
		c[(#c + 1)] = {}
		R[86] = CLOSURE(PROTO[62], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 2044
	end
	-- [2044] OP_59 (84, 86, 1) consumes=7
	do
		R[84](UNPACKREG(R, 85, 86))
		R[84] = UP["Instance"]
		R[84] = R[84]["new"]
		R[85] = "TextButton"
		R[84] = R[84](R[85])
		R[85] = UP["UDim2"]
		R[85] = R[85]["new"]
		-- fallthrough -> 2051
	end
	-- [2051] OP_76 (86, 0.25, nil) consumes=7
	do
		R[86] = 0.25
		R[87] = 0
		R[88] = 0.06
		R[89] = 0
		R[85] = R[85](UNPACKREG(R, 86, 89))
		R[84]["Size"] = R[85]
		R[85] = UP["UDim2"]
		-- fallthrough -> 2058
	end
	-- [2058] OP_75 (85, 85, "new") consumes=7
	do
		R[85] = R[85]["new"]
		R[86] = 0.65
		R[87] = 0
		R[88] = 0.35
		R[89] = 0
		R[85] = R[85](UNPACKREG(R, 86, 89))
		R[84]["Position"] = R[85]
		-- fallthrough -> 2065
	end
	-- [2065] OP_85 (84, "Text", "اقتراحاتكم") consumes=1
	do
		R[84]["Text"] = "اقتراحاتكم"
		-- fallthrough -> 2066
	end
	-- [2066] OP_252 (85, "Color3", nil) consumes=7
	do
		R[85] = UP["Color3"]
		R[85] = R[85]["fromRGB"]
		R[86] = 255
		R[87] = 215
		R[88] = 0
		R[85] = R[85](UNPACKREG(R, 86, 88))
		R[84]["BackgroundColor3"] = R[85]
		-- fallthrough -> 2073
	end
	-- [2073] OP_252 (85, "Color3", nil) consumes=7
	do
		R[85] = UP["Color3"]
		R[85] = R[85]["new"]
		R[86] = 0
		R[87] = 0
		R[88] = 0
		R[85] = R[85](UNPACKREG(R, 86, 88))
		R[84]["TextColor3"] = R[85]
		-- fallthrough -> 2080
	end
	-- [2080] OP_198 (85, "Enum", nil) consumes=6
	do
		R[85] = UP["Enum"]
		R[85] = R[85]["Font"]
		R[85] = R[85]["SourceSansBold"]
		R[84]["Font"] = R[85]
		R[84]["TextSize"] = 18
		R[84]["Parent"] = R[66]
		-- fallthrough -> 2086
	end
	-- [2086] OP_344 (85, 10, 0) consumes=1
	do
		R[85] = {}
		-- fallthrough -> 2087
	end
	-- [2087] OP_285 (86, "لا مكان للضعفاء بيننا", nil) consumes=7
	do
		R[86] = "لا مكان للضعفاء بيننا"
		R[87] = "انا الساطي"
		R[88] = "انا 1st"
		R[89] = "㉿ℭانا_النازي"
		R[90] = "انا عم النسيخه"
		R[91] = "ساحة المعركة تعرف أبطالها"
		R[92] = "من يواجهنا، يكتب نهايته"
		-- fallthrough -> 2094
	end
	-- [2094] OP_16 (93, "㉿ℭحين أقف، العالم يُصغي", nil) consumes=2
	do
		R[93] = "㉿ℭحين أقف، العالم يُصغي"
		R[94] = "أنت كالصفر... لا قيمة لك إلا بجانب غيرك"
		-- fallthrough -> 2096
	end
	-- [2096] OP_153 (95, "لا تضيع وقتي، فحتى الساعة ترفض عدَّ دقائقك", nil) consumes=2
	do
		R[95] = "لا تضيع وقتي، فحتى الساعة ترفض عدَّ دقائقك"
		S.kUqtKEKt(R[85], R[86])
		S.kUqtKEKt(R[85], R[87])
		S.kUqtKEKt(R[85], R[88])
		S.kUqtKEKt(R[85], R[89])
		S.kUqtKEKt(R[85], R[90])
		S.kUqtKEKt(R[85], R[91])
		S.kUqtKEKt(R[85], R[92])
		S.kUqtKEKt(R[85], R[93])
		S.kUqtKEKt(R[85], R[94])
		S.kUqtKEKt(R[85], R[95])
		-- fallthrough -> 2098
	end
	-- [2098] OP_344 (86, 7, 0) consumes=1
	do
		R[86] = {}
		-- fallthrough -> 2099
	end
	-- [2099] OP_314 (87, "Color3", nil) consumes=7
	do
		R[87] = UP["Color3"]
		R[87] = R[87]["new"]
		R[88] = 1
		R[89] = 0
		R[90] = 0
		R[87] = R[87](UNPACKREG(R, 88, 90))
		R[88] = UP["Color3"]
		-- fallthrough -> 2106
	end
	-- [2106] OP_148 (88, 88, "new") consumes=1
	do
		R[88] = R[88]["new"]
		-- fallthrough -> 2107
	end
	-- [2107] OP_46 (89, 0, nil) consumes=7
	do
		R[89] = 0
		R[90] = 1
		R[91] = 0
		R[88] = R[88](UNPACKREG(R, 89, 91))
		R[89] = UP["Color3"]
		R[89] = R[89]["new"]
		R[90] = 0
		-- fallthrough -> 2114
	end
	-- [2114] OP_16 (91, 0, nil) consumes=2
	do
		R[91] = 0
		R[92] = 1
		-- fallthrough -> 2116
	end
	-- [2116] OP_107 (89, 92, 2) consumes=1
	do
		R[89] = R[89](UNPACKREG(R, 90, 92))
		-- fallthrough -> 2117
	end
	-- [2117] OP_314 (90, "Color3", nil) consumes=7
	do
		R[90] = UP["Color3"]
		R[90] = R[90]["new"]
		R[91] = 1
		R[92] = 1
		R[93] = 0
		R[90] = R[90](UNPACKREG(R, 91, 93))
		R[91] = UP["Color3"]
		-- fallthrough -> 2124
	end
	-- [2124] OP_148 (91, 91, "new") consumes=1
	do
		R[91] = R[91]["new"]
		-- fallthrough -> 2125
	end
	-- [2125] OP_46 (92, 1, nil) consumes=7
	do
		R[92] = 1
		R[93] = 0
		R[94] = 1
		R[91] = R[91](UNPACKREG(R, 92, 94))
		R[92] = UP["Color3"]
		R[92] = R[92]["new"]
		R[93] = 0
		-- fallthrough -> 2132
	end
	-- [2132] OP_16 (94, 1, nil) consumes=2
	do
		R[94] = 1
		R[95] = 1
		-- fallthrough -> 2134
	end
	-- [2134] OP_107 (92, 95, 2) consumes=1
	do
		R[92] = R[92](UNPACKREG(R, 93, 95))
		-- fallthrough -> 2135
	end
	-- [2135] OP_314 (93, "Color3", nil) consumes=7
	do
		R[93] = UP["Color3"]
		R[93] = R[93]["new"]
		R[94] = 1
		R[95] = 0.5
		R[96] = 0
		R[93] = R[93](UNPACKREG(R, 94, 96))
		R[94] = UP["Color3"]
		-- fallthrough -> 2142
	end
	-- [2142] OP_148 (94, 94, "new") consumes=1
	do
		R[94] = R[94]["new"]
		-- fallthrough -> 2143
	end
	-- [2143] OP_16 (95, 0.5, nil) consumes=2
	do
		R[95] = 0.5
		R[96] = 0
		-- fallthrough -> 2145
	end
	-- [2145] OP_249 (97, 0.5, nil) consumes=1
	do
		R[97] = 0.5
		-- fallthrough -> 2146
	end
	-- [2146] OP_271 (94, 97, 0) consumes=1
	do
		for l = 94, ((d + 94) - 1), 1 do
			R[l] = PACK(R[94](UNPACKREG(R, 95, 97)))[1]
		end
		-- fallthrough -> 2147
	end
	-- [2147] OP_337 (86, 0, 1) consumes=1
	do
		for d = 87, b, 1 do
			S.kUqtKEKt(R[86], R[d])
		end
		-- fallthrough -> 2148
	end
	-- [2148] OP_268 (87, 0, 0) consumes=1
	do
		R[87] = false
		-- fallthrough -> 2149
	end
	-- [2149] OP_73 (88, 21, 3) consumes=4
	do
		-- unresolved VM temporary: nil = {R, 87}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 85}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 86}
		c[(#c + 1)] = {}
		R[88] = CLOSURE(PROTO[21], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 2153
	end
	-- [2153] OP_304 (89, 84, "MouseButton1Click") consumes=2
	do
		R[89] = R[84]["MouseButton1Click"]
		R[90] = R[89]
		R[89] = R[89]["Connect"]
		-- fallthrough -> 2155
	end
	-- [2155] OP_73 (91, 57, 3) consumes=4
	do
		-- unresolved VM temporary: nil = {R, 87}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 84}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 88}
		c[(#c + 1)] = {}
		R[91] = CLOSURE(PROTO[57], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 2159
	end
	-- [2159] OP_59 (89, 91, 1) consumes=7
	do
		R[89](UNPACKREG(R, 90, 91))
		R[89] = UP["Instance"]
		R[89] = R[89]["new"]
		R[90] = "TextButton"
		R[89] = R[89](R[90])
		R[90] = UP["UDim2"]
		R[90] = R[90]["new"]
		-- fallthrough -> 2166
	end
	-- [2166] OP_76 (91, 0.8, nil) consumes=7
	do
		R[91] = 0.8
		R[92] = 0
		R[93] = 0.06
		R[94] = 0
		R[90] = R[90](UNPACKREG(R, 91, 94))
		R[89]["Size"] = R[90]
		R[90] = UP["UDim2"]
		-- fallthrough -> 2173
	end
	-- [2173] OP_75 (90, 90, "new") consumes=7
	do
		R[90] = R[90]["new"]
		R[91] = 0.1
		R[92] = 0
		R[93] = 0.07
		R[94] = 0
		R[90] = R[90](UNPACKREG(R, 91, 94))
		R[89]["Position"] = R[90]
		-- fallthrough -> 2180
	end
	-- [2180] OP_85 (89, "Text", "تغيير السكن سريع") consumes=1
	do
		R[89]["Text"] = "تغيير السكن سريع"
		-- fallthrough -> 2181
	end
	-- [2181] OP_252 (90, "Color3", nil) consumes=7
	do
		R[90] = UP["Color3"]
		R[90] = R[90]["fromRGB"]
		R[91] = 255
		R[92] = 215
		R[93] = 0
		R[90] = R[90](UNPACKREG(R, 91, 93))
		R[89]["BackgroundColor3"] = R[90]
		-- fallthrough -> 2188
	end
	-- [2188] OP_252 (90, "Color3", nil) consumes=7
	do
		R[90] = UP["Color3"]
		R[90] = R[90]["new"]
		R[91] = 0
		R[92] = 0
		R[93] = 0
		R[90] = R[90](UNPACKREG(R, 91, 93))
		R[89]["TextColor3"] = R[90]
		-- fallthrough -> 2195
	end
	-- [2195] OP_246 (90, "Enum", nil) consumes=1
	do
		R[90] = UP["Enum"]
		-- fallthrough -> 2196
	end
	-- [2196] OP_148 (90, 90, "Font") consumes=1
	do
		R[90] = R[90]["Font"]
		-- fallthrough -> 2197
	end
	-- [2197] OP_88 (90, 90, "SourceSansBold") consumes=7
	do
		R[90] = R[90]["SourceSansBold"]
		R[89]["Font"] = R[90]
		R[89]["TextSize"] = 18
		R[89]["Parent"] = R[66]
		R[90] = UP["Instance"]
		R[90] = R[90]["new"]
		R[91] = "UICorner"
		-- fallthrough -> 2204
	end
	-- [2204] OP_202 (90, 2, 2) consumes=1
	do
		R[90] = R[90](R[91])
		-- fallthrough -> 2205
	end
	-- [2205] OP_184 (91, "UDim", nil) consumes=7
	do
		R[91] = UP["UDim"]
		R[91] = R[91]["new"]
		R[92] = 0.1
		R[93] = 0
		R[91] = R[91](UNPACKREG(R, 92, 93))
		R[90]["CornerRadius"] = R[91]
		R[90]["Parent"] = R[89]
		-- fallthrough -> 2212
	end
	-- [2212] OP_124 (91, "Instance", nil) consumes=7
	do
		R[91] = UP["Instance"]
		R[91] = R[91]["new"]
		R[92] = "TextButton"
		R[91] = R[91](R[92])
		R[92] = UP["UDim2"]
		R[92] = R[92]["new"]
		R[93] = 0.8
		-- fallthrough -> 2219
	end
	-- [2219] OP_72 (94, 0, nil) consumes=7
	do
		R[94] = 0
		R[95] = 0.06
		R[96] = 0
		R[92] = R[92](UNPACKREG(R, 93, 96))
		R[91]["Size"] = R[92]
		R[92] = UP["UDim2"]
		R[92] = R[92]["new"]
		-- fallthrough -> 2226
	end
	-- [2226] OP_118 (93, 0.1, nil) consumes=7
	do
		R[93] = 0.1
		R[94] = 0
		R[95] = 0.15
		R[96] = 0
		R[92] = R[92](UNPACKREG(R, 93, 96))
		R[91]["Position"] = R[92]
		R[91]["Text"] = "تغيير الحجم "
		-- fallthrough -> 2233
	end
	-- [2233] OP_252 (92, "Color3", nil) consumes=7
	do
		R[92] = UP["Color3"]
		R[92] = R[92]["fromRGB"]
		R[93] = 255
		R[94] = 215
		R[95] = 0
		R[92] = R[92](UNPACKREG(R, 93, 95))
		R[91]["BackgroundColor3"] = R[92]
		-- fallthrough -> 2240
	end
	-- [2240] OP_252 (92, "Color3", nil) consumes=7
	do
		R[92] = UP["Color3"]
		R[92] = R[92]["new"]
		R[93] = 0
		R[94] = 0
		R[95] = 0
		R[92] = R[92](UNPACKREG(R, 93, 95))
		R[91]["TextColor3"] = R[92]
		-- fallthrough -> 2247
	end
	-- [2247] OP_246 (92, "Enum", nil) consumes=1
	do
		R[92] = UP["Enum"]
		-- fallthrough -> 2248
	end
	-- [2248] OP_148 (92, 92, "Font") consumes=1
	do
		R[92] = R[92]["Font"]
		-- fallthrough -> 2249
	end
	-- [2249] OP_88 (92, 92, "SourceSansBold") consumes=7
	do
		R[92] = R[92]["SourceSansBold"]
		R[91]["Font"] = R[92]
		R[91]["TextSize"] = 18
		R[91]["Parent"] = R[66]
		R[92] = UP["Instance"]
		R[92] = R[92]["new"]
		R[93] = "UICorner"
		-- fallthrough -> 2256
	end
	-- [2256] OP_202 (92, 2, 2) consumes=1
	do
		R[92] = R[92](R[93])
		-- fallthrough -> 2257
	end
	-- [2257] OP_184 (93, "UDim", nil) consumes=7
	do
		R[93] = UP["UDim"]
		R[93] = R[93]["new"]
		R[94] = 0.1
		R[95] = 0
		R[93] = R[93](UNPACKREG(R, 94, 95))
		R[92]["CornerRadius"] = R[93]
		R[92]["Parent"] = R[91]
		-- fallthrough -> 2264
	end
	-- [2264] OP_124 (93, "Instance", nil) consumes=7
	do
		R[93] = UP["Instance"]
		R[93] = R[93]["new"]
		R[94] = "TextButton"
		R[93] = R[93](R[94])
		R[94] = UP["UDim2"]
		R[94] = R[94]["new"]
		R[95] = 0.8
		-- fallthrough -> 2271
	end
	-- [2271] OP_72 (96, 0, nil) consumes=7
	do
		R[96] = 0
		R[97] = 0.06
		R[98] = 0
		R[94] = R[94](UNPACKREG(R, 95, 98))
		R[93]["Size"] = R[94]
		R[94] = UP["UDim2"]
		R[94] = R[94]["new"]
		-- fallthrough -> 2278
	end
	-- [2278] OP_118 (95, 0.1, nil) consumes=7
	do
		R[95] = 0.1
		R[96] = 0
		R[97] = 0.23
		R[98] = 0
		R[94] = R[94](UNPACKREG(R, 95, 98))
		R[93]["Position"] = R[94]
		R[93]["Text"] = "re(free)"
		-- fallthrough -> 2285
	end
	-- [2285] OP_252 (94, "Color3", nil) consumes=7
	do
		R[94] = UP["Color3"]
		R[94] = R[94]["fromRGB"]
		R[95] = 255
		R[96] = 215
		R[97] = 0
		R[94] = R[94](UNPACKREG(R, 95, 97))
		R[93]["BackgroundColor3"] = R[94]
		-- fallthrough -> 2292
	end
	-- [2292] OP_252 (94, "Color3", nil) consumes=7
	do
		R[94] = UP["Color3"]
		R[94] = R[94]["new"]
		R[95] = 0
		R[96] = 0
		R[97] = 0
		R[94] = R[94](UNPACKREG(R, 95, 97))
		R[93]["TextColor3"] = R[94]
		-- fallthrough -> 2299
	end
	-- [2299] OP_246 (94, "Enum", nil) consumes=1
	do
		R[94] = UP["Enum"]
		-- fallthrough -> 2300
	end
	-- [2300] OP_148 (94, 94, "Font") consumes=1
	do
		R[94] = R[94]["Font"]
		-- fallthrough -> 2301
	end
	-- [2301] OP_88 (94, 94, "SourceSansBold") consumes=7
	do
		R[94] = R[94]["SourceSansBold"]
		R[93]["Font"] = R[94]
		R[93]["TextSize"] = 18
		R[93]["Parent"] = R[66]
		R[94] = UP["Instance"]
		R[94] = R[94]["new"]
		R[95] = "UICorner"
		-- fallthrough -> 2308
	end
	-- [2308] OP_202 (94, 2, 2) consumes=1
	do
		R[94] = R[94](R[95])
		-- fallthrough -> 2309
	end
	-- [2309] OP_184 (95, "UDim", nil) consumes=7
	do
		R[95] = UP["UDim"]
		R[95] = R[95]["new"]
		R[96] = 0.1
		R[97] = 0
		R[95] = R[95](UNPACKREG(R, 96, 97))
		R[94]["CornerRadius"] = R[95]
		R[94]["Parent"] = R[93]
		-- fallthrough -> 2316
	end
	-- [2316] OP_124 (95, "Instance", nil) consumes=7
	do
		R[95] = UP["Instance"]
		R[95] = R[95]["new"]
		R[96] = "TextLabel"
		R[95] = R[95](R[96])
		R[96] = UP["UDim2"]
		R[96] = R[96]["new"]
		R[97] = 0.8
		-- fallthrough -> 2323
	end
	-- [2323] OP_72 (98, 0, nil) consumes=7
	do
		R[98] = 0
		R[99] = 0.05
		R[100] = 0
		R[96] = R[96](UNPACKREG(R, 97, 100))
		R[95]["Size"] = R[96]
		R[96] = UP["UDim2"]
		R[96] = R[96]["new"]
		-- fallthrough -> 2330
	end
	-- [2330] OP_118 (97, 0.1, nil) consumes=7
	do
		R[97] = 0.1
		R[98] = 0
		R[99] = 0.001
		R[100] = 0
		R[96] = R[96](UNPACKREG(R, 97, 100))
		R[95]["Position"] = R[96]
		R[95]["BackgroundTransparency"] = 1
		-- fallthrough -> 2337
	end
	-- [2337] OP_85 (95, "Text", "جميع هذه القائمة ليست بحاجة للإدمن") consumes=1
	do
		R[95]["Text"] = "جميع هذه القائمة ليست بحاجة للإدمن"
		-- fallthrough -> 2338
	end
	-- [2338] OP_252 (96, "Color3", nil) consumes=7
	do
		R[96] = UP["Color3"]
		R[96] = R[96]["new"]
		R[97] = 1
		R[98] = 1
		R[99] = 1
		R[96] = R[96](UNPACKREG(R, 97, 99))
		R[95]["TextColor3"] = R[96]
		-- fallthrough -> 2345
	end
	-- [2345] OP_198 (96, "Enum", nil) consumes=6
	do
		R[96] = UP["Enum"]
		R[96] = R[96]["Font"]
		R[96] = R[96]["SourceSans"]
		R[95]["Font"] = R[96]
		R[95]["TextSize"] = 16
		R[95]["Parent"] = R[66]
		-- fallthrough -> 2351
	end
	-- [2351] OP_344 (96, 20, 0) consumes=1
	do
		R[96] = {}
		-- fallthrough -> 2352
	end
	-- [2352] OP_344 (97, 1, 0) consumes=1
	do
		R[97] = {}
		-- fallthrough -> 2353
	end
	-- [2353] OP_153 (98, 2449045526, nil) consumes=2
	do
		R[98] = 2449045526
		S.kUqtKEKt(R[97], R[98])
		-- fallthrough -> 2355
	end
	-- [2355] OP_344 (98, 1, 0) consumes=1
	do
		R[98] = {}
		-- fallthrough -> 2356
	end
	-- [2356] OP_153 (99, 1628552658, nil) consumes=2
	do
		R[99] = 1628552658
		S.kUqtKEKt(R[98], R[99])
		-- fallthrough -> 2358
	end
	-- [2358] OP_344 (99, 1, 0) consumes=1
	do
		R[99] = {}
		-- fallthrough -> 2359
	end
	-- [2359] OP_153 (100, 4433464560, nil) consumes=2
	do
		R[100] = 4433464560
		S.kUqtKEKt(R[99], R[100])
		-- fallthrough -> 2361
	end
	-- [2361] OP_344 (100, 1, 0) consumes=1
	do
		R[100] = {}
		-- fallthrough -> 2362
	end
	-- [2362] OP_153 (101, 59268909, nil) consumes=2
	do
		R[101] = 59268909
		S.kUqtKEKt(R[100], R[101])
		-- fallthrough -> 2364
	end
	-- [2364] OP_344 (101, 1, 0) consumes=1
	do
		R[101] = {}
		-- fallthrough -> 2365
	end
	-- [2365] OP_153 (102, 691071511, nil) consumes=2
	do
		R[102] = 691071511
		S.kUqtKEKt(R[101], R[102])
		-- fallthrough -> 2367
	end
	-- [2367] OP_344 (102, 1, 0) consumes=1
	do
		R[102] = {}
		-- fallthrough -> 2368
	end
	-- [2368] OP_153 (103, 109018734, nil) consumes=2
	do
		R[103] = 109018734
		S.kUqtKEKt(R[102], R[103])
		-- fallthrough -> 2370
	end
	-- [2370] OP_344 (103, 1, 0) consumes=1
	do
		R[103] = {}
		-- fallthrough -> 2371
	end
	-- [2371] OP_153 (104, 2739393225, nil) consumes=2
	do
		R[104] = 2739393225
		S.kUqtKEKt(R[103], R[104])
		-- fallthrough -> 2373
	end
	-- [2373] OP_344 (104, 1, 0) consumes=1
	do
		R[104] = {}
		-- fallthrough -> 2374
	end
	-- [2374] OP_153 (105, 6043597495, nil) consumes=2
	do
		R[105] = 6043597495
		S.kUqtKEKt(R[104], R[105])
		-- fallthrough -> 2376
	end
	-- [2376] OP_344 (105, 1, 0) consumes=1
	do
		R[105] = {}
		-- fallthrough -> 2377
	end
	-- [2377] OP_153 (106, 3762661791, nil) consumes=2
	do
		R[106] = 3762661791
		S.kUqtKEKt(R[105], R[106])
		-- fallthrough -> 2379
	end
	-- [2379] OP_344 (106, 1, 0) consumes=1
	do
		R[106] = {}
		-- fallthrough -> 2380
	end
	-- [2380] OP_153 (107, 352895273, nil) consumes=2
	do
		R[107] = 352895273
		S.kUqtKEKt(R[106], R[107])
		-- fallthrough -> 2382
	end
	-- [2382] OP_344 (107, 1, 0) consumes=1
	do
		R[107] = {}
		-- fallthrough -> 2383
	end
	-- [2383] OP_153 (108, 232410155, nil) consumes=2
	do
		R[108] = 232410155
		S.kUqtKEKt(R[107], R[108])
		-- fallthrough -> 2385
	end
	-- [2385] OP_344 (108, 1, 0) consumes=1
	do
		R[108] = {}
		-- fallthrough -> 2386
	end
	-- [2386] OP_153 (109, 5554295694, nil) consumes=2
	do
		R[109] = 5554295694
		S.kUqtKEKt(R[108], R[109])
		-- fallthrough -> 2388
	end
	-- [2388] OP_344 (109, 1, 0) consumes=1
	do
		R[109] = {}
		-- fallthrough -> 2389
	end
	-- [2389] OP_153 (110, 2247208387, nil) consumes=2
	do
		R[110] = 2247208387
		S.kUqtKEKt(R[109], R[110])
		-- fallthrough -> 2391
	end
	-- [2391] OP_344 (110, 1, 0) consumes=1
	do
		R[110] = {}
		-- fallthrough -> 2392
	end
	-- [2392] OP_153 (111, 1688667295, nil) consumes=2
	do
		R[111] = 1688667295
		S.kUqtKEKt(R[110], R[111])
		-- fallthrough -> 2394
	end
	-- [2394] OP_344 (111, 1, 0) consumes=1
	do
		R[111] = {}
		-- fallthrough -> 2395
	end
	-- [2395] OP_153 (112, 1481558084, nil) consumes=2
	do
		R[112] = 1481558084
		S.kUqtKEKt(R[111], R[112])
		-- fallthrough -> 2397
	end
	-- [2397] OP_344 (112, 1, 0) consumes=1
	do
		R[112] = {}
		-- fallthrough -> 2398
	end
	-- [2398] OP_153 (113, 1566311634, nil) consumes=2
	do
		R[113] = 1566311634
		S.kUqtKEKt(R[112], R[113])
		-- fallthrough -> 2400
	end
	-- [2400] OP_344 (113, 1, 0) consumes=1
	do
		R[113] = {}
		-- fallthrough -> 2401
	end
	-- [2401] OP_153 (114, 7570856623, nil) consumes=2
	do
		R[114] = 7570856623
		S.kUqtKEKt(R[113], R[114])
		-- fallthrough -> 2403
	end
	-- [2403] OP_344 (114, 1, 0) consumes=1
	do
		R[114] = {}
		-- fallthrough -> 2404
	end
	-- [2404] OP_153 (115, 1378020902, nil) consumes=2
	do
		R[115] = 1378020902
		S.kUqtKEKt(R[114], R[115])
		-- fallthrough -> 2406
	end
	-- [2406] OP_344 (115, 1, 0) consumes=1
	do
		R[115] = {}
		-- fallthrough -> 2407
	end
	-- [2407] OP_153 (116, 1180964108, nil) consumes=2
	do
		R[116] = 1180964108
		S.kUqtKEKt(R[115], R[116])
		-- fallthrough -> 2409
	end
	-- [2409] OP_344 (116, 1, 0) consumes=1
	do
		R[116] = {}
		-- fallthrough -> 2410
	end
	-- [2410] OP_153 (117, 4833944032, nil) consumes=2
	do
		R[117] = 4833944032
		S.kUqtKEKt(R[116], R[117])
		-- fallthrough -> 2412
	end
	-- [2412] OP_344 (117, 1, 0) consumes=1
	do
		R[117] = {}
		-- fallthrough -> 2413
	end
	-- [2413] OP_153 (118, 64032380, nil) consumes=2
	do
		R[118] = 64032380
		S.kUqtKEKt(R[117], R[118])
		-- fallthrough -> 2415
	end
	-- [2415] OP_344 (118, 1, 0) consumes=1
	do
		R[118] = {}
		-- fallthrough -> 2416
	end
	-- [2416] OP_153 (119, 7010193878, nil) consumes=2
	do
		R[119] = 7010193878
		S.kUqtKEKt(R[118], R[119])
		-- fallthrough -> 2418
	end
	-- [2418] OP_344 (119, 1, 0) consumes=1
	do
		R[119] = {}
		-- fallthrough -> 2419
	end
	-- [2419] OP_153 (120, 7224715700, nil) consumes=2
	do
		R[120] = 7224715700
		S.kUqtKEKt(R[119], R[120])
		-- fallthrough -> 2421
	end
	-- [2421] OP_21 (96, 119, 1) consumes=1
	do
		S.kUqtKEKt(R[96], R[97])
		S.kUqtKEKt(R[96], R[98])
		S.kUqtKEKt(R[96], R[99])
		S.kUqtKEKt(R[96], R[100])
		S.kUqtKEKt(R[96], R[101])
		S.kUqtKEKt(R[96], R[102])
		S.kUqtKEKt(R[96], R[103])
		S.kUqtKEKt(R[96], R[104])
		S.kUqtKEKt(R[96], R[105])
		S.kUqtKEKt(R[96], R[106])
		S.kUqtKEKt(R[96], R[107])
		S.kUqtKEKt(R[96], R[108])
		S.kUqtKEKt(R[96], R[109])
		S.kUqtKEKt(R[96], R[110])
		S.kUqtKEKt(R[96], R[111])
		S.kUqtKEKt(R[96], R[112])
		S.kUqtKEKt(R[96], R[113])
		S.kUqtKEKt(R[96], R[114])
		S.kUqtKEKt(R[96], R[115])
		S.kUqtKEKt(R[96], R[116])
		S.kUqtKEKt(R[96], R[117])
		S.kUqtKEKt(R[96], R[118])
		S.kUqtKEKt(R[96], R[119])
		-- fallthrough -> 2422
	end
	-- [2422] OP_344 (97, 2, 0) consumes=1
	do
		R[97] = {}
		-- fallthrough -> 2423
	end
	-- [2423] OP_344 (98, 1, 0) consumes=1
	do
		R[98] = {}
		-- fallthrough -> 2424
	end
	-- [2424] OP_153 (99, 0.5, nil) consumes=2
	do
		R[99] = 0.5
		S.kUqtKEKt(R[98], R[99])
		-- fallthrough -> 2426
	end
	-- [2426] OP_344 (99, 1, 0) consumes=1
	do
		R[99] = {}
		-- fallthrough -> 2427
	end
	-- [2427] OP_153 (100, 3, nil) consumes=2
	do
		R[100] = 3
		S.kUqtKEKt(R[99], R[100])
		-- fallthrough -> 2429
	end
	-- [2429] OP_21 (97, 99, 1) consumes=1
	do
		S.kUqtKEKt(R[97], R[98])
		S.kUqtKEKt(R[97], R[99])
		-- fallthrough -> 2430
	end
	-- [2430] OP_268 (98, 0, 0) consumes=1
	do
		R[98] = false
		-- fallthrough -> 2431
	end
	-- [2431] OP_268 (99, 0, 0) consumes=1
	do
		R[99] = false
		-- fallthrough -> 2432
	end
	-- [2432] OP_296 (100, 6, nil) consumes=1
	do
		R[100] = CLOSURE(PROTO[6], nil, UP)
		-- fallthrough -> 2433
	end
	-- [2433] OP_73 (101, 50, 4) consumes=5
	do
		-- unresolved VM temporary: nil = {R, 98}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 89}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 96}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 100}
		c[(#c + 1)] = {}
		R[101] = CLOSURE(PROTO[50], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 2438
	end
	-- [2438] OP_73 (102, 9, 4) consumes=5
	do
		-- unresolved VM temporary: nil = {R, 99}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 91}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 97}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 100}
		c[(#c + 1)] = {}
		R[102] = CLOSURE(PROTO[9], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 2443
	end
	-- [2443] OP_73 (103, 5, 1) consumes=2
	do
		-- unresolved VM temporary: nil = {R, 100}
		c[(#c + 1)] = {}
		R[103] = CLOSURE(PROTO[5], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 2445
	end
	-- [2445] OP_304 (104, 89, "MouseButton1Click") consumes=2
	do
		R[104] = R[89]["MouseButton1Click"]
		R[105] = R[104]
		R[104] = R[104]["Connect"]
		-- fallthrough -> 2447
	end
	-- [2447] OP_350 (106, 101, 0) consumes=1
	do
		R[106] = R[101]
		-- fallthrough -> 2448
	end
	-- [2448] OP_191 (104, 106, 1) consumes=3
	do
		R[104](UNPACKREG(R, 105, 106))
		R[104] = R[91]["MouseButton1Click"]
		R[105] = R[104]
		R[104] = R[104]["Connect"]
		-- fallthrough -> 2451
	end
	-- [2451] OP_350 (106, 102, 0) consumes=1
	do
		R[106] = R[102]
		-- fallthrough -> 2452
	end
	-- [2452] OP_191 (104, 106, 1) consumes=3
	do
		R[104](UNPACKREG(R, 105, 106))
		R[104] = R[93]["MouseButton1Click"]
		R[105] = R[104]
		R[104] = R[104]["Connect"]
		-- fallthrough -> 2455
	end
	-- [2455] OP_350 (106, 103, 0) consumes=1
	do
		R[106] = R[103]
		-- fallthrough -> 2456
	end
	-- [2456] OP_262 (104, 106, 1) consumes=1
	do
		R[104](UNPACKREG(R, 105, 106))
		-- fallthrough -> 2457
	end
	-- [2457] OP_260 (13, "تخريب", 66) consumes=7
	do
		R[13]["تخريب"] = R[66]
		R[104] = UP["Instance"]
		R[104] = R[104]["new"]
		R[105] = "Frame"
		R[104] = R[104](R[105])
		R[105] = UP["UDim2"]
		R[105] = R[105]["new"]
		-- fallthrough -> 2464
	end
	-- [2464] OP_76 (106, 1, nil) consumes=7
	do
		R[106] = 1
		R[107] = 0
		R[108] = 1
		R[109] = 0
		R[105] = R[105](UNPACKREG(R, 106, 109))
		R[104]["Size"] = R[105]
		R[105] = UP["UDim2"]
		-- fallthrough -> 2471
	end
	-- [2471] OP_75 (105, 105, "new") consumes=7
	do
		R[105] = R[105]["new"]
		R[106] = 0
		R[107] = 0
		R[108] = 0
		R[109] = 0
		R[105] = R[105](UNPACKREG(R, 106, 109))
		R[104]["Position"] = R[105]
		-- fallthrough -> 2478
	end
	-- [2478] OP_252 (105, "Color3", nil) consumes=7
	do
		R[105] = UP["Color3"]
		R[105] = R[105]["fromRGB"]
		R[106] = 30
		R[107] = 30
		R[108] = 30
		R[105] = R[105](UNPACKREG(R, 106, 108))
		R[104]["BackgroundColor3"] = R[105]
		-- fallthrough -> 2485
	end
	-- [2485] OP_85 (104, "Visible", false) consumes=1
	do
		R[104]["Visible"] = false
		-- fallthrough -> 2486
	end
	-- [2486] OP_260 (104, "Parent", 11) consumes=7
	do
		R[104]["Parent"] = R[11]
		R[105] = UP["Instance"]
		R[105] = R[105]["new"]
		R[106] = "ScrollingFrame"
		R[105] = R[105](R[106])
		R[106] = UP["UDim2"]
		R[106] = R[106]["new"]
		-- fallthrough -> 2493
	end
	-- [2493] OP_76 (107, 1, nil) consumes=7
	do
		R[107] = 1
		R[108] = 0
		R[109] = 1
		R[110] = 0
		R[106] = R[106](UNPACKREG(R, 107, 110))
		R[105]["Size"] = R[106]
		R[106] = UP["UDim2"]
		-- fallthrough -> 2500
	end
	-- [2500] OP_75 (106, 106, "new") consumes=7
	do
		R[106] = R[106]["new"]
		R[107] = 0
		R[108] = 0
		R[109] = 0
		R[110] = 0
		R[106] = R[106](UNPACKREG(R, 107, 110))
		R[105]["Position"] = R[106]
		-- fallthrough -> 2507
	end
	-- [2507] OP_85 (105, "BackgroundTransparency", 1) consumes=1
	do
		R[105]["BackgroundTransparency"] = 1
		-- fallthrough -> 2508
	end
	-- [2508] OP_85 (105, "ScrollBarThickness", 6) consumes=1
	do
		R[105]["ScrollBarThickness"] = 6
		-- fallthrough -> 2509
	end
	-- [2509] OP_263 (106, "UDim2", nil) consumes=7
	do
		R[106] = UP["UDim2"]
		R[106] = R[106]["new"]
		R[107] = 0
		R[108] = 0
		R[109] = 1.5
		R[110] = 0
		R[106] = R[106](UNPACKREG(R, 107, 110))
		-- fallthrough -> 2516
	end
	-- [2516] OP_349 (105, "CanvasSize", 106) consumes=7
	do
		R[105]["CanvasSize"] = R[106]
		R[105]["Parent"] = R[104]
		R[106] = UP["Instance"]
		R[106] = R[106]["new"]
		R[107] = "TextBox"
		R[106] = R[106](R[107])
		R[107] = UP["UDim2"]
		-- fallthrough -> 2523
	end
	-- [2523] OP_75 (107, 107, "new") consumes=7
	do
		R[107] = R[107]["new"]
		R[108] = 0.5
		R[109] = 0
		R[110] = 0.1
		R[111] = 0
		R[107] = R[107](UNPACKREG(R, 108, 111))
		R[106]["Size"] = R[107]
		-- fallthrough -> 2530
	end
	-- [2530] OP_263 (107, "UDim2", nil) consumes=7
	do
		R[107] = UP["UDim2"]
		R[107] = R[107]["new"]
		R[108] = 0.01
		R[109] = 0
		R[110] = 0.01
		R[111] = 0
		R[107] = R[107](UNPACKREG(R, 108, 111))
		-- fallthrough -> 2537
	end
	-- [2537] OP_345 (106, "Position", 107) consumes=7
	do
		R[106]["Position"] = R[107]
		R[107] = UP["Color3"]
		R[107] = R[107]["fromRGB"]
		R[108] = 50
		R[109] = 50
		R[110] = 50
		R[107] = R[107](UNPACKREG(R, 108, 110))
		-- fallthrough -> 2544
	end
	-- [2544] OP_30 (106, "BackgroundColor3", 107) consumes=1
	do
		R[106]["BackgroundColor3"] = R[107]
		-- fallthrough -> 2545
	end
	-- [2545] OP_85 (106, "Text", "اكتب أول 3 الأحرف") consumes=1
	do
		R[106]["Text"] = "اكتب أول 3 الأحرف"
		-- fallthrough -> 2546
	end
	-- [2546] OP_252 (107, "Color3", nil) consumes=7
	do
		R[107] = UP["Color3"]
		R[107] = R[107]["new"]
		R[108] = 1
		R[109] = 1
		R[110] = 1
		R[107] = R[107](UNPACKREG(R, 108, 110))
		R[106]["TextColor3"] = R[107]
		-- fallthrough -> 2553
	end
	-- [2553] OP_66 (107, "Enum", nil) consumes=6
	do
		R[107] = UP["Enum"]
		R[107] = R[107]["Font"]
		R[107] = R[107]["SourceSansBold"]
		R[106]["Font"] = R[107]
		R[106]["TextSize"] = 14
		R[106]["ClearTextOnFocus"] = true
		-- fallthrough -> 2559
	end
	-- [2559] OP_260 (106, "Parent", 105) consumes=7
	do
		R[106]["Parent"] = R[105]
		R[107] = UP["Instance"]
		R[107] = R[107]["new"]
		R[108] = "ImageLabel"
		R[107] = R[107](R[108])
		R[108] = UP["UDim2"]
		R[108] = R[108]["new"]
		-- fallthrough -> 2566
	end
	-- [2566] OP_76 (109, 0, nil) consumes=7
	do
		R[109] = 0
		R[110] = 110
		R[111] = 0
		R[112] = 110
		R[108] = R[108](UNPACKREG(R, 109, 112))
		R[107]["Size"] = R[108]
		R[108] = UP["UDim2"]
		-- fallthrough -> 2573
	end
	-- [2573] OP_75 (108, 108, "new") consumes=7
	do
		R[108] = R[108]["new"]
		R[109] = 0.66
		R[110] = 0
		R[111] = 0.001
		R[112] = 0
		R[108] = R[108](UNPACKREG(R, 109, 112))
		R[107]["Position"] = R[108]
		-- fallthrough -> 2580
	end
	-- [2580] OP_252 (108, "Color3", nil) consumes=7
	do
		R[108] = UP["Color3"]
		R[108] = R[108]["new"]
		R[109] = 0
		R[110] = 0
		R[111] = 0
		R[108] = R[108](UNPACKREG(R, 109, 111))
		R[107]["BackgroundColor3"] = R[108]
		-- fallthrough -> 2587
	end
	-- [2587] OP_85 (107, "BorderSizePixel", 0) consumes=1
	do
		R[107]["BorderSizePixel"] = 0
		-- fallthrough -> 2588
	end
	-- [2588] OP_260 (107, "Parent", 105) consumes=7
	do
		R[107]["Parent"] = R[105]
		R[108] = UP["Instance"]
		R[108] = R[108]["new"]
		R[109] = "UICorner"
		R[108] = R[108](R[109])
		R[109] = UP["UDim"]
		R[109] = R[109]["new"]
		-- fallthrough -> 2595
	end
	-- [2595] OP_132 (110, 1, nil) consumes=7
	do
		R[110] = 1
		R[111] = 0
		R[109] = R[109](UNPACKREG(R, 110, 111))
		R[108]["CornerRadius"] = R[109]
		R[108]["Parent"] = R[107]
		R[109] = UP["Instance"]
		R[109] = R[109]["new"]
		-- fallthrough -> 2602
	end
	-- [2602] OP_294 (110, "Frame", nil) consumes=7
	do
		R[110] = "Frame"
		R[109] = R[109](R[110])
		R[110] = UP["UDim2"]
		R[110] = R[110]["new"]
		R[111] = 1.21
		R[112] = 1
		R[113] = 1
		-- fallthrough -> 2609
	end
	-- [2609] OP_307 (114, 0, nil) consumes=7
	do
		R[114] = 0
		R[110] = R[110](UNPACKREG(R, 111, 114))
		R[109]["Size"] = R[110]
		R[110] = UP["UDim2"]
		R[110] = R[110]["new"]
		R[111] = 0.2
		R[112] = 0
		-- fallthrough -> 2616
	end
	-- [2616] OP_16 (113, 0.28, nil) consumes=2
	do
		R[113] = 0.28
		R[114] = 0
		-- fallthrough -> 2618
	end
	-- [2618] OP_128 (110, 114, 2) consumes=7
	do
		R[110] = R[110](UNPACKREG(R, 111, 114))
		R[109]["Position"] = R[110]
		R[110] = UP["Color3"]
		R[110] = R[110]["fromRGB"]
		R[111] = 50
		R[112] = 50
		R[113] = 50
		-- fallthrough -> 2625
	end
	-- [2625] OP_107 (110, 113, 2) consumes=1
	do
		R[110] = R[110](UNPACKREG(R, 111, 113))
		-- fallthrough -> 2626
	end
	-- [2626] OP_30 (109, "BackgroundColor3", 110) consumes=1
	do
		R[109]["BackgroundColor3"] = R[110]
		-- fallthrough -> 2627
	end
	-- [2627] OP_85 (109, "BackgroundTransparency", 1) consumes=1
	do
		R[109]["BackgroundTransparency"] = 1
		-- fallthrough -> 2628
	end
	-- [2628] OP_260 (109, "Parent", 105) consumes=7
	do
		R[109]["Parent"] = R[105]
		R[110] = UP["Instance"]
		R[110] = R[110]["new"]
		R[111] = "TextLabel"
		R[110] = R[110](R[111])
		R[111] = UP["UDim2"]
		R[111] = R[111]["new"]
		-- fallthrough -> 2635
	end
	-- [2635] OP_118 (112, 1, nil) consumes=7
	do
		R[112] = 1
		R[113] = 0
		R[114] = 1
		R[115] = 0
		R[111] = R[111](UNPACKREG(R, 112, 115))
		R[110]["Size"] = R[111]
		R[110]["BackgroundTransparency"] = 1
		-- fallthrough -> 2642
	end
	-- [2642] OP_252 (111, "Color3", nil) consumes=7
	do
		R[111] = UP["Color3"]
		R[111] = R[111]["new"]
		R[112] = 1
		R[113] = 1
		R[114] = 1
		R[111] = R[111](UNPACKREG(R, 112, 114))
		R[110]["TextColor3"] = R[111]
		-- fallthrough -> 2649
	end
	-- [2649] OP_85 (110, "TextSize", 14) consumes=1
	do
		R[110]["TextSize"] = 14
		-- fallthrough -> 2650
	end
	-- [2650] OP_246 (111, "Enum", nil) consumes=1
	do
		R[111] = UP["Enum"]
		-- fallthrough -> 2651
	end
	-- [2651] OP_148 (111, 111, "Font") consumes=1
	do
		R[111] = R[111]["Font"]
		-- fallthrough -> 2652
	end
	-- [2652] OP_148 (111, 111, "SourceSansBold") consumes=1
	do
		R[111] = R[111]["SourceSansBold"]
		-- fallthrough -> 2653
	end
	-- [2653] OP_121 (110, "Font", 111) consumes=7
	do
		R[110]["Font"] = R[111]
		R[110]["TextWrapped"] = true
		R[111] = UP["Enum"]
		R[111] = R[111]["TextYAlignment"]
		R[112] = "Top"
		R[111] = R[111][R[112]]
		R[110]["TextYAlignment"] = R[111]
		-- fallthrough -> 2660
	end
	-- [2660] OP_249 (111, "معلومات:", nil) consumes=1
	do
		R[111] = "معلومات:"
		-- fallthrough -> 2661
	end
	-- [2661] OP_349 (110, "Text", 111) consumes=7
	do
		R[110]["Text"] = R[111]
		R[110]["Parent"] = R[109]
		R[111] = UP["Instance"]
		R[111] = R[111]["new"]
		R[112] = "TextButton"
		R[111] = R[111](R[112])
		R[112] = UP["UDim2"]
		-- fallthrough -> 2668
	end
	-- [2668] OP_75 (112, 112, "new") consumes=7
	do
		R[112] = R[112]["new"]
		R[113] = 0.3
		R[114] = 0
		R[115] = 0.07
		R[116] = 0
		R[112] = R[112](UNPACKREG(R, 113, 116))
		R[111]["Size"] = R[112]
		-- fallthrough -> 2675
	end
	-- [2675] OP_263 (112, "UDim2", nil) consumes=7
	do
		R[112] = UP["UDim2"]
		R[112] = R[112]["new"]
		R[113] = 0.01
		R[114] = 0
		R[115] = 0.13
		R[116] = 0
		R[112] = R[112](UNPACKREG(R, 113, 116))
		-- fallthrough -> 2682
	end
	-- [2682] OP_30 (111, "Position", 112) consumes=1
	do
		R[111]["Position"] = R[112]
		-- fallthrough -> 2683
	end
	-- [2683] OP_287 (112, "رساله مزعجه", nil) consumes=7
	do
		R[112] = "رساله مزعجه"
		R[111]["Text"] = R[112]
		R[112] = UP["Color3"]
		R[112] = R[112]["fromRGB"]
		R[113] = 255
		R[114] = 215
		R[115] = 0
		-- fallthrough -> 2690
	end
	-- [2690] OP_128 (112, 115, 2) consumes=7
	do
		R[112] = R[112](UNPACKREG(R, 113, 115))
		R[111]["BackgroundColor3"] = R[112]
		R[112] = UP["Color3"]
		R[112] = R[112]["new"]
		R[113] = 0
		R[114] = 0
		R[115] = 0
		-- fallthrough -> 2697
	end
	-- [2697] OP_131 (112, 115, 2) consumes=5
	do
		R[112] = R[112](UNPACKREG(R, 113, 115))
		R[111]["TextColor3"] = R[112]
		R[112] = UP["Enum"]
		R[112] = R[112]["Font"]
		R[112] = R[112]["SourceSansBold"]
		-- fallthrough -> 2702
	end
	-- [2702] OP_241 (111, "Font", 112) consumes=7
	do
		R[111]["Font"] = R[112]
		R[112] = 18
		R[111]["TextSize"] = R[112]
		R[111]["Parent"] = R[105]
		R[112] = UP["Instance"]
		R[112] = R[112]["new"]
		R[113] = "TextButton"
		-- fallthrough -> 2709
	end
	-- [2709] OP_202 (112, 2, 2) consumes=1
	do
		R[112] = R[112](R[113])
		-- fallthrough -> 2710
	end
	-- [2710] OP_287 (113, "DanceToggleButton", nil) consumes=7
	do
		R[113] = "DanceToggleButton"
		R[112]["Name"] = R[113]
		R[113] = UP["UDim2"]
		R[113] = R[113]["new"]
		R[114] = 0.3
		R[115] = 0
		R[116] = 0.07
		-- fallthrough -> 2717
	end
	-- [2717] OP_307 (117, 0, nil) consumes=7
	do
		R[117] = 0
		R[113] = R[113](UNPACKREG(R, 114, 117))
		R[112]["Size"] = R[113]
		R[113] = UP["UDim2"]
		R[113] = R[113]["new"]
		R[114] = 0.32
		R[115] = 0
		-- fallthrough -> 2724
	end
	-- [2724] OP_16 (116, 0.13, nil) consumes=2
	do
		R[116] = 0.13
		R[117] = 0
		-- fallthrough -> 2726
	end
	-- [2726] OP_107 (113, 117, 2) consumes=1
	do
		R[113] = R[113](UNPACKREG(R, 114, 117))
		-- fallthrough -> 2727
	end
	-- [2727] OP_30 (112, "Position", 113) consumes=1
	do
		R[112]["Position"] = R[113]
		-- fallthrough -> 2728
	end
	-- [2728] OP_287 (113, "ترقيص", nil) consumes=7
	do
		R[113] = "ترقيص"
		R[112]["Text"] = R[113]
		R[113] = UP["Color3"]
		R[113] = R[113]["fromRGB"]
		R[114] = 255
		R[115] = 215
		R[116] = 0
		-- fallthrough -> 2735
	end
	-- [2735] OP_128 (113, 116, 2) consumes=7
	do
		R[113] = R[113](UNPACKREG(R, 114, 116))
		R[112]["BackgroundColor3"] = R[113]
		R[113] = UP["Color3"]
		R[113] = R[113]["new"]
		R[114] = 0
		R[115] = 0
		R[116] = 0
		-- fallthrough -> 2742
	end
	-- [2742] OP_131 (113, 116, 2) consumes=5
	do
		R[113] = R[113](UNPACKREG(R, 114, 116))
		R[112]["TextColor3"] = R[113]
		R[113] = UP["Enum"]
		R[113] = R[113]["Font"]
		R[113] = R[113]["SourceSansBold"]
		-- fallthrough -> 2747
	end
	-- [2747] OP_241 (112, "Font", 113) consumes=7
	do
		R[112]["Font"] = R[113]
		R[113] = 18
		R[112]["TextSize"] = R[113]
		R[112]["Parent"] = R[105]
		R[113] = UP["Instance"]
		R[113] = R[113]["new"]
		R[114] = "TextButton"
		-- fallthrough -> 2754
	end
	-- [2754] OP_202 (113, 2, 2) consumes=1
	do
		R[113] = R[113](R[114])
		-- fallthrough -> 2755
	end
	-- [2755] OP_263 (114, "UDim2", nil) consumes=7
	do
		R[114] = UP["UDim2"]
		R[114] = R[114]["new"]
		R[115] = 0.3
		R[116] = 0
		R[117] = 0.07
		R[118] = 0
		R[114] = R[114](UNPACKREG(R, 115, 118))
		-- fallthrough -> 2762
	end
	-- [2762] OP_283 (113, "Size", 114) consumes=7
	do
		R[113]["Size"] = R[114]
		R[114] = UP["UDim2"]
		R[114] = R[114]["new"]
		R[115] = 0.01
		R[116] = 0
		R[117] = 0.22
		R[118] = 0
		-- fallthrough -> 2769
	end
	-- [2769] OP_107 (114, 118, 2) consumes=1
	do
		R[114] = R[114](UNPACKREG(R, 115, 118))
		-- fallthrough -> 2770
	end
	-- [2770] OP_30 (113, "Position", 114) consumes=1
	do
		R[113]["Position"] = R[114]
		-- fallthrough -> 2771
	end
	-- [2771] OP_287 (114, "بانج", nil) consumes=7
	do
		R[114] = "بانج"
		R[113]["Text"] = R[114]
		R[114] = UP["Color3"]
		R[114] = R[114]["fromRGB"]
		R[115] = 255
		R[116] = 215
		R[117] = 0
		-- fallthrough -> 2778
	end
	-- [2778] OP_128 (114, 117, 2) consumes=7
	do
		R[114] = R[114](UNPACKREG(R, 115, 117))
		R[113]["BackgroundColor3"] = R[114]
		R[114] = UP["Color3"]
		R[114] = R[114]["new"]
		R[115] = 0
		R[116] = 0
		R[117] = 0
		-- fallthrough -> 2785
	end
	-- [2785] OP_131 (114, 117, 2) consumes=5
	do
		R[114] = R[114](UNPACKREG(R, 115, 117))
		R[113]["TextColor3"] = R[114]
		R[114] = UP["Enum"]
		R[114] = R[114]["Font"]
		R[114] = R[114]["SourceSansBold"]
		-- fallthrough -> 2790
	end
	-- [2790] OP_241 (113, "Font", 114) consumes=7
	do
		R[113]["Font"] = R[114]
		R[114] = 18
		R[113]["TextSize"] = R[114]
		R[113]["Parent"] = R[105]
		R[114] = UP["Instance"]
		R[114] = R[114]["new"]
		R[115] = "TextButton"
		-- fallthrough -> 2797
	end
	-- [2797] OP_202 (114, 2, 2) consumes=1
	do
		R[114] = R[114](R[115])
		-- fallthrough -> 2798
	end
	-- [2798] OP_263 (115, "UDim2", nil) consumes=7
	do
		R[115] = UP["UDim2"]
		R[115] = R[115]["new"]
		R[116] = 0.3
		R[117] = 0
		R[118] = 0.07
		R[119] = 0
		R[115] = R[115](UNPACKREG(R, 116, 119))
		-- fallthrough -> 2805
	end
	-- [2805] OP_283 (114, "Size", 115) consumes=7
	do
		R[114]["Size"] = R[115]
		R[115] = UP["UDim2"]
		R[115] = R[115]["new"]
		R[116] = 0.32
		R[117] = 0
		R[118] = 0.22
		R[119] = 0
		-- fallthrough -> 2812
	end
	-- [2812] OP_107 (115, 119, 2) consumes=1
	do
		R[115] = R[115](UNPACKREG(R, 116, 119))
		-- fallthrough -> 2813
	end
	-- [2813] OP_30 (114, "Position", 115) consumes=1
	do
		R[114]["Position"] = R[115]
		-- fallthrough -> 2814
	end
	-- [2814] OP_287 (115, "مص", nil) consumes=7
	do
		R[115] = "مص"
		R[114]["Text"] = R[115]
		R[115] = UP["Color3"]
		R[115] = R[115]["fromRGB"]
		R[116] = 255
		R[117] = 215
		R[118] = 0
		-- fallthrough -> 2821
	end
	-- [2821] OP_128 (115, 118, 2) consumes=7
	do
		R[115] = R[115](UNPACKREG(R, 116, 118))
		R[114]["BackgroundColor3"] = R[115]
		R[115] = UP["Color3"]
		R[115] = R[115]["new"]
		R[116] = 0
		R[117] = 0
		R[118] = 0
		-- fallthrough -> 2828
	end
	-- [2828] OP_131 (115, 118, 2) consumes=5
	do
		R[115] = R[115](UNPACKREG(R, 116, 118))
		R[114]["TextColor3"] = R[115]
		R[115] = UP["Enum"]
		R[115] = R[115]["Font"]
		R[115] = R[115]["SourceSansBold"]
		-- fallthrough -> 2833
	end
	-- [2833] OP_241 (114, "Font", 115) consumes=7
	do
		R[114]["Font"] = R[115]
		R[115] = 18
		R[114]["TextSize"] = R[115]
		R[114]["Parent"] = R[105]
		R[115] = UP["Instance"]
		R[115] = R[115]["new"]
		R[116] = "TextButton"
		-- fallthrough -> 2840
	end
	-- [2840] OP_202 (115, 2, 2) consumes=1
	do
		R[115] = R[115](R[116])
		-- fallthrough -> 2841
	end
	-- [2841] OP_263 (116, "UDim2", nil) consumes=7
	do
		R[116] = UP["UDim2"]
		R[116] = R[116]["new"]
		R[117] = 0.3
		R[118] = 0
		R[119] = 0.07
		R[120] = 0
		R[116] = R[116](UNPACKREG(R, 117, 120))
		-- fallthrough -> 2848
	end
	-- [2848] OP_283 (115, "Size", 116) consumes=7
	do
		R[115]["Size"] = R[116]
		R[116] = UP["UDim2"]
		R[116] = R[116]["new"]
		R[117] = 0.01
		R[118] = 0
		R[119] = 0.31
		R[120] = 0
		-- fallthrough -> 2855
	end
	-- [2855] OP_107 (116, 120, 2) consumes=1
	do
		R[116] = R[116](UNPACKREG(R, 117, 120))
		-- fallthrough -> 2856
	end
	-- [2856] OP_30 (115, "Position", 116) consumes=1
	do
		R[115]["Position"] = R[116]
		-- fallthrough -> 2857
	end
	-- [2857] OP_287 (116, "انتقال", nil) consumes=7
	do
		R[116] = "انتقال"
		R[115]["Text"] = R[116]
		R[116] = UP["Color3"]
		R[116] = R[116]["fromRGB"]
		R[117] = 255
		R[118] = 215
		R[119] = 0
		-- fallthrough -> 2864
	end
	-- [2864] OP_128 (116, 119, 2) consumes=7
	do
		R[116] = R[116](UNPACKREG(R, 117, 119))
		R[115]["BackgroundColor3"] = R[116]
		R[116] = UP["Color3"]
		R[116] = R[116]["new"]
		R[117] = 0
		R[118] = 0
		R[119] = 0
		-- fallthrough -> 2871
	end
	-- [2871] OP_131 (116, 119, 2) consumes=5
	do
		R[116] = R[116](UNPACKREG(R, 117, 119))
		R[115]["TextColor3"] = R[116]
		R[116] = UP["Enum"]
		R[116] = R[116]["Font"]
		R[116] = R[116]["SourceSansBold"]
		-- fallthrough -> 2876
	end
	-- [2876] OP_241 (115, "Font", 116) consumes=7
	do
		R[115]["Font"] = R[116]
		R[116] = 18
		R[115]["TextSize"] = R[116]
		R[115]["Parent"] = R[105]
		R[116] = UP["Instance"]
		R[116] = R[116]["new"]
		R[117] = "TextButton"
		-- fallthrough -> 2883
	end
	-- [2883] OP_202 (116, 2, 2) consumes=1
	do
		R[116] = R[116](R[117])
		-- fallthrough -> 2884
	end
	-- [2884] OP_263 (117, "UDim2", nil) consumes=7
	do
		R[117] = UP["UDim2"]
		R[117] = R[117]["new"]
		R[118] = 0.3
		R[119] = 0
		R[120] = 0.07
		R[121] = 0
		R[117] = R[117](UNPACKREG(R, 118, 121))
		-- fallthrough -> 2891
	end
	-- [2891] OP_283 (116, "Size", 117) consumes=7
	do
		R[116]["Size"] = R[117]
		R[117] = UP["UDim2"]
		R[117] = R[117]["new"]
		R[118] = 0.32
		R[119] = 0
		R[120] = 0.31
		R[121] = 0
		-- fallthrough -> 2898
	end
	-- [2898] OP_107 (117, 121, 2) consumes=1
	do
		R[117] = R[117](UNPACKREG(R, 118, 121))
		-- fallthrough -> 2899
	end
	-- [2899] OP_30 (116, "Position", 117) consumes=1
	do
		R[116]["Position"] = R[117]
		-- fallthrough -> 2900
	end
	-- [2900] OP_287 (117, "رايته", nil) consumes=7
	do
		R[117] = "رايته"
		R[116]["Text"] = R[117]
		R[117] = UP["Color3"]
		R[117] = R[117]["fromRGB"]
		R[118] = 255
		R[119] = 215
		R[120] = 0
		-- fallthrough -> 2907
	end
	-- [2907] OP_128 (117, 120, 2) consumes=7
	do
		R[117] = R[117](UNPACKREG(R, 118, 120))
		R[116]["BackgroundColor3"] = R[117]
		R[117] = UP["Color3"]
		R[117] = R[117]["new"]
		R[118] = 0
		R[119] = 0
		R[120] = 0
		-- fallthrough -> 2914
	end
	-- [2914] OP_131 (117, 120, 2) consumes=5
	do
		R[117] = R[117](UNPACKREG(R, 118, 120))
		R[116]["TextColor3"] = R[117]
		R[117] = UP["Enum"]
		R[117] = R[117]["Font"]
		R[117] = R[117]["SourceSansBold"]
		-- fallthrough -> 2919
	end
	-- [2919] OP_241 (116, "Font", 117) consumes=7
	do
		R[116]["Font"] = R[117]
		R[117] = 18
		R[116]["TextSize"] = R[117]
		R[116]["Parent"] = R[105]
		R[117] = UP["Instance"]
		R[117] = R[117]["new"]
		R[118] = "TextButton"
		-- fallthrough -> 2926
	end
	-- [2926] OP_202 (117, 2, 2) consumes=1
	do
		R[117] = R[117](R[118])
		-- fallthrough -> 2927
	end
	-- [2927] OP_263 (118, "UDim2", nil) consumes=7
	do
		R[118] = UP["UDim2"]
		R[118] = R[118]["new"]
		R[119] = 0.3
		R[120] = 0
		R[121] = 0.07
		R[122] = 0
		R[118] = R[118](UNPACKREG(R, 119, 122))
		-- fallthrough -> 2934
	end
	-- [2934] OP_283 (117, "Size", 118) consumes=7
	do
		R[117]["Size"] = R[118]
		R[118] = UP["UDim2"]
		R[118] = R[118]["new"]
		R[119] = 0.01
		R[120] = 0
		R[121] = 0.4
		R[122] = 0
		-- fallthrough -> 2941
	end
	-- [2941] OP_107 (118, 122, 2) consumes=1
	do
		R[118] = R[118](UNPACKREG(R, 119, 122))
		-- fallthrough -> 2942
	end
	-- [2942] OP_30 (117, "Position", 118) consumes=1
	do
		R[117]["Position"] = R[118]
		-- fallthrough -> 2943
	end
	-- [2943] OP_287 (118, "تجميد (بحاجه لكلبشه)", nil) consumes=7
	do
		R[118] = "تجميد (بحاجه لكلبشه)"
		R[117]["Text"] = R[118]
		R[118] = UP["Color3"]
		R[118] = R[118]["fromRGB"]
		R[119] = 255
		R[120] = 215
		R[121] = 0
		-- fallthrough -> 2950
	end
	-- [2950] OP_128 (118, 121, 2) consumes=7
	do
		R[118] = R[118](UNPACKREG(R, 119, 121))
		R[117]["BackgroundColor3"] = R[118]
		R[118] = UP["Color3"]
		R[118] = R[118]["new"]
		R[119] = 0
		R[120] = 0
		R[121] = 0
		-- fallthrough -> 2957
	end
	-- [2957] OP_131 (118, 121, 2) consumes=5
	do
		R[118] = R[118](UNPACKREG(R, 119, 121))
		R[117]["TextColor3"] = R[118]
		R[118] = UP["Enum"]
		R[118] = R[118]["Font"]
		R[118] = R[118]["SourceSansBold"]
		-- fallthrough -> 2962
	end
	-- [2962] OP_241 (117, "Font", 118) consumes=7
	do
		R[117]["Font"] = R[118]
		R[118] = 14
		R[117]["TextSize"] = R[118]
		R[117]["Parent"] = R[105]
		R[118] = UP["Instance"]
		R[118] = R[118]["new"]
		R[119] = "TextButton"
		-- fallthrough -> 2969
	end
	-- [2969] OP_202 (118, 2, 2) consumes=1
	do
		R[118] = R[118](R[119])
		-- fallthrough -> 2970
	end
	-- [2970] OP_263 (119, "UDim2", nil) consumes=7
	do
		R[119] = UP["UDim2"]
		R[119] = R[119]["new"]
		R[120] = 0.3
		R[121] = 0
		R[122] = 0.07
		R[123] = 0
		R[119] = R[119](UNPACKREG(R, 120, 123))
		-- fallthrough -> 2977
	end
	-- [2977] OP_283 (118, "Size", 119) consumes=7
	do
		R[118]["Size"] = R[119]
		R[119] = UP["UDim2"]
		R[119] = R[119]["new"]
		R[120] = 0.32
		R[121] = 0
		R[122] = 0.4
		R[123] = 0
		-- fallthrough -> 2984
	end
	-- [2984] OP_107 (119, 123, 2) consumes=1
	do
		R[119] = R[119](UNPACKREG(R, 120, 123))
		-- fallthrough -> 2985
	end
	-- [2985] OP_30 (118, "Position", 119) consumes=1
	do
		R[118]["Position"] = R[119]
		-- fallthrough -> 2986
	end
	-- [2986] OP_287 (119, "كلبشه (بحاجه لكلبش)", nil) consumes=7
	do
		R[119] = "كلبشه (بحاجه لكلبش)"
		R[118]["Text"] = R[119]
		R[119] = UP["Color3"]
		R[119] = R[119]["fromRGB"]
		R[120] = 255
		R[121] = 215
		R[122] = 0
		-- fallthrough -> 2993
	end
	-- [2993] OP_128 (119, 122, 2) consumes=7
	do
		R[119] = R[119](UNPACKREG(R, 120, 122))
		R[118]["BackgroundColor3"] = R[119]
		R[119] = UP["Color3"]
		R[119] = R[119]["new"]
		R[120] = 0
		R[121] = 0
		R[122] = 0
		-- fallthrough -> 3000
	end
	-- [3000] OP_131 (119, 122, 2) consumes=5
	do
		R[119] = R[119](UNPACKREG(R, 120, 122))
		R[118]["TextColor3"] = R[119]
		R[119] = UP["Enum"]
		R[119] = R[119]["Font"]
		R[119] = R[119]["SourceSansBold"]
		-- fallthrough -> 3005
	end
	-- [3005] OP_241 (118, "Font", 119) consumes=7
	do
		R[118]["Font"] = R[119]
		R[119] = 18
		R[118]["TextSize"] = R[119]
		R[118]["Parent"] = R[105]
		R[119] = UP["Instance"]
		R[119] = R[119]["new"]
		R[120] = "TextButton"
		-- fallthrough -> 3012
	end
	-- [3012] OP_202 (119, 2, 2) consumes=1
	do
		R[119] = R[119](R[120])
		-- fallthrough -> 3013
	end
	-- [3013] OP_263 (120, "UDim2", nil) consumes=7
	do
		R[120] = UP["UDim2"]
		R[120] = R[120]["new"]
		R[121] = 0.3
		R[122] = 0
		R[123] = 0.07
		R[124] = 0
		R[120] = R[120](UNPACKREG(R, 121, 124))
		-- fallthrough -> 3020
	end
	-- [3020] OP_283 (119, "Size", 120) consumes=7
	do
		R[119]["Size"] = R[120]
		R[120] = UP["UDim2"]
		R[120] = R[120]["new"]
		R[121] = 0.01
		R[122] = 0
		R[123] = 0.76
		R[124] = 0
		-- fallthrough -> 3027
	end
	-- [3027] OP_107 (120, 124, 2) consumes=1
	do
		R[120] = R[120](UNPACKREG(R, 121, 124))
		-- fallthrough -> 3028
	end
	-- [3028] OP_30 (119, "Position", 120) consumes=1
	do
		R[119]["Position"] = R[120]
		-- fallthrough -> 3029
	end
	-- [3029] OP_287 (120, "نسخ (ادمن)", nil) consumes=7
	do
		R[120] = "نسخ (ادمن)"
		R[119]["Text"] = R[120]
		R[120] = UP["Color3"]
		R[120] = R[120]["fromRGB"]
		R[121] = 255
		R[122] = 215
		R[123] = 0
		-- fallthrough -> 3036
	end
	-- [3036] OP_128 (120, 123, 2) consumes=7
	do
		R[120] = R[120](UNPACKREG(R, 121, 123))
		R[119]["BackgroundColor3"] = R[120]
		R[120] = UP["Color3"]
		R[120] = R[120]["new"]
		R[121] = 0
		R[122] = 0
		R[123] = 0
		-- fallthrough -> 3043
	end
	-- [3043] OP_131 (120, 123, 2) consumes=5
	do
		R[120] = R[120](UNPACKREG(R, 121, 123))
		R[119]["TextColor3"] = R[120]
		R[120] = UP["Enum"]
		R[120] = R[120]["Font"]
		R[120] = R[120]["SourceSansBold"]
		-- fallthrough -> 3048
	end
	-- [3048] OP_241 (119, "Font", 120) consumes=7
	do
		R[119]["Font"] = R[120]
		R[120] = 18
		R[119]["TextSize"] = R[120]
		R[119]["Parent"] = R[105]
		R[120] = UP["Instance"]
		R[120] = R[120]["new"]
		R[121] = "TextButton"
		-- fallthrough -> 3055
	end
	-- [3055] OP_202 (120, 2, 2) consumes=1
	do
		R[120] = R[120](R[121])
		-- fallthrough -> 3056
	end
	-- [3056] OP_287 (121, "CopyCommandButton2", nil) consumes=7
	do
		R[121] = "CopyCommandButton2"
		R[120]["Name"] = R[121]
		R[121] = UP["UDim2"]
		R[121] = R[121]["new"]
		R[122] = 0.3
		R[123] = 0
		R[124] = 0.07
		-- fallthrough -> 3063
	end
	-- [3063] OP_307 (125, 0, nil) consumes=7
	do
		R[125] = 0
		R[121] = R[121](UNPACKREG(R, 122, 125))
		R[120]["Size"] = R[121]
		R[121] = UP["UDim2"]
		R[121] = R[121]["new"]
		R[122] = 0.01
		R[123] = 0
		-- fallthrough -> 3070
	end
	-- [3070] OP_16 (124, 0.67, nil) consumes=2
	do
		R[124] = 0.67
		R[125] = 0
		-- fallthrough -> 3072
	end
	-- [3072] OP_107 (121, 125, 2) consumes=1
	do
		R[121] = R[121](UNPACKREG(R, 122, 125))
		-- fallthrough -> 3073
	end
	-- [3073] OP_30 (120, "Position", 121) consumes=1
	do
		R[120]["Position"] = R[121]
		-- fallthrough -> 3074
	end
	-- [3074] OP_287 (121, "نسخ 2 (ادمن)", nil) consumes=7
	do
		R[121] = "نسخ 2 (ادمن)"
		R[120]["Text"] = R[121]
		R[121] = UP["Color3"]
		R[121] = R[121]["fromRGB"]
		R[122] = 255
		R[123] = 215
		R[124] = 0
		-- fallthrough -> 3081
	end
	-- [3081] OP_128 (121, 124, 2) consumes=7
	do
		R[121] = R[121](UNPACKREG(R, 122, 124))
		R[120]["BackgroundColor3"] = R[121]
		R[121] = UP["Color3"]
		R[121] = R[121]["new"]
		R[122] = 0
		R[123] = 0
		R[124] = 0
		-- fallthrough -> 3088
	end
	-- [3088] OP_131 (121, 124, 2) consumes=5
	do
		R[121] = R[121](UNPACKREG(R, 122, 124))
		R[120]["TextColor3"] = R[121]
		R[121] = UP["Enum"]
		R[121] = R[121]["Font"]
		R[121] = R[121]["SourceSansBold"]
		-- fallthrough -> 3093
	end
	-- [3093] OP_241 (120, "Font", 121) consumes=7
	do
		R[120]["Font"] = R[121]
		R[121] = 18
		R[120]["TextSize"] = R[121]
		R[120]["Parent"] = R[105]
		R[121] = UP["Instance"]
		R[121] = R[121]["new"]
		R[122] = "TextButton"
		-- fallthrough -> 3100
	end
	-- [3100] OP_202 (121, 2, 2) consumes=1
	do
		R[121] = R[121](R[122])
		-- fallthrough -> 3101
	end
	-- [3101] OP_287 (122, "FlangCommandButton", nil) consumes=7
	do
		R[122] = "FlangCommandButton"
		R[121]["Name"] = R[122]
		R[122] = UP["UDim2"]
		R[122] = R[122]["new"]
		R[123] = 0.3
		R[124] = 0
		R[125] = 0.07
		-- fallthrough -> 3108
	end
	-- [3108] OP_307 (126, 0, nil) consumes=7
	do
		R[126] = 0
		R[122] = R[122](UNPACKREG(R, 123, 126))
		R[121]["Size"] = R[122]
		R[122] = UP["UDim2"]
		R[122] = R[122]["new"]
		R[123] = 0.32
		R[124] = 0
		-- fallthrough -> 3115
	end
	-- [3115] OP_16 (125, 0.58, nil) consumes=2
	do
		R[125] = 0.58
		R[126] = 0
		-- fallthrough -> 3117
	end
	-- [3117] OP_107 (122, 126, 2) consumes=1
	do
		R[122] = R[122](UNPACKREG(R, 123, 126))
		-- fallthrough -> 3118
	end
	-- [3118] OP_30 (121, "Position", 122) consumes=1
	do
		R[121]["Position"] = R[122]
		-- fallthrough -> 3119
	end
	-- [3119] OP_287 (122, "فلنج", nil) consumes=7
	do
		R[122] = "فلنج"
		R[121]["Text"] = R[122]
		R[122] = UP["Color3"]
		R[122] = R[122]["fromRGB"]
		R[123] = 255
		R[124] = 215
		R[125] = 0
		-- fallthrough -> 3126
	end
	-- [3126] OP_128 (122, 125, 2) consumes=7
	do
		R[122] = R[122](UNPACKREG(R, 123, 125))
		R[121]["BackgroundColor3"] = R[122]
		R[122] = UP["Color3"]
		R[122] = R[122]["new"]
		R[123] = 0
		R[124] = 0
		R[125] = 0
		-- fallthrough -> 3133
	end
	-- [3133] OP_131 (122, 125, 2) consumes=5
	do
		R[122] = R[122](UNPACKREG(R, 123, 125))
		R[121]["TextColor3"] = R[122]
		R[122] = UP["Enum"]
		R[122] = R[122]["Font"]
		R[122] = R[122]["SourceSansBold"]
		-- fallthrough -> 3138
	end
	-- [3138] OP_241 (121, "Font", 122) consumes=7
	do
		R[121]["Font"] = R[122]
		R[122] = 18
		R[121]["TextSize"] = R[122]
		R[121]["Parent"] = R[105]
		R[122] = UP["Instance"]
		R[122] = R[122]["new"]
		R[123] = "TextButton"
		-- fallthrough -> 3145
	end
	-- [3145] OP_202 (122, 2, 2) consumes=1
	do
		R[122] = R[122](R[123])
		-- fallthrough -> 3146
	end
	-- [3146] OP_263 (123, "UDim2", nil) consumes=7
	do
		R[123] = UP["UDim2"]
		R[123] = R[123]["new"]
		R[124] = 0.3
		R[125] = 0
		R[126] = 0.07
		R[127] = 0
		R[123] = R[123](UNPACKREG(R, 124, 127))
		-- fallthrough -> 3153
	end
	-- [3153] OP_283 (122, "Size", 123) consumes=7
	do
		R[122]["Size"] = R[123]
		R[123] = UP["UDim2"]
		R[123] = R[123]["new"]
		R[124] = 0.32
		R[125] = 0
		R[126] = 0.67
		R[127] = 0
		-- fallthrough -> 3160
	end
	-- [3160] OP_107 (123, 127, 2) consumes=1
	do
		R[123] = R[123](UNPACKREG(R, 124, 127))
		-- fallthrough -> 3161
	end
	-- [3161] OP_30 (122, "Position", 123) consumes=1
	do
		R[122]["Position"] = R[123]
		-- fallthrough -> 3162
	end
	-- [3162] OP_287 (123, "re(ادمن)", nil) consumes=7
	do
		R[123] = "re(ادمن)"
		R[122]["Text"] = R[123]
		R[123] = UP["Color3"]
		R[123] = R[123]["fromRGB"]
		R[124] = 255
		R[125] = 215
		R[126] = 0
		-- fallthrough -> 3169
	end
	-- [3169] OP_128 (123, 126, 2) consumes=7
	do
		R[123] = R[123](UNPACKREG(R, 124, 126))
		R[122]["BackgroundColor3"] = R[123]
		R[123] = UP["Color3"]
		R[123] = R[123]["new"]
		R[124] = 0
		R[125] = 0
		R[126] = 0
		-- fallthrough -> 3176
	end
	-- [3176] OP_131 (123, 126, 2) consumes=5
	do
		R[123] = R[123](UNPACKREG(R, 124, 126))
		R[122]["TextColor3"] = R[123]
		R[123] = UP["Enum"]
		R[123] = R[123]["Font"]
		R[123] = R[123]["SourceSansBold"]
		-- fallthrough -> 3181
	end
	-- [3181] OP_241 (122, "Font", 123) consumes=7
	do
		R[122]["Font"] = R[123]
		R[123] = 18
		R[122]["TextSize"] = R[123]
		R[122]["Parent"] = R[105]
		R[123] = UP["Instance"]
		R[123] = R[123]["new"]
		R[124] = "TextButton"
		-- fallthrough -> 3188
	end
	-- [3188] OP_202 (123, 2, 2) consumes=1
	do
		R[123] = R[123](R[124])
		-- fallthrough -> 3189
	end
	-- [3189] OP_263 (124, "UDim2", nil) consumes=7
	do
		R[124] = UP["UDim2"]
		R[124] = R[124]["new"]
		R[125] = 0.3
		R[126] = 0
		R[127] = 0.07
		R[128] = 0
		R[124] = R[124](UNPACKREG(R, 125, 128))
		-- fallthrough -> 3196
	end
	-- [3196] OP_283 (123, "Size", 124) consumes=7
	do
		R[123]["Size"] = R[124]
		R[124] = UP["UDim2"]
		R[124] = R[124]["new"]
		R[125] = 0.32
		R[126] = 0
		R[127] = 0.76
		R[128] = 0
		-- fallthrough -> 3203
	end
	-- [3203] OP_107 (124, 128, 2) consumes=1
	do
		R[124] = R[124](UNPACKREG(R, 125, 128))
		-- fallthrough -> 3204
	end
	-- [3204] OP_30 (123, "Position", 124) consumes=1
	do
		R[123]["Position"] = R[124]
		-- fallthrough -> 3205
	end
	-- [3205] OP_287 (124, "(ادمن)تغير سكن", nil) consumes=7
	do
		R[124] = "(ادمن)تغير سكن"
		R[123]["Text"] = R[124]
		R[124] = UP["Color3"]
		R[124] = R[124]["fromRGB"]
		R[125] = 255
		R[126] = 215
		R[127] = 0
		-- fallthrough -> 3212
	end
	-- [3212] OP_128 (124, 127, 2) consumes=7
	do
		R[124] = R[124](UNPACKREG(R, 125, 127))
		R[123]["BackgroundColor3"] = R[124]
		R[124] = UP["Color3"]
		R[124] = R[124]["new"]
		R[125] = 0
		R[126] = 0
		R[127] = 0
		-- fallthrough -> 3219
	end
	-- [3219] OP_131 (124, 127, 2) consumes=5
	do
		R[124] = R[124](UNPACKREG(R, 125, 127))
		R[123]["TextColor3"] = R[124]
		R[124] = UP["Enum"]
		R[124] = R[124]["Font"]
		R[124] = R[124]["SourceSansBold"]
		-- fallthrough -> 3224
	end
	-- [3224] OP_241 (123, "Font", 124) consumes=7
	do
		R[123]["Font"] = R[124]
		R[124] = 18
		R[123]["TextSize"] = R[124]
		R[123]["Parent"] = R[105]
		R[124] = UP["Instance"]
		R[124] = R[124]["new"]
		R[125] = "TextButton"
		-- fallthrough -> 3231
	end
	-- [3231] OP_202 (124, 2, 2) consumes=1
	do
		R[124] = R[124](R[125])
		-- fallthrough -> 3232
	end
	-- [3232] OP_263 (125, "UDim2", nil) consumes=7
	do
		R[125] = UP["UDim2"]
		R[125] = R[125]["new"]
		R[126] = 0.3
		R[127] = 0
		R[128] = 0.07
		R[129] = 0
		R[125] = R[125](UNPACKREG(R, 126, 129))
		-- fallthrough -> 3239
	end
	-- [3239] OP_283 (124, "Size", 125) consumes=7
	do
		R[124]["Size"] = R[125]
		R[125] = UP["UDim2"]
		R[125] = R[125]["new"]
		R[126] = 0.32
		R[127] = 0
		R[128] = 0.49
		R[129] = 0
		-- fallthrough -> 3246
	end
	-- [3246] OP_107 (125, 129, 2) consumes=1
	do
		R[125] = R[125](UNPACKREG(R, 126, 129))
		-- fallthrough -> 3247
	end
	-- [3247] OP_30 (124, "Position", 125) consumes=1
	do
		R[124]["Position"] = R[125]
		-- fallthrough -> 3248
	end
	-- [3248] OP_287 (125, "قتل كلبش", nil) consumes=7
	do
		R[125] = "قتل كلبش"
		R[124]["Text"] = R[125]
		R[125] = UP["Color3"]
		R[125] = R[125]["fromRGB"]
		R[126] = 255
		R[127] = 215
		R[128] = 0
		-- fallthrough -> 3255
	end
	-- [3255] OP_128 (125, 128, 2) consumes=7
	do
		R[125] = R[125](UNPACKREG(R, 126, 128))
		R[124]["BackgroundColor3"] = R[125]
		R[125] = UP["Color3"]
		R[125] = R[125]["new"]
		R[126] = 0
		R[127] = 0
		R[128] = 0
		-- fallthrough -> 3262
	end
	-- [3262] OP_131 (125, 128, 2) consumes=5
	do
		R[125] = R[125](UNPACKREG(R, 126, 128))
		R[124]["TextColor3"] = R[125]
		R[125] = UP["Enum"]
		R[125] = R[125]["Font"]
		R[125] = R[125]["SourceSansBold"]
		-- fallthrough -> 3267
	end
	-- [3267] OP_241 (124, "Font", 125) consumes=7
	do
		R[124]["Font"] = R[125]
		R[125] = 18
		R[124]["TextSize"] = R[125]
		R[124]["Parent"] = R[105]
		R[125] = UP["Instance"]
		R[125] = R[125]["new"]
		R[126] = "TextButton"
		-- fallthrough -> 3274
	end
	-- [3274] OP_202 (125, 2, 2) consumes=1
	do
		R[125] = R[125](R[126])
		-- fallthrough -> 3275
	end
	-- [3275] OP_263 (126, "UDim2", nil) consumes=7
	do
		R[126] = UP["UDim2"]
		R[126] = R[126]["new"]
		R[127] = 0.3
		R[128] = 0
		R[129] = 0.07
		R[130] = 0
		R[126] = R[126](UNPACKREG(R, 127, 130))
		-- fallthrough -> 3282
	end
	-- [3282] OP_283 (125, "Size", 126) consumes=7
	do
		R[125]["Size"] = R[126]
		R[126] = UP["UDim2"]
		R[126] = R[126]["new"]
		R[127] = 0.01
		R[128] = 0
		R[129] = 0.58
		R[130] = 0
		-- fallthrough -> 3289
	end
	-- [3289] OP_107 (126, 130, 2) consumes=1
	do
		R[126] = R[126](UNPACKREG(R, 127, 130))
		-- fallthrough -> 3290
	end
	-- [3290] OP_30 (125, "Position", 126) consumes=1
	do
		R[125]["Position"] = R[126]
		-- fallthrough -> 3291
	end
	-- [3291] OP_85 (125, "Text", "قريبا") consumes=1
	do
		R[125]["Text"] = "قريبا"
		-- fallthrough -> 3292
	end
	-- [3292] OP_252 (126, "Color3", nil) consumes=7
	do
		R[126] = UP["Color3"]
		R[126] = R[126]["fromRGB"]
		R[127] = 255
		R[128] = 215
		R[129] = 0
		R[126] = R[126](UNPACKREG(R, 127, 129))
		R[125]["BackgroundColor3"] = R[126]
		-- fallthrough -> 3299
	end
	-- [3299] OP_252 (126, "Color3", nil) consumes=7
	do
		R[126] = UP["Color3"]
		R[126] = R[126]["new"]
		R[127] = 0
		R[128] = 0
		R[129] = 0
		R[126] = R[126](UNPACKREG(R, 127, 129))
		R[125]["TextColor3"] = R[126]
		-- fallthrough -> 3306
	end
	-- [3306] OP_246 (126, "Enum", nil) consumes=1
	do
		R[126] = UP["Enum"]
		-- fallthrough -> 3307
	end
	-- [3307] OP_148 (126, 126, "Font") consumes=1
	do
		R[126] = R[126]["Font"]
		-- fallthrough -> 3308
	end
	-- [3308] OP_148 (126, 126, "SourceSansBold") consumes=1
	do
		R[126] = R[126]["SourceSansBold"]
		-- fallthrough -> 3309
	end
	-- [3309] OP_241 (125, "Font", 126) consumes=7
	do
		R[125]["Font"] = R[126]
		R[126] = 18
		R[125]["TextSize"] = R[126]
		R[125]["Parent"] = R[105]
		R[126] = UP["Instance"]
		R[126] = R[126]["new"]
		R[127] = "TextButton"
		-- fallthrough -> 3316
	end
	-- [3316] OP_202 (126, 2, 2) consumes=1
	do
		R[126] = R[126](R[127])
		-- fallthrough -> 3317
	end
	-- [3317] OP_263 (127, "UDim2", nil) consumes=7
	do
		R[127] = UP["UDim2"]
		R[127] = R[127]["new"]
		R[128] = 0.3
		R[129] = 0
		R[130] = 0.07
		R[131] = 0
		R[127] = R[127](UNPACKREG(R, 128, 131))
		-- fallthrough -> 3324
	end
	-- [3324] OP_283 (126, "Size", 127) consumes=7
	do
		R[126]["Size"] = R[127]
		R[127] = UP["UDim2"]
		R[127] = R[127]["new"]
		R[128] = 0.01
		R[129] = 0
		R[130] = 0.49
		R[131] = 0
		-- fallthrough -> 3331
	end
	-- [3331] OP_107 (127, 131, 2) consumes=1
	do
		R[127] = R[127](UNPACKREG(R, 128, 131))
		-- fallthrough -> 3332
	end
	-- [3332] OP_30 (126, "Position", 127) consumes=1
	do
		R[126]["Position"] = R[127]
		-- fallthrough -> 3333
	end
	-- [3333] OP_85 (126, "Text", "قريبا") consumes=1
	do
		R[126]["Text"] = "قريبا"
		-- fallthrough -> 3334
	end
	-- [3334] OP_252 (127, "Color3", nil) consumes=7
	do
		R[127] = UP["Color3"]
		R[127] = R[127]["fromRGB"]
		R[128] = 255
		R[129] = 215
		R[130] = 0
		R[127] = R[127](UNPACKREG(R, 128, 130))
		R[126]["BackgroundColor3"] = R[127]
		-- fallthrough -> 3341
	end
	-- [3341] OP_252 (127, "Color3", nil) consumes=7
	do
		R[127] = UP["Color3"]
		R[127] = R[127]["new"]
		R[128] = 0
		R[129] = 0
		R[130] = 0
		R[127] = R[127](UNPACKREG(R, 128, 130))
		R[126]["TextColor3"] = R[127]
		-- fallthrough -> 3348
	end
	-- [3348] OP_246 (127, "Enum", nil) consumes=1
	do
		R[127] = UP["Enum"]
		-- fallthrough -> 3349
	end
	-- [3349] OP_148 (127, 127, "Font") consumes=1
	do
		R[127] = R[127]["Font"]
		-- fallthrough -> 3350
	end
	-- [3350] OP_148 (127, 127, "SourceSansBold") consumes=1
	do
		R[127] = R[127]["SourceSansBold"]
		-- fallthrough -> 3351
	end
	-- [3351] OP_241 (126, "Font", 127) consumes=7
	do
		R[126]["Font"] = R[127]
		R[127] = 18
		R[126]["TextSize"] = R[127]
		R[126]["Parent"] = R[105]
		R[127] = UP["Instance"]
		R[127] = R[127]["new"]
		R[128] = "TextButton"
		-- fallthrough -> 3358
	end
	-- [3358] OP_202 (127, 2, 2) consumes=1
	do
		R[127] = R[127](R[128])
		-- fallthrough -> 3359
	end
	-- [3359] OP_287 (128, "FingerButton", nil) consumes=7
	do
		R[128] = "FingerButton"
		R[127]["Name"] = R[128]
		R[128] = UP["UDim2"]
		R[128] = R[128]["new"]
		R[129] = 0.09
		R[130] = 0
		R[131] = 0.1
		-- fallthrough -> 3366
	end
	-- [3366] OP_307 (132, 0, nil) consumes=7
	do
		R[132] = 0
		R[128] = R[128](UNPACKREG(R, 129, 132))
		R[127]["Size"] = R[128]
		R[128] = UP["UDim2"]
		R[128] = R[128]["new"]
		R[129] = 0.53
		R[130] = 0
		-- fallthrough -> 3373
	end
	-- [3373] OP_16 (131, 0.01, nil) consumes=2
	do
		R[131] = 0.01
		R[132] = 0
		-- fallthrough -> 3375
	end
	-- [3375] OP_107 (128, 132, 2) consumes=1
	do
		R[128] = R[128](UNPACKREG(R, 129, 132))
		-- fallthrough -> 3376
	end
	-- [3376] OP_30 (127, "Position", 128) consumes=1
	do
		R[127]["Position"] = R[128]
		-- fallthrough -> 3377
	end
	-- [3377] OP_287 (128, "الإصبع", nil) consumes=7
	do
		R[128] = "الإصبع"
		R[127]["Text"] = R[128]
		R[128] = UP["Color3"]
		R[128] = R[128]["fromRGB"]
		R[129] = 255
		R[130] = 100
		R[131] = 100
		-- fallthrough -> 3384
	end
	-- [3384] OP_128 (128, 131, 2) consumes=7
	do
		R[128] = R[128](UNPACKREG(R, 129, 131))
		R[127]["BackgroundColor3"] = R[128]
		R[128] = UP["Color3"]
		R[128] = R[128]["new"]
		R[129] = 1
		R[130] = 1
		R[131] = 1
		-- fallthrough -> 3391
	end
	-- [3391] OP_131 (128, 131, 2) consumes=5
	do
		R[128] = R[128](UNPACKREG(R, 129, 131))
		R[127]["TextColor3"] = R[128]
		R[128] = UP["Enum"]
		R[128] = R[128]["Font"]
		R[128] = R[128]["SourceSansBold"]
		-- fallthrough -> 3396
	end
	-- [3396] OP_241 (127, "Font", 128) consumes=7
	do
		R[127]["Font"] = R[128]
		R[128] = 18
		R[127]["TextSize"] = R[128]
		R[127]["Parent"] = R[105]
		R[128] = UP["Instance"]
		R[128] = R[128]["new"]
		R[129] = "TextButton"
		-- fallthrough -> 3403
	end
	-- [3403] OP_202 (128, 2, 2) consumes=1
	do
		R[128] = R[128](R[129])
		-- fallthrough -> 3404
	end
	-- [3404] OP_263 (129, "UDim2", nil) consumes=7
	do
		R[129] = UP["UDim2"]
		R[129] = R[129]["new"]
		R[130] = 0.3
		R[131] = 0
		R[132] = 0.07
		R[133] = 0
		R[129] = R[129](UNPACKREG(R, 130, 133))
		-- fallthrough -> 3411
	end
	-- [3411] OP_283 (128, "Size", 129) consumes=7
	do
		R[128]["Size"] = R[129]
		R[129] = UP["UDim2"]
		R[129] = R[129]["new"]
		R[130] = 0.01
		R[131] = 0
		R[132] = 0.85
		R[133] = 0
		-- fallthrough -> 3418
	end
	-- [3418] OP_107 (129, 133, 2) consumes=1
	do
		R[129] = R[129](UNPACKREG(R, 130, 133))
		-- fallthrough -> 3419
	end
	-- [3419] OP_30 (128, "Position", 129) consumes=1
	do
		R[128]["Position"] = R[129]
		-- fallthrough -> 3420
	end
	-- [3420] OP_287 (129, "نسخ أدمن تلقائي", nil) consumes=7
	do
		R[129] = "نسخ أدمن تلقائي"
		R[128]["Text"] = R[129]
		R[129] = UP["Color3"]
		R[129] = R[129]["fromRGB"]
		R[130] = 255
		R[131] = 215
		R[132] = 0
		-- fallthrough -> 3427
	end
	-- [3427] OP_128 (129, 132, 2) consumes=7
	do
		R[129] = R[129](UNPACKREG(R, 130, 132))
		R[128]["BackgroundColor3"] = R[129]
		R[129] = UP["Color3"]
		R[129] = R[129]["new"]
		R[130] = 0
		R[131] = 0
		R[132] = 0
		-- fallthrough -> 3434
	end
	-- [3434] OP_131 (129, 132, 2) consumes=5
	do
		R[129] = R[129](UNPACKREG(R, 130, 132))
		R[128]["TextColor3"] = R[129]
		R[129] = UP["Enum"]
		R[129] = R[129]["Font"]
		R[129] = R[129]["SourceSansBold"]
		-- fallthrough -> 3439
	end
	-- [3439] OP_241 (128, "Font", 129) consumes=7
	do
		R[128]["Font"] = R[129]
		R[129] = 18
		R[128]["TextSize"] = R[129]
		R[128]["Parent"] = R[105]
		R[129] = UP["Instance"]
		R[129] = R[129]["new"]
		R[130] = "TextButton"
		-- fallthrough -> 3446
	end
	-- [3446] OP_202 (129, 2, 2) consumes=1
	do
		R[129] = R[129](R[130])
		-- fallthrough -> 3447
	end
	-- [3447] OP_263 (130, "UDim2", nil) consumes=7
	do
		R[130] = UP["UDim2"]
		R[130] = R[130]["new"]
		R[131] = 0.3
		R[132] = 0
		R[133] = 0.07
		R[134] = 0
		R[130] = R[130](UNPACKREG(R, 131, 134))
		-- fallthrough -> 3454
	end
	-- [3454] OP_283 (129, "Size", 130) consumes=7
	do
		R[129]["Size"] = R[130]
		R[130] = UP["UDim2"]
		R[130] = R[130]["new"]
		R[131] = 0.32
		R[132] = 0
		R[133] = 0.85
		R[134] = 0
		-- fallthrough -> 3461
	end
	-- [3461] OP_107 (130, 134, 2) consumes=1
	do
		R[130] = R[130](UNPACKREG(R, 131, 134))
		-- fallthrough -> 3462
	end
	-- [3462] OP_30 (129, "Position", 130) consumes=1
	do
		R[129]["Position"] = R[130]
		-- fallthrough -> 3463
	end
	-- [3463] OP_287 (130, "إخفاء اللاعب", nil) consumes=7
	do
		R[130] = "إخفاء اللاعب"
		R[129]["Text"] = R[130]
		R[130] = UP["Color3"]
		R[130] = R[130]["fromRGB"]
		R[131] = 255
		R[132] = 215
		R[133] = 0
		-- fallthrough -> 3470
	end
	-- [3470] OP_128 (130, 133, 2) consumes=7
	do
		R[130] = R[130](UNPACKREG(R, 131, 133))
		R[129]["BackgroundColor3"] = R[130]
		R[130] = UP["Color3"]
		R[130] = R[130]["new"]
		R[131] = 0
		R[132] = 0
		R[133] = 0
		-- fallthrough -> 3477
	end
	-- [3477] OP_102 (130, 133, 2) consumes=10
	do
		R[130] = R[130](UNPACKREG(R, 131, 133))
		R[129]["TextColor3"] = R[130]
		R[130] = UP["Enum"]
		R[130] = R[130]["Font"]
		R[130] = R[130]["SourceSansBold"]
		R[129]["Font"] = R[130]
		R[130] = 18
		R[129]["TextSize"] = R[130]
		R[129]["Parent"] = R[105]
		R[130] = nil
		-- fallthrough -> 3487
	end
	-- [3487] OP_73 (131, 52, 4) consumes=5
	do
		-- unresolved VM temporary: nil = {R, 130}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 107}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 110}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 109}
		c[(#c + 1)] = {}
		R[131] = CLOSURE(PROTO[52], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 3492
	end
	-- [3492] OP_268 (132, 0, 0) consumes=1
	do
		R[132] = false
		-- fallthrough -> 3493
	end
	-- [3493] OP_73 (133, 66, 4) consumes=5
	do
		-- unresolved VM temporary: nil = {R, 132}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 127}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 106}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 131}
		c[(#c + 1)] = {}
		R[133] = CLOSURE(PROTO[66], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 3498
	end
	-- [3498] OP_304 (134, 127, "MouseButton1Click") consumes=2
	do
		R[134] = R[127]["MouseButton1Click"]
		R[135] = R[134]
		R[134] = R[134]["Connect"]
		-- fallthrough -> 3500
	end
	-- [3500] OP_350 (136, 133, 0) consumes=1
	do
		R[136] = R[133]
		-- fallthrough -> 3501
	end
	-- [3501] OP_262 (134, 136, 1) consumes=1
	do
		R[134](UNPACKREG(R, 135, 136))
		-- fallthrough -> 3502
	end
	-- [3502] OP_268 (134, 0, 0) consumes=1
	do
		R[134] = false
		-- fallthrough -> 3503
	end
	-- [3503] OP_268 (135, 0, 0) consumes=1
	do
		R[135] = false
		-- fallthrough -> 3504
	end
	-- [3504] OP_249 (136, 1, nil) consumes=1
	do
		R[136] = 1
		-- fallthrough -> 3505
	end
	-- [3505] OP_226 (137, 139, 0) consumes=1
	do
		R[137] = nil
		R[138] = nil
		R[139] = nil
		-- fallthrough -> 3506
	end
	-- [3506] OP_16 (140, 0, nil) consumes=2
	do
		R[140] = 0
		R[141] = 100
		-- fallthrough -> 3508
	end
	-- [3508] OP_73 (142, 30, 3) consumes=4
	do
		-- unresolved VM temporary: nil = {R, 139}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 140}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 141}
		c[(#c + 1)] = {}
		R[142] = CLOSURE(PROTO[30], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 3512
	end
	-- [3512] OP_73 (143, 25, 1) consumes=2
	do
		-- unresolved VM temporary: nil = {R, 142}
		c[(#c + 1)] = {}
		R[143] = CLOSURE(PROTO[25], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 3514
	end
	-- [3514] OP_73 (144, 41, 2) consumes=3
	do
		-- unresolved VM temporary: nil = {R, 143}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 142}
		c[(#c + 1)] = {}
		R[144] = CLOSURE(PROTO[41], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 3517
	end
	-- [3517] OP_73 (145, 16, 1) consumes=2
	do
		-- unresolved VM temporary: nil = {R, 144}
		c[(#c + 1)] = {}
		R[145] = CLOSURE(PROTO[16], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 3519
	end
	-- [3519] OP_73 (146, 35, 2) consumes=3
	do
		-- unresolved VM temporary: nil = {R, 143}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 142}
		c[(#c + 1)] = {}
		R[146] = CLOSURE(PROTO[35], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 3522
	end
	-- [3522] OP_73 (147, 18, 2) consumes=3
	do
		-- unresolved VM temporary: nil = {R, 143}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 142}
		c[(#c + 1)] = {}
		R[147] = CLOSURE(PROTO[18], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 3525
	end
	-- [3525] OP_304 (148, 118, "MouseButton1Click") consumes=2
	do
		R[148] = R[118]["MouseButton1Click"]
		R[149] = R[148]
		R[148] = R[148]["Connect"]
		-- fallthrough -> 3527
	end
	-- [3527] OP_73 (150, 1, 2) consumes=3
	do
		-- unresolved VM temporary: nil = {R, 130}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 144}
		c[(#c + 1)] = {}
		R[150] = CLOSURE(PROTO[1], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 3530
	end
	-- [3530] OP_191 (148, 150, 1) consumes=3
	do
		R[148](UNPACKREG(R, 149, 150))
		R[148] = R[117]["MouseButton1Click"]
		R[149] = R[148]
		R[148] = R[148]["Connect"]
		-- fallthrough -> 3533
	end
	-- [3533] OP_73 (150, 65, 2) consumes=3
	do
		-- unresolved VM temporary: nil = {R, 130}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 145}
		c[(#c + 1)] = {}
		R[150] = CLOSURE(PROTO[65], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 3536
	end
	-- [3536] OP_191 (148, 150, 1) consumes=3
	do
		R[148](UNPACKREG(R, 149, 150))
		R[148] = R[121]["MouseButton1Click"]
		R[149] = R[148]
		R[148] = R[148]["Connect"]
		-- fallthrough -> 3539
	end
	-- [3539] OP_73 (150, 15, 2) consumes=3
	do
		-- unresolved VM temporary: nil = {R, 130}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 147}
		c[(#c + 1)] = {}
		R[150] = CLOSURE(PROTO[15], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 3542
	end
	-- [3542] OP_191 (148, 150, 1) consumes=3
	do
		R[148](UNPACKREG(R, 149, 150))
		R[148] = R[124]["MouseButton1Click"]
		R[149] = R[148]
		R[148] = R[148]["Connect"]
		-- fallthrough -> 3545
	end
	-- [3545] OP_73 (150, 17, 2) consumes=3
	do
		-- unresolved VM temporary: nil = {R, 130}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 146}
		c[(#c + 1)] = {}
		R[150] = CLOSURE(PROTO[17], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 3548
	end
	-- [3548] OP_262 (148, 150, 1) consumes=1
	do
		R[148](UNPACKREG(R, 149, 150))
		-- fallthrough -> 3549
	end
	-- [3549] OP_296 (148, 32, nil) consumes=1
	do
		R[148] = CLOSURE(PROTO[32], nil, UP)
		-- fallthrough -> 3550
	end
	-- [3550] OP_268 (149, 0, 0) consumes=1
	do
		R[149] = false
		-- fallthrough -> 3551
	end
	-- [3551] OP_16 (150, 5, nil) consumes=2
	do
		R[150] = 5
		R[151] = ""
		-- fallthrough -> 3553
	end
	-- [3553] OP_73 (152, 22, 4) consumes=5
	do
		-- unresolved VM temporary: nil = {R, 149}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 130}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 151}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 150}
		c[(#c + 1)] = {}
		R[152] = CLOSURE(PROTO[22], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 3558
	end
	-- [3558] OP_304 (153, 128, "MouseButton1Click") consumes=2
	do
		R[153] = R[128]["MouseButton1Click"]
		R[154] = R[153]
		R[153] = R[153]["Connect"]
		-- fallthrough -> 3560
	end
	-- [3560] OP_73 (155, 31, 4) consumes=5
	do
		-- unresolved VM temporary: nil = {R, 130}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 149}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 128}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 152}
		c[(#c + 1)] = {}
		R[155] = CLOSURE(PROTO[31], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 3565
	end
	-- [3565] OP_262 (153, 155, 1) consumes=1
	do
		R[153](UNPACKREG(R, 154, 155))
		-- fallthrough -> 3566
	end
	-- [3566] OP_268 (153, 0, 0) consumes=1
	do
		R[153] = false
		-- fallthrough -> 3567
	end
	-- [3567] OP_249 (154, 1, nil) consumes=1
	do
		R[154] = 1
		-- fallthrough -> 3568
	end
	-- [3568] OP_73 (155, 46, 3) consumes=4
	do
		-- unresolved VM temporary: nil = {R, 153}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 130}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 154}
		c[(#c + 1)] = {}
		R[155] = CLOSURE(PROTO[46], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 3572
	end
	-- [3572] OP_304 (156, 111, "MouseButton1Click") consumes=2
	do
		R[156] = R[111]["MouseButton1Click"]
		R[157] = R[156]
		R[156] = R[156]["Connect"]
		-- fallthrough -> 3574
	end
	-- [3574] OP_73 (158, 11, 4) consumes=5
	do
		-- unresolved VM temporary: nil = {R, 130}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 153}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 111}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 155}
		c[(#c + 1)] = {}
		R[158] = CLOSURE(PROTO[11], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 3579
	end
	-- [3579] OP_262 (156, 158, 1) consumes=1
	do
		R[156](UNPACKREG(R, 157, 158))
		-- fallthrough -> 3580
	end
	-- [3580] OP_268 (156, 0, 0) consumes=1
	do
		R[156] = false
		-- fallthrough -> 3581
	end
	-- [3581] OP_249 (157, 1, nil) consumes=1
	do
		R[157] = 1
		-- fallthrough -> 3582
	end
	-- [3582] OP_73 (158, 13, 3) consumes=4
	do
		-- unresolved VM temporary: nil = {R, 156}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 130}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 157}
		c[(#c + 1)] = {}
		R[158] = CLOSURE(PROTO[13], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 3586
	end
	-- [3586] OP_304 (159, 129, "MouseButton1Click") consumes=2
	do
		R[159] = R[129]["MouseButton1Click"]
		R[160] = R[159]
		R[159] = R[159]["Connect"]
		-- fallthrough -> 3588
	end
	-- [3588] OP_73 (161, 4, 4) consumes=5
	do
		-- unresolved VM temporary: nil = {R, 130}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 156}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 129}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 158}
		c[(#c + 1)] = {}
		R[161] = CLOSURE(PROTO[4], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 3593
	end
	-- [3593] OP_191 (159, 161, 1) consumes=3
	do
		R[159](UNPACKREG(R, 160, 161))
		R[159] = R[119]["MouseButton1Click"]
		R[160] = R[159]
		R[159] = R[159]["Connect"]
		-- fallthrough -> 3596
	end
	-- [3596] OP_73 (161, 19, 1) consumes=2
	do
		-- unresolved VM temporary: nil = {R, 130}
		c[(#c + 1)] = {}
		R[161] = CLOSURE(PROTO[19], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 3598
	end
	-- [3598] OP_262 (159, 161, 1) consumes=1
	do
		R[159](UNPACKREG(R, 160, 161))
		-- fallthrough -> 3599
	end
	-- [3599] OP_268 (159, 0, 0) consumes=1
	do
		R[159] = false
		-- fallthrough -> 3600
	end
	-- [3600] OP_304 (160, 112, "MouseButton1Click") consumes=2
	do
		R[160] = R[112]["MouseButton1Click"]
		R[161] = R[160]
		R[160] = R[160]["Connect"]
		-- fallthrough -> 3602
	end
	-- [3602] OP_73 (162, 36, 3) consumes=4
	do
		-- unresolved VM temporary: nil = {R, 130}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 159}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 112}
		c[(#c + 1)] = {}
		R[162] = CLOSURE(PROTO[36], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 3606
	end
	-- [3606] OP_191 (160, 162, 1) consumes=3
	do
		R[160](UNPACKREG(R, 161, 162))
		R[160] = R[120]["MouseButton1Click"]
		R[161] = R[160]
		R[160] = R[160]["Connect"]
		-- fallthrough -> 3609
	end
	-- [3609] OP_73 (162, 26, 1) consumes=2
	do
		-- unresolved VM temporary: nil = {R, 130}
		c[(#c + 1)] = {}
		R[162] = CLOSURE(PROTO[26], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 3611
	end
	-- [3611] OP_191 (160, 162, 1) consumes=3
	do
		R[160](UNPACKREG(R, 161, 162))
		R[160] = R[122]["MouseButton1Click"]
		R[161] = R[160]
		R[160] = R[160]["Connect"]
		-- fallthrough -> 3614
	end
	-- [3614] OP_73 (162, 37, 1) consumes=2
	do
		-- unresolved VM temporary: nil = {R, 130}
		c[(#c + 1)] = {}
		R[162] = CLOSURE(PROTO[37], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 3616
	end
	-- [3616] OP_262 (160, 162, 1) consumes=1
	do
		R[160](UNPACKREG(R, 161, 162))
		-- fallthrough -> 3617
	end
	-- [3617] OP_344 (160, 3, 0) consumes=1
	do
		R[160] = {}
		-- fallthrough -> 3618
	end
	-- [3618] OP_16 (161, "miri", nil) consumes=2
	do
		R[161] = "miri"
		R[162] = "jjjsssmmm"
		-- fallthrough -> 3620
	end
	-- [3620] OP_153 (163, "Mone_bon1", nil) consumes=2
	do
		R[163] = "Mone_bon1"
		S.kUqtKEKt(R[160], R[161])
		S.kUqtKEKt(R[160], R[162])
		S.kUqtKEKt(R[160], R[163])
		-- fallthrough -> 3622
	end
	-- [3622] OP_226 (161, 161, 0) consumes=1
	do
		R[161] = nil
		-- fallthrough -> 3623
	end
	-- [3623] OP_304 (162, 123, "MouseButton1Click") consumes=2
	do
		R[162] = R[123]["MouseButton1Click"]
		R[163] = R[162]
		R[162] = R[162]["Connect"]
		-- fallthrough -> 3625
	end
	-- [3625] OP_73 (164, 54, 3) consumes=4
	do
		-- unresolved VM temporary: nil = {R, 130}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 160}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 161}
		c[(#c + 1)] = {}
		R[164] = CLOSURE(PROTO[54], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 3629
	end
	-- [3629] OP_191 (162, 164, 1) consumes=3
	do
		R[162](UNPACKREG(R, 163, 164))
		R[162] = R[115]["MouseButton1Click"]
		R[163] = R[162]
		R[162] = R[162]["Connect"]
		-- fallthrough -> 3632
	end
	-- [3632] OP_73 (164, 38, 1) consumes=2
	do
		-- unresolved VM temporary: nil = {R, 130}
		c[(#c + 1)] = {}
		R[164] = CLOSURE(PROTO[38], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 3634
	end
	-- [3634] OP_262 (162, 164, 1) consumes=1
	do
		R[162](UNPACKREG(R, 163, 164))
		-- fallthrough -> 3635
	end
	-- [3635] OP_268 (162, 0, 0) consumes=1
	do
		R[162] = false
		-- fallthrough -> 3636
	end
	-- [3636] OP_344 (163, 0, 0) consumes=1
	do
		R[163] = {}
		-- fallthrough -> 3637
	end
	-- [3637] OP_73 (164, 44, 2) consumes=3
	do
		-- unresolved VM temporary: nil = {R, 163}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 162}
		c[(#c + 1)] = {}
		R[164] = CLOSURE(PROTO[44], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 3640
	end
	-- [3640] OP_304 (165, 116, "MouseButton1Click") consumes=2
	do
		R[165] = R[116]["MouseButton1Click"]
		R[166] = R[165]
		R[165] = R[165]["Connect"]
		-- fallthrough -> 3642
	end
	-- [3642] OP_73 (167, 12, 5) consumes=6
	do
		-- unresolved VM temporary: nil = {R, 130}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 162}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 116}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 164}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 163}
		c[(#c + 1)] = {}
		R[167] = CLOSURE(PROTO[12], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 3648
	end
	-- [3648] OP_256 (165, 167, 1) consumes=4
	do
		R[165](UNPACKREG(R, 166, 167))
		R[165] = "FocusLost"
		R[165] = R[106][R[165]]
		R[166] = R[165]
		R[165] = R[165]["Connect"]
		-- fallthrough -> 3652
	end
	-- [3652] OP_73 (167, 42, 2) consumes=3
	do
		-- unresolved VM temporary: nil = {R, 106}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 131}
		c[(#c + 1)] = {}
		R[167] = CLOSURE(PROTO[42], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 3655
	end
	-- [3655] OP_191 (165, 167, 1) consumes=3
	do
		R[165](UNPACKREG(R, 166, 167))
		R[165] = R[111]["MouseButton1Click"]
		R[166] = R[165]
		R[165] = R[165]["Connect"]
		-- fallthrough -> 3658
	end
	-- [3658] OP_73 (167, 7, 1) consumes=2
	do
		-- unresolved VM temporary: nil = {R, 130}
		c[(#c + 1)] = {}
		R[167] = CLOSURE(PROTO[7], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 3660
	end
	-- [3660] OP_262 (165, 167, 1) consumes=1
	do
		R[165](UNPACKREG(R, 166, 167))
		-- fallthrough -> 3661
	end
	-- [3661] OP_296 (165, 43, nil) consumes=1
	do
		R[165] = CLOSURE(PROTO[43], nil, UP)
		-- fallthrough -> 3662
	end
	-- [3662] OP_268 (166, 0, 0) consumes=1
	do
		R[166] = false
		-- fallthrough -> 3663
	end
	-- [3663] OP_226 (167, 167, 0) consumes=1
	do
		R[167] = nil
		-- fallthrough -> 3664
	end
	-- [3664] OP_249 (168, 1.5, nil) consumes=1
	do
		R[168] = 1.5
		-- fallthrough -> 3665
	end
	-- [3665] OP_268 (169, 1, 0) consumes=1
	do
		R[169] = true
		-- fallthrough -> 3666
	end
	-- [3666] OP_16 (170, 0.2, nil) consumes=2
	do
		R[170] = 0.2
		R[171] = 0.5
		-- fallthrough -> 3668
	end
	-- [3668] OP_249 (172, 2.5, nil) consumes=1
	do
		R[172] = 2.5
		-- fallthrough -> 3669
	end
	-- [3669] OP_73 (173, 8, 10) consumes=11
	do
		-- unresolved VM temporary: nil = {R, 165}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 167}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 166}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 130}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 114}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 169}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 168}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 170}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 171}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 172}
		c[(#c + 1)] = {}
		R[173] = CLOSURE(PROTO[8], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 3680
	end
	-- [3680] OP_268 (174, 0, 0) consumes=1
	do
		R[174] = false
		-- fallthrough -> 3681
	end
	-- [3681] OP_249 (175, "10714068222", nil) consumes=1
	do
		R[175] = "10714068222"
		-- fallthrough -> 3682
	end
	-- [3682] OP_226 (176, 176, 0) consumes=1
	do
		R[176] = nil
		-- fallthrough -> 3683
	end
	-- [3683] OP_73 (177, 47, 6) consumes=7
	do
		-- unresolved VM temporary: nil = {R, 165}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 176}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 174}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 175}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 130}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 113}
		c[(#c + 1)] = {}
		R[177] = CLOSURE(PROTO[47], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 3690
	end
	-- [3690] OP_304 (178, 114, "MouseButton1Click") consumes=2
	do
		R[178] = R[114]["MouseButton1Click"]
		R[179] = R[178]
		R[178] = R[178]["Connect"]
		-- fallthrough -> 3692
	end
	-- [3692] OP_73 (180, 33, 5) consumes=6
	do
		-- unresolved VM temporary: nil = {R, 166}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 114}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 130}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 173}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 167}
		c[(#c + 1)] = {}
		R[180] = CLOSURE(PROTO[33], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 3698
	end
	-- [3698] OP_191 (178, 180, 1) consumes=3
	do
		R[178](UNPACKREG(R, 179, 180))
		R[178] = R[113]["MouseButton1Click"]
		R[179] = R[178]
		R[178] = R[178]["Connect"]
		-- fallthrough -> 3701
	end
	-- [3701] OP_73 (180, 60, 5) consumes=6
	do
		-- unresolved VM temporary: nil = {R, 174}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 113}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 130}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 177}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 176}
		c[(#c + 1)] = {}
		R[180] = CLOSURE(PROTO[60], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 3707
	end
	-- [3707] OP_262 (178, 180, 1) consumes=1
	do
		R[178](UNPACKREG(R, 179, 180))
		-- fallthrough -> 3708
	end
	-- [3708] OP_30 (13, "ضحيه", 104) consumes=1
	do
		R[13]["ضحيه"] = R[104]
		-- fallthrough -> 3709
	end
	-- [3709] OP_296 (178, 48, nil) consumes=1
	do
		R[178] = CLOSURE(PROTO[48], nil, UP)
		-- fallthrough -> 3710
	end
	-- [3710] OP_13 (179, 178, 0) consumes=4
	do
		R[179] = R[178]
		R[180] = R[11]
		R[181] = R[13]
		R[179](UNPACKREG(R, 180, 181))
		-- fallthrough -> 3714
	end
	-- [3714] OP_73 (179, 67, 1) consumes=2
	do
		-- unresolved VM temporary: nil = {R, 13}
		c[(#c + 1)] = {}
		R[179] = CLOSURE(PROTO[67], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 3716
	end
	-- [3716] OP_246 (180, "pairs", nil) consumes=1
	do
		R[180] = UP["pairs"]
		-- fallthrough -> 3717
	end
	-- [3717] OP_63 (181, 12, 0) consumes=3
	do
		R[181] = R[12]
		R[180] = R[180](R[181])
		R[181] = nil
		R[182] = nil
		pc = 3774
		pc = 3775
		-- fallthrough -> 3720
	end
	-- [3720] OP_246 (185, "Instance", nil) consumes=1
	do
		R[185] = UP["Instance"]
		-- fallthrough -> 3721
	end
	-- [3721] OP_248 (185, 185, "new") consumes=7
	do
		R[185] = R[185]["new"]
		R[186] = "TextButton"
		R[185] = R[185](R[186])
		R[186] = UP["UDim2"]
		R[186] = R[186]["new"]
		R[187] = 0
		R[188] = 80
		-- fallthrough -> 3728
	end
	-- [3728] OP_16 (189, 0, nil) consumes=2
	do
		R[189] = 0
		R[190] = 25
		-- fallthrough -> 3730
	end
	-- [3730] OP_218 (186, 190, 2) consumes=5
	do
		R[186] = R[186](UNPACKREG(R, 187, 190))
		R[185]["Size"] = R[186]
		R[186] = R[184]["Position"]
		R[185]["Position"] = R[186]
		R[186] = R[184]["Text"]
		-- fallthrough -> 3735
	end
	-- [3735] OP_345 (185, "Text", 186) consumes=7
	do
		R[185]["Text"] = R[186]
		R[186] = UP["Color3"]
		R[186] = R[186]["new"]
		R[187] = 0.1
		R[188] = 0.1
		R[189] = 0.1
		R[186] = R[186](UNPACKREG(R, 187, 189))
		-- fallthrough -> 3742
	end
	-- [3742] OP_345 (185, "BackgroundColor3", 186) consumes=7
	do
		R[185]["BackgroundColor3"] = R[186]
		R[186] = UP["Color3"]
		R[186] = R[186]["new"]
		R[187] = 1
		R[188] = 1
		R[189] = 1
		R[186] = R[186](UNPACKREG(R, 187, 189))
		-- fallthrough -> 3749
	end
	-- [3749] OP_30 (185, "TextColor3", 186) consumes=1
	do
		R[185]["TextColor3"] = R[186]
		-- fallthrough -> 3750
	end
	-- [3750] OP_246 (186, "Enum", nil) consumes=1
	do
		R[186] = UP["Enum"]
		-- fallthrough -> 3751
	end
	-- [3751] OP_148 (186, 186, "Font") consumes=1
	do
		R[186] = R[186]["Font"]
		-- fallthrough -> 3752
	end
	-- [3752] OP_148 (186, 186, "SourceSansBold") consumes=1
	do
		R[186] = R[186]["SourceSansBold"]
		-- fallthrough -> 3753
	end
	-- [3753] OP_241 (185, "Font", 186) consumes=7
	do
		R[185]["Font"] = R[186]
		R[186] = 12
		R[185]["TextSize"] = R[186]
		R[185]["Parent"] = R[10]
		R[186] = UP["Instance"]
		R[186] = R[186]["new"]
		R[187] = "UICorner"
		-- fallthrough -> 3760
	end
	-- [3760] OP_202 (186, 2, 2) consumes=1
	do
		R[186] = R[186](R[187])
		-- fallthrough -> 3761
	end
	-- [3761] OP_184 (187, "UDim", nil) consumes=7
	do
		R[187] = UP["UDim"]
		R[187] = R[187]["new"]
		R[188] = 0.2
		R[189] = 0
		R[187] = R[187](UNPACKREG(R, 188, 189))
		R[186]["CornerRadius"] = R[187]
		R[186]["Parent"] = R[185]
		-- fallthrough -> 3768
	end
	-- [3768] OP_304 (187, 185, "MouseButton1Click") consumes=2
	do
		R[187] = R[185]["MouseButton1Click"]
		R[188] = R[187]
		R[187] = R[187]["Connect"]
		-- fallthrough -> 3770
	end
	-- [3770] OP_73 (189, 34, 2) consumes=3
	do
		-- unresolved VM temporary: nil = {R, 179}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 184}
		c[(#c + 1)] = {}
		R[189] = CLOSURE(PROTO[34], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 3773
	end
	-- [3773] OP_262 (187, 189, 1) consumes=1
	do
		R[187](UNPACKREG(R, 188, 189))
		-- fallthrough -> 3774
	end
	-- [3774] OP_44 (183, 0, 0) consumes=1
	do
		for d = 1, #c, 1 do
			for l = 0, #c[d], 1 do
				if (c[d][l][1] == R) and (c[d][l][2] >= 183) then
					({})[c[d][l][2]] = c[d][l][1][c[d][l][2]]
					c[d][l][1] = {}
				end
			end
		end
		-- fallthrough -> 3775
	end
	-- [3775] OP_175 (180, 3719, 2) consumes=1
	do
		R[183] = R[180](R[181], R[182])
		R[184] = nil
		if R[180](R[181], R[182]) then
			R[182] = R[180](R[181], R[182])
			pc = 3719
		else
		end
		-- fallthrough -> 3776
	end
	-- [3776] OP_93 (0, 3719, nil) consumes=1
	do
		pc = 3719
		pc = 3720
		-- fallthrough -> 3777
	end
	-- [3777] OP_148 (180, 7, "MouseButton1Click") consumes=1
	do
		R[180] = R[7]["MouseButton1Click"]
		-- fallthrough -> 3778
	end
	-- [3778] OP_270 (180, 180, "Connect") consumes=1
	do
		R[181] = R[180]
		R[180] = R[180]["Connect"]
		-- fallthrough -> 3779
	end
	-- [3779] OP_73 (182, 24, 1) consumes=2
	do
		-- unresolved VM temporary: nil = {R, 1}
		c[(#c + 1)] = {}
		R[182] = CLOSURE(PROTO[24], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 3781
	end
	-- [3781] OP_262 (180, 182, 1) consumes=1
	do
		R[180](UNPACKREG(R, 181, 182))
		-- fallthrough -> 3782
	end
	-- [3782] OP_226 (180, 183, 0) consumes=1
	do
		R[180] = nil
		R[181] = nil
		R[182] = nil
		R[183] = nil
		-- fallthrough -> 3783
	end
	-- [3783] OP_73 (184, 14, 3) consumes=4
	do
		-- unresolved VM temporary: nil = {R, 182}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 2}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 183}
		c[(#c + 1)] = {}
		R[184] = CLOSURE(PROTO[14], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 3787
	end
	-- [3787] OP_249 (185, "InputBegan", nil) consumes=1
	do
		R[185] = "InputBegan"
		-- fallthrough -> 3788
	end
	-- [3788] OP_222 (185, 4, 185) consumes=1
	do
		R[185] = R[4][R[185]]
		-- fallthrough -> 3789
	end
	-- [3789] OP_270 (185, 185, "Connect") consumes=1
	do
		R[186] = R[185]
		R[185] = R[185]["Connect"]
		-- fallthrough -> 3790
	end
	-- [3790] OP_73 (187, 61, 4) consumes=5
	do
		-- unresolved VM temporary: nil = {R, 180}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 182}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 183}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 2}
		c[(#c + 1)] = {}
		R[187] = CLOSURE(PROTO[61], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 3795
	end
	-- [3795] OP_256 (185, 187, 1) consumes=4
	do
		R[185](UNPACKREG(R, 186, 187))
		R[185] = "InputChanged"
		R[185] = R[4][R[185]]
		R[186] = R[185]
		R[185] = R[185]["Connect"]
		-- fallthrough -> 3799
	end
	-- [3799] OP_73 (187, 49, 1) consumes=2
	do
		-- unresolved VM temporary: nil = {R, 181}
		c[(#c + 1)] = {}
		R[187] = CLOSURE(PROTO[49], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 3801
	end
	-- [3801] OP_29 (185, 187, 1) consumes=7
	do
		R[185](UNPACKREG(R, 186, 187))
		R[185] = UP["game"]
		R[186] = R[185]
		R[185] = R[185]["GetService"]
		R[187] = "UserInputService"
		R[185] = R[185](UNPACKREG(R, 186, 187))
		R[186] = "InputChanged"
		R[185] = R[185][R[186]]
		-- fallthrough -> 3808
	end
	-- [3808] OP_270 (185, 185, "Connect") consumes=1
	do
		R[186] = R[185]
		R[185] = R[185]["Connect"]
		-- fallthrough -> 3809
	end
	-- [3809] OP_73 (187, 45, 3) consumes=4
	do
		-- unresolved VM temporary: nil = {R, 181}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 180}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 184}
		c[(#c + 1)] = {}
		R[187] = CLOSURE(PROTO[45], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 3813
	end
	-- [3813] OP_262 (185, 187, 1) consumes=1
	do
		R[185](UNPACKREG(R, 186, 187))
		-- fallthrough -> 3814
	end
	-- [3814] OP_246 (185, "loadstring", nil) consumes=1
	do
		R[185] = UP["loadstring"]
		-- fallthrough -> 3815
	end
	-- [3815] OP_246 (186, "game", nil) consumes=1
	do
		R[186] = UP["game"]
		-- fallthrough -> 3816
	end
	-- [3816] OP_167 (188, "HttpGet", nil) consumes=10
	do
		R[188] = "HttpGet"
		R[187] = R[186]
		R[186] = R[186][R[188]]
		R[188] = "https://raw.githubusercontent.com/fscript4u/yeayeaiam-good/refs/heads/main/nice%20day"
		R[185] = R[185](UNPACKREG(R, 186, 185))
		R[185]()
		R[185] = UP["loadstring"]
		R[186] = UP["game"]
		R[188] = "HttpGet"
		R[187] = R[186]
		R[186] = R[186][R[188]]
		-- fallthrough -> 3826
	end
	-- [3826] OP_249 (188, "https://raw.githubusercontent.com/fscript4u/ranks/refs/heads/main/rank", nil) consumes=1
	do
		R[188] = "https://raw.githubusercontent.com/fscript4u/ranks/refs/heads/main/rank"
		-- fallthrough -> 3827
	end
	-- [3827] OP_271 (186, 188, 0) consumes=1
	do
		for l = 186, ((d + 186) - 1), 1 do
			R[l] = PACK(R[186](UNPACKREG(R, 187, 188)))[1]
		end
		-- fallthrough -> 3828
	end
	-- [3828] OP_109 (185, 0, 2) consumes=1
	do
		R[185] = R[185](UNPACKREG(R, 186, b))
		-- fallthrough -> 3829
	end
	-- [3829] OP_158 (185, 1, 1) consumes=1
	do
		R[185]()
		-- fallthrough -> 3830
	end
	-- [3830] OP_246 (185, "loadstring", nil) consumes=1
	do
		R[185] = UP["loadstring"]
		-- fallthrough -> 3831
	end
	-- [3831] OP_246 (186, "game", nil) consumes=1
	do
		R[186] = UP["game"]
		-- fallthrough -> 3832
	end
	-- [3832] OP_249 (188, "HttpGet", nil) consumes=1
	do
		R[188] = "HttpGet"
		-- fallthrough -> 3833
	end
	-- [3833] OP_223 (186, 186, 188) consumes=1
	do
		R[187] = R[186]
		R[186] = R[186][R[188]]
		-- fallthrough -> 3834
	end
	-- [3834] OP_249 (188, "https://raw.githubusercontent.com/fscript4u/blacklist/refs/heads/main/sdsdsd", nil) consumes=1
	do
		R[188] = "https://raw.githubusercontent.com/fscript4u/blacklist/refs/heads/main/sdsdsd"
		-- fallthrough -> 3835
	end
	-- [3835] OP_271 (186, 188, 0) consumes=1
	do
		for l = 186, ((d + 186) - 1), 1 do
			R[l] = PACK(R[186](UNPACKREG(R, 187, 188)))[1]
		end
		-- fallthrough -> 3836
	end
	-- [3836] OP_109 (185, 0, 2) consumes=1
	do
		R[185] = R[185](UNPACKREG(R, 186, b))
		-- fallthrough -> 3837
	end
	-- [3837] OP_158 (185, 1, 1) consumes=1
	do
		R[185]()
		-- fallthrough -> 3838
	end
	-- [3838] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 3839
	end
end

local function proto_root_0(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_249 (1, "¹§ℭ㉿s㉿x㉿__", nil) consumes=1
	do
		R[1] = "¹§ℭ㉿s㉿x㉿__"
		-- fallthrough -> 2
	end
	-- [2] OP_270 (2, 0, "gsub") consumes=1
	do
		R[3] = R[0]
		R[2] = R[0]["gsub"]
		-- fallthrough -> 3
	end
	-- [3] OP_16 (4, "%s", nil) consumes=2
	do
		R[4] = "%s"
		R[5] = "_"
		-- fallthrough -> 5
	end
	-- [5] OP_189 (2, 5, 2) consumes=4
	do
		R[2] = R[2](UNPACKREG(R, 3, 5))
		R[3] = "__㉿s㉿x㉿ℭ§¹"
		R[1] = ((R[1] .. R[2]) .. R[3])
		-- RETURN R[1]
		-- fallthrough -> 9
	end
	-- [9] OP_1 (0, 1, 0) consumes=5
	do
		R[0] = R[0](UNPACKREG(R, 1, 1))
		R[I_1.A][I_1.B] = R[I_1.C]
		R[I_2.A] = UP[I_2.B]
		R[I_3.A] = R[I_3.B][I_3.C]
		R[I_4.A] = R[I_4.B][I_4.C]
		-- fallthrough -> 14
	end
end

local function proto_root_1(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_207 (0, 0, 0) consumes=1
	do
		R[0] = ENV[0]
		-- fallthrough -> 2
	end
	-- [2] OP_321 (0, 4, 1) consumes=1
	do
		if not R[0] then
		else
			pc = 4
		end
		-- fallthrough -> 3
	end
	-- [3] OP_93 (0, 4, nil) consumes=1
	do
		pc = 4
		pc = 5
		-- fallthrough -> 4
	end
	-- [4] OP_93 (0, 8, nil) consumes=1
	do
		pc = 8
		pc = 9
		-- fallthrough -> 5
	end
	-- [5] OP_246 (0, "pcall", nil) consumes=1
	do
		R[0] = UP["pcall"]
		-- fallthrough -> 6
	end
	-- [6] OP_207 (1, 1, 0) consumes=1
	do
		R[1] = ENV[1]
		-- fallthrough -> 7
	end
	-- [7] OP_207 (2, 0, 0) consumes=1
	do
		R[2] = ENV[0]
		-- fallthrough -> 8
	end
	-- [8] OP_262 (0, 2, 1) consumes=1
	do
		R[0](UNPACKREG(R, 1, 2))
		-- fallthrough -> 9
	end
	-- [9] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 10
	end
end

local function proto_root_2(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_249 (0, "https://gist.githubusercontent.com/amroffaads/19aea763f78be1b3a040903afd298094/raw/e96a69580117ec88c92b9d7bb3520169e92c5711/%25D8%25B3%25D9%2583%25D8%25B1%25D8%25A8%25D8%25AA%2520%25D8%25A7%25D9%2584%25D8%25B3%25D8%25A8%25D8%25A7%25D9%2585%2520%25D8%25A7%25D9%2584%25D8%25AE%25D8%25A7%25D8%25B5", nil) consumes=1
	do
		R[0] =
			"https://gist.githubusercontent.com/amroffaads/19aea763f78be1b3a040903afd298094/raw/e96a69580117ec88c92b9d7bb3520169e92c5711/%25D8%25B3%25D9%2583%25D8%25B1%25D8%25A8%25D8%25AA%2520%25D8%25A7%25D9%2584%25D8%25B3%25D8%25A8%25D8%25A7%25D9%2585%2520%25D8%25A7%25D9%2584%25D8%25AE%25D8%25A7%25D8%25B5"
		-- fallthrough -> 2
	end
	-- [2] OP_246 (1, "pcall", nil) consumes=1
	do
		R[1] = UP["pcall"]
		-- fallthrough -> 3
	end
	-- [3] OP_73 (2, 0, 1) consumes=2
	do
		-- unresolved VM temporary: nil = {R, 0}
		c[(#c + 1)] = {}
		R[2] = CLOSURE(PROTO[0], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 5
	end
	-- [5] OP_209 (1, 2, 2) consumes=1
	do
		R[1] = R[1](R[2])
		R[2] = nil
		-- fallthrough -> 6
	end
	-- [6] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 7
	end
end

local function proto_root_2_0(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_244 (0, "game", nil) consumes=8
	do
		R[0] = UP["game"]
		R[1] = R[0]
		R[0] = R[0]["HttpGet"]
		R[2] = ENV[0]
		R[0] = R[0](UNPACKREG(R, 1, 2))
		R[1] = UP["loadstring"]
		R[2] = R[0]
		R[1] = R[1](R[2])
		R[1]()
		-- RETURN
		-- fallthrough -> 9
	end
	-- [9] OP_18 (0, 1, 0) consumes=10
	do
		R[0] = R[1][0]
		for d = (I_1.B + 1), I_1.C, 1 do
		end
		R[I_1.A] = R[I_1.B]
		R[I_2.A](UNPACKREG(R, (I_2.A + 1), I_2.B))
		R[I_3.A] = ENV[I_3.B]
		R[I_4.A] = R[I_4.B][I_4.C]
		R[I_5.A] = UP[I_5.B]
		R[I_6.A] = R[I_6.B][I_6.C]
		R[I_7.A] = R[I_7.B]
		R[I_8.A] = R[I_8.A](R[(I_8.A + 1)])
		R[I_9.A][I_9.B] = R[I_9.C]
		-- fallthrough -> 19
	end
end

local function proto_root_3(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_207 (0, 0, 0) consumes=1
	do
		R[0] = ENV[0]
		-- fallthrough -> 2
	end
	-- [2] OP_148 (0, 0, "AnimationId") consumes=1
	do
		R[0] = R[0]["AnimationId"]
		-- fallthrough -> 3
	end
	-- [3] OP_84 (0, 40, 0) consumes=1
	do
		if R[0] then
		else
			pc = 40
		end
		-- fallthrough -> 4
	end
	-- [4] OP_93 (0, 40, nil) consumes=1
	do
		pc = 40
		pc = 41
		-- fallthrough -> 5
	end
	-- [5] OP_246 (0, "game", nil) consumes=1
	do
		R[0] = UP["game"]
		-- fallthrough -> 6
	end
	-- [6] OP_148 (0, 0, "Players") consumes=1
	do
		R[0] = R[0]["Players"]
		-- fallthrough -> 7
	end
	-- [7] OP_148 (0, 0, "LocalPlayer") consumes=1
	do
		R[0] = R[0]["LocalPlayer"]
		-- fallthrough -> 8
	end
	-- [8] OP_148 (1, 0, "Character") consumes=1
	do
		R[1] = R[0]["Character"]
		-- fallthrough -> 9
	end
	-- [9] OP_321 (1, 13, 1) consumes=1
	do
		if not R[1] then
		else
			pc = 13
		end
		-- fallthrough -> 10
	end
	-- [10] OP_93 (0, 13, nil) consumes=1
	do
		pc = 13
		pc = 14
		-- fallthrough -> 11
	end
	-- [11] OP_148 (1, 0, "CharacterAdded") consumes=1
	do
		R[1] = R[0]["CharacterAdded"]
		-- fallthrough -> 12
	end
	-- [12] OP_270 (1, 1, "Wait") consumes=1
	do
		R[2] = R[1]
		R[1] = R[1]["Wait"]
		-- fallthrough -> 13
	end
	-- [13] OP_202 (1, 2, 2) consumes=1
	do
		R[1] = R[1](R[2])
		-- fallthrough -> 14
	end
	-- [14] OP_246 (2, "Instance", nil) consumes=1
	do
		R[2] = UP["Instance"]
		-- fallthrough -> 15
	end
	-- [15] OP_148 (2, 2, "new") consumes=1
	do
		R[2] = R[2]["new"]
		-- fallthrough -> 16
	end
	-- [16] OP_249 (3, "Animation", nil) consumes=1
	do
		R[3] = "Animation"
		-- fallthrough -> 17
	end
	-- [17] OP_202 (2, 2, 2) consumes=1
	do
		R[2] = R[2](R[3])
		-- fallthrough -> 18
	end
	-- [18] OP_207 (3, 0, 0) consumes=1
	do
		R[3] = ENV[0]
		-- fallthrough -> 19
	end
	-- [19] OP_148 (3, 3, "AnimationId") consumes=1
	do
		R[3] = R[3]["AnimationId"]
		-- fallthrough -> 20
	end
	-- [20] OP_30 (2, "AnimationId", 3) consumes=1
	do
		R[2]["AnimationId"] = R[3]
		-- fallthrough -> 21
	end
	-- [21] OP_270 (3, 1, "WaitForChild") consumes=1
	do
		R[4] = R[1]
		R[3] = R[1]["WaitForChild"]
		-- fallthrough -> 22
	end
	-- [22] OP_249 (5, "Humanoid", nil) consumes=1
	do
		R[5] = "Humanoid"
		-- fallthrough -> 23
	end
	-- [23] OP_107 (3, 5, 2) consumes=1
	do
		R[3] = R[3](UNPACKREG(R, 4, 5))
		-- fallthrough -> 24
	end
	-- [24] OP_270 (4, 3, "LoadAnimation") consumes=1
	do
		R[5] = R[3]
		R[4] = R[3]["LoadAnimation"]
		-- fallthrough -> 25
	end
	-- [25] OP_350 (6, 2, 0) consumes=1
	do
		R[6] = R[2]
		-- fallthrough -> 26
	end
	-- [26] OP_0 (4, 6, 2) consumes=6
	do
		R[4] = R[4](UNPACKREG(R, 5, 6))
		R[6] = R[4]
		R[5] = R[4]["Play"]
		R[5](R[6])
		R[5] = ENV[0]
		R[5] = R[5]["Duration"]
		if not R[5] then
		else
			pc = 33
		end
		-- fallthrough -> 32
	end
	-- [32] OP_93 (0, 33, nil) consumes=1
	do
		pc = 33
		pc = 34
		-- fallthrough -> 33
	end
	-- [33] OP_93 (0, 49, nil) consumes=1
	do
		pc = 49
		pc = 50
		-- fallthrough -> 34
	end
	-- [34] OP_246 (5, "wait", nil) consumes=1
	do
		R[5] = UP["wait"]
		-- fallthrough -> 35
	end
	-- [35] OP_94 (6, 0, 0) consumes=6
	do
		R[6] = ENV[0]
		R[6] = R[6]["Duration"]
		R[5](R[6])
		R[6] = R[4]
		R[5] = R[4]["Stop"]
		R[5](R[6])
		pc = 49
		pc = 50
		-- fallthrough -> 41
	end
	-- [41] OP_207 (0, 0, 0) consumes=1
	do
		R[0] = ENV[0]
		-- fallthrough -> 42
	end
	-- [42] OP_148 (0, 0, "Script") consumes=1
	do
		R[0] = R[0]["Script"]
		-- fallthrough -> 43
	end
	-- [43] OP_84 (0, 49, 0) consumes=1
	do
		if R[0] then
		else
			pc = 49
		end
		-- fallthrough -> 44
	end
	-- [44] OP_93 (0, 49, nil) consumes=1
	do
		pc = 49
		pc = 50
		-- fallthrough -> 45
	end
	-- [45] OP_226 (0, 0, 0) consumes=1
	do
		R[0] = nil
		-- fallthrough -> 46
	end
	-- [46] OP_246 (1, "pcall", nil) consumes=1
	do
		R[1] = UP["pcall"]
		-- fallthrough -> 47
	end
	-- [47] OP_73 (2, 0, 1) consumes=2
	do
		-- unresolved VM temporary: nil = {ENV, 0}
		c[(#c + 1)] = {}
		R[2] = CLOSURE(PROTO[0], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 49
	end
	-- [49] OP_201 (1, 2, 1) consumes=1
	do
		R[1](R[2])
		-- fallthrough -> 50
	end
	-- [50] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 51
	end
end

local function proto_root_3_0(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_164 (0, "loadstring", nil) consumes=5
	do
		R[0] = UP["loadstring"]
		R[1] = ENV[0]
		R[1] = R[1]["Script"]
		R[0] = R[0](R[1])
		R[0]()
		-- RETURN
		-- fallthrough -> 6
	end
	-- [6] OP_16 (0, 1, 0) consumes=2
	do
		R[0] = 1
		R[I_1.A] = I_1.B
		-- fallthrough -> 8
	end
end

local function proto_root_4(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_207 (0, 0, 0) consumes=1
	do
		R[0] = ENV[0]
		-- fallthrough -> 2
	end
	-- [2] OP_84 (0, 34, 0) consumes=1
	do
		if R[0] then
		else
			pc = 34
		end
		-- fallthrough -> 3
	end
	-- [3] OP_93 (0, 34, nil) consumes=1
	do
		pc = 34
		pc = 35
		-- fallthrough -> 4
	end
	-- [4] OP_207 (0, 1, 0) consumes=1
	do
		R[0] = ENV[1]
		-- fallthrough -> 5
	end
	-- [5] OP_193 (0, 0, 0) consumes=1
	do
		R[0] = not R[0]
		-- fallthrough -> 6
	end
	-- [6] OP_58 (0, 1, 0) consumes=1
	do
		ENV[1] = R[0]
		-- fallthrough -> 7
	end
	-- [7] OP_207 (0, 2, 0) consumes=1
	do
		R[0] = ENV[2]
		-- fallthrough -> 8
	end
	-- [8] OP_207 (1, 1, 0) consumes=1
	do
		R[1] = ENV[1]
		-- fallthrough -> 9
	end
	-- [9] OP_84 (1, 18, 0) consumes=1
	do
		if R[1] then
		else
			pc = 18
		end
		-- fallthrough -> 10
	end
	-- [10] OP_93 (0, 18, nil) consumes=1
	do
		pc = 18
		pc = 19
		-- fallthrough -> 11
	end
	-- [11] OP_246 (1, "Color3", nil) consumes=1
	do
		R[1] = UP["Color3"]
		-- fallthrough -> 12
	end
	-- [12] OP_355 (1, 1, "fromRGB") consumes=6
	do
		R[1] = R[1]["fromRGB"]
		R[2] = 255
		R[3] = 0
		R[4] = 0
		R[1] = R[1](UNPACKREG(R, 2, 4))
		if not R[1] then
		else
			pc = 24
		end
		-- fallthrough -> 18
	end
	-- [18] OP_93 (0, 24, nil) consumes=1
	do
		pc = 24
		pc = 25
		-- fallthrough -> 19
	end
	-- [19] OP_246 (1, "Color3", nil) consumes=1
	do
		R[1] = UP["Color3"]
		-- fallthrough -> 20
	end
	-- [20] OP_148 (1, 1, "fromRGB") consumes=1
	do
		R[1] = R[1]["fromRGB"]
		-- fallthrough -> 21
	end
	-- [21] OP_16 (2, 255, nil) consumes=2
	do
		R[2] = 255
		R[3] = 215
		-- fallthrough -> 23
	end
	-- [23] OP_249 (4, 0, nil) consumes=1
	do
		R[4] = 0
		-- fallthrough -> 24
	end
	-- [24] OP_107 (1, 4, 2) consumes=1
	do
		R[1] = R[1](UNPACKREG(R, 2, 4))
		-- fallthrough -> 25
	end
	-- [25] OP_30 (0, "BackgroundColor3", 1) consumes=1
	do
		R[0]["BackgroundColor3"] = R[1]
		-- fallthrough -> 26
	end
	-- [26] OP_207 (0, 1, 0) consumes=1
	do
		R[0] = ENV[1]
		-- fallthrough -> 27
	end
	-- [27] OP_321 (0, 29, 1) consumes=1
	do
		if not R[0] then
		else
			pc = 29
		end
		-- fallthrough -> 28
	end
	-- [28] OP_93 (0, 29, nil) consumes=1
	do
		pc = 29
		pc = 30
		-- fallthrough -> 29
	end
	-- [29] OP_93 (0, 34, nil) consumes=1
	do
		pc = 34
		pc = 35
		-- fallthrough -> 30
	end
	-- [30] OP_246 (0, "coroutine", nil) consumes=1
	do
		R[0] = UP["coroutine"]
		-- fallthrough -> 31
	end
	-- [31] OP_148 (0, 0, "wrap") consumes=1
	do
		R[0] = R[0]["wrap"]
		-- fallthrough -> 32
	end
	-- [32] OP_207 (1, 3, 0) consumes=1
	do
		R[1] = ENV[3]
		-- fallthrough -> 33
	end
	-- [33] OP_202 (0, 2, 2) consumes=1
	do
		R[0] = R[0](R[1])
		-- fallthrough -> 34
	end
	-- [34] OP_158 (0, 1, 1) consumes=1
	do
		R[0]()
		-- fallthrough -> 35
	end
	-- [35] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 36
	end
end

local function proto_root_5(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_207 (0, 0, 0) consumes=1
	do
		R[0] = ENV[0]
		-- fallthrough -> 2
	end
	-- [2] OP_344 (1, 1, 0) consumes=1
	do
		R[1] = {}
		-- fallthrough -> 3
	end
	-- [3] OP_153 (2, 4592243049, nil) consumes=2
	do
		R[2] = 4592243049
		S.kUqtKEKt(R[1], R[2])
		-- fallthrough -> 5
	end
	-- [5] OP_249 (2, "Char", nil) consumes=1
	do
		R[2] = "Char"
		-- fallthrough -> 6
	end
	-- [6] OP_262 (0, 2, 1) consumes=1
	do
		R[0](UNPACKREG(R, 1, 2))
		-- fallthrough -> 7
	end
	-- [7] OP_207 (0, 0, 0) consumes=1
	do
		R[0] = ENV[0]
		-- fallthrough -> 8
	end
	-- [8] OP_344 (1, 1, 0) consumes=1
	do
		R[1] = {}
		-- fallthrough -> 9
	end
	-- [9] OP_153 (2, "No", nil) consumes=2
	do
		R[2] = "No"
		S.kUqtKEKt(R[1], R[2])
		-- fallthrough -> 11
	end
	-- [11] OP_249 (2, "Char", nil) consumes=1
	do
		R[2] = "Char"
		-- fallthrough -> 12
	end
	-- [12] OP_262 (0, 2, 1) consumes=1
	do
		R[0](UNPACKREG(R, 1, 2))
		-- fallthrough -> 13
	end
	-- [13] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 14
	end
end

local function proto_root_6(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_190 (2, "game", nil) consumes=7
	do
		R[2] = UP["game"]
		R[3] = R[2]
		R[2] = R[2]["GetService"]
		R[4] = "ReplicatedStorage"
		R[2] = R[2](UNPACKREG(R, 3, 4))
		R[2] = R[2]["PrivateCommands"]
		R[2] = R[2][R[1]]
		R[3] = R[2]
		R[2] = R[2]["FireServer"]
		-- fallthrough -> 8
	end
	-- [8] OP_246 (4, "unpack", nil) consumes=1
	do
		R[4] = UP["unpack"]
		-- fallthrough -> 9
	end
	-- [9] OP_350 (5, 0, 0) consumes=1
	do
		R[5] = R[0]
		-- fallthrough -> 10
	end
	-- [10] OP_125 (4, 5, 0) consumes=1
	do
		for d = 4, ((l + 4) - 1), 1 do
			R[d] = PACK(R[4](R[5]))[1]
		end
		-- fallthrough -> 11
	end
	-- [11] OP_339 (2, 0, 1) consumes=1
	do
		R[2](UNPACKREG(R, 3, b))
		-- fallthrough -> 12
	end
	-- [12] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 13
	end
end

local function proto_root_7(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_207 (0, 0, 0) consumes=1
	do
		R[0] = ENV[0]
		-- fallthrough -> 2
	end
	-- [2] OP_84 (0, 10, 0) consumes=1
	do
		if R[0] then
		else
			pc = 10
		end
		-- fallthrough -> 3
	end
	-- [3] OP_93 (0, 10, nil) consumes=1
	do
		pc = 10
		pc = 11
		-- fallthrough -> 4
	end
	-- [4] OP_246 (0, "game", nil) consumes=1
	do
		R[0] = UP["game"]
		-- fallthrough -> 5
	end
	-- [5] OP_177 (0, 0, "Players") consumes=6
	do
		R[0] = R[0]["Players"]
		R[0] = R[0]["LocalPlayer"]
		R[1] = UP["transferItemsToPlayer"]
		R[2] = ENV[0]
		R[3] = R[0]
		R[1](UNPACKREG(R, 2, 3))
		-- fallthrough -> 11
	end
	-- [11] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 12
	end
end

local function proto_root_8(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_207 (2, 0, 0) consumes=1
	do
		R[2] = ENV[0]
		-- fallthrough -> 2
	end
	-- [2] OP_246 (3, "game", nil) consumes=1
	do
		R[3] = UP["game"]
		-- fallthrough -> 3
	end
	-- [3] OP_148 (3, 3, "Players") consumes=1
	do
		R[3] = R[3]["Players"]
		-- fallthrough -> 4
	end
	-- [4] OP_148 (3, 3, "LocalPlayer") consumes=1
	do
		R[3] = R[3]["LocalPlayer"]
		-- fallthrough -> 5
	end
	-- [5] OP_73 (4, 1, 2) consumes=3
	do
		-- unresolved VM temporary: nil = {ENV, 1}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {ENV, 2}
		c[(#c + 1)] = {}
		R[4] = CLOSURE(PROTO[1], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 8
	end
	-- [8] OP_262 (2, 4, 1) consumes=1
	do
		R[2](UNPACKREG(R, 3, 4))
		-- fallthrough -> 9
	end
	-- [9] OP_207 (2, 0, 0) consumes=1
	do
		R[2] = ENV[0]
		-- fallthrough -> 10
	end
	-- [10] OP_207 (3, 3, 0) consumes=1
	do
		R[3] = ENV[3]
		-- fallthrough -> 11
	end
	-- [11] OP_296 (4, 0, nil) consumes=1
	do
		R[4] = CLOSURE(PROTO[0], nil, UP)
		-- fallthrough -> 12
	end
	-- [12] OP_262 (2, 4, 1) consumes=1
	do
		R[2](UNPACKREG(R, 3, 4))
		-- fallthrough -> 13
	end
	-- [13] OP_207 (2, 2, 0) consumes=1
	do
		R[2] = ENV[2]
		-- fallthrough -> 14
	end
	-- [14] OP_84 (2, 141, 0) consumes=1
	do
		if R[2] then
		else
			pc = 141
		end
		-- fallthrough -> 15
	end
	-- [15] OP_93 (0, 141, nil) consumes=1
	do
		pc = 141
		pc = 142
		-- fallthrough -> 16
	end
	-- [16] OP_207 (2, 3, 0) consumes=1
	do
		R[2] = ENV[3]
		-- fallthrough -> 17
	end
	-- [17] OP_84 (2, 30, 0) consumes=1
	do
		if R[2] then
		else
			pc = 30
		end
		-- fallthrough -> 18
	end
	-- [18] OP_93 (0, 30, nil) consumes=1
	do
		pc = 30
		pc = 31
		-- fallthrough -> 19
	end
	-- [19] OP_207 (2, 3, 0) consumes=1
	do
		R[2] = ENV[3]
		-- fallthrough -> 20
	end
	-- [20] OP_148 (2, 2, "Character") consumes=1
	do
		R[2] = R[2]["Character"]
		-- fallthrough -> 21
	end
	-- [21] OP_321 (2, 23, 1) consumes=1
	do
		if not R[2] then
		else
			pc = 23
		end
		-- fallthrough -> 22
	end
	-- [22] OP_93 (0, 23, nil) consumes=1
	do
		pc = 23
		pc = 24
		-- fallthrough -> 23
	end
	-- [23] OP_93 (0, 30, nil) consumes=1
	do
		pc = 30
		pc = 31
		-- fallthrough -> 24
	end
	-- [24] OP_246 (2, "game", nil) consumes=1
	do
		R[2] = UP["game"]
		-- fallthrough -> 25
	end
	-- [25] OP_148 (2, 2, "Players") consumes=1
	do
		R[2] = R[2]["Players"]
		-- fallthrough -> 26
	end
	-- [26] OP_148 (2, 2, "LocalPlayer") consumes=1
	do
		R[2] = R[2]["LocalPlayer"]
		-- fallthrough -> 27
	end
	-- [27] OP_148 (2, 2, "Character") consumes=1
	do
		R[2] = R[2]["Character"]
		-- fallthrough -> 28
	end
	-- [28] OP_84 (2, 30, 0) consumes=1
	do
		if R[2] then
		else
			pc = 30
		end
		-- fallthrough -> 29
	end
	-- [29] OP_93 (0, 30, nil) consumes=1
	do
		pc = 30
		pc = 31
		-- fallthrough -> 30
	end
	-- [30] OP_93 (0, 45, nil) consumes=1
	do
		pc = 45
		pc = 46
		-- fallthrough -> 31
	end
	-- [31] OP_268 (2, 0, 0) consumes=1
	do
		R[2] = false
		-- fallthrough -> 32
	end
	-- [32] OP_23 (2, 2, 0) consumes=6
	do
		ENV[2] = R[2]
		R[2] = ENV[4]
		R[2]["Text"] = "مص"
		R[2] = UP["game"]
		R[2] = R[2]["Players"]
		R[2] = R[2]["LocalPlayer"]
		-- fallthrough -> 38
	end
	-- [38] OP_304 (2, 2, "Character") consumes=2
	do
		R[2] = R[2]["Character"]
		R[3] = R[2]
		R[2] = R[2]["FindFirstChildOfClass"]
		-- fallthrough -> 40
	end
	-- [40] OP_249 (4, "Humanoid", nil) consumes=1
	do
		R[4] = "Humanoid"
		-- fallthrough -> 41
	end
	-- [41] OP_107 (2, 4, 2) consumes=1
	do
		R[2] = R[2](UNPACKREG(R, 3, 4))
		-- fallthrough -> 42
	end
	-- [42] OP_84 (2, 141, 0) consumes=1
	do
		if R[2] then
		else
			pc = 141
		end
		-- fallthrough -> 43
	end
	-- [43] OP_93 (0, 141, nil) consumes=1
	do
		pc = 141
		pc = 142
		-- fallthrough -> 44
	end
	-- [44] OP_85 (2, "Sit", false) consumes=1
	do
		R[2]["Sit"] = false
		-- fallthrough -> 45
	end
	-- [45] OP_93 (0, 141, nil) consumes=1
	do
		pc = 141
		pc = 142
		-- fallthrough -> 46
	end
	-- [46] OP_246 (2, "game", nil) consumes=1
	do
		R[2] = UP["game"]
		-- fallthrough -> 47
	end
	-- [47] OP_148 (2, 2, "Players") consumes=1
	do
		R[2] = R[2]["Players"]
		-- fallthrough -> 48
	end
	-- [48] OP_148 (2, 2, "LocalPlayer") consumes=1
	do
		R[2] = R[2]["LocalPlayer"]
		-- fallthrough -> 49
	end
	-- [49] OP_304 (2, 2, "Character") consumes=2
	do
		R[2] = R[2]["Character"]
		R[3] = R[2]
		R[2] = R[2]["FindFirstChild"]
		-- fallthrough -> 51
	end
	-- [51] OP_249 (4, "HumanoidRootPart", nil) consumes=1
	do
		R[4] = "HumanoidRootPart"
		-- fallthrough -> 52
	end
	-- [52] OP_107 (2, 4, 2) consumes=1
	do
		R[2] = R[2](UNPACKREG(R, 3, 4))
		-- fallthrough -> 53
	end
	-- [53] OP_207 (3, 3, 0) consumes=1
	do
		R[3] = ENV[3]
		-- fallthrough -> 54
	end
	-- [54] OP_304 (3, 3, "Character") consumes=2
	do
		R[3] = R[3]["Character"]
		R[4] = R[3]
		R[3] = R[3]["FindFirstChild"]
		-- fallthrough -> 56
	end
	-- [56] OP_249 (5, "Head", nil) consumes=1
	do
		R[5] = "Head"
		-- fallthrough -> 57
	end
	-- [57] OP_107 (3, 5, 2) consumes=1
	do
		R[3] = R[3](UNPACKREG(R, 4, 5))
		-- fallthrough -> 58
	end
	-- [58] OP_207 (4, 3, 0) consumes=1
	do
		R[4] = ENV[3]
		-- fallthrough -> 59
	end
	-- [59] OP_304 (4, 4, "Character") consumes=2
	do
		R[4] = R[4]["Character"]
		R[5] = R[4]
		R[4] = R[4]["FindFirstChild"]
		-- fallthrough -> 61
	end
	-- [61] OP_249 (6, "HumanoidRootPart", nil) consumes=1
	do
		R[6] = "HumanoidRootPart"
		-- fallthrough -> 62
	end
	-- [62] OP_107 (4, 6, 2) consumes=1
	do
		R[4] = R[4](UNPACKREG(R, 5, 6))
		-- fallthrough -> 63
	end
	-- [63] OP_84 (2, 133, 0) consumes=1
	do
		if R[2] then
		else
			pc = 133
		end
		-- fallthrough -> 64
	end
	-- [64] OP_93 (0, 133, nil) consumes=1
	do
		pc = 133
		pc = 134
		-- fallthrough -> 65
	end
	-- [65] OP_84 (3, 133, 0) consumes=1
	do
		if R[3] then
		else
			pc = 133
		end
		-- fallthrough -> 66
	end
	-- [66] OP_93 (0, 133, nil) consumes=1
	do
		pc = 133
		pc = 134
		-- fallthrough -> 67
	end
	-- [67] OP_321 (4, 69, 1) consumes=1
	do
		if not R[4] then
		else
			pc = 69
		end
		-- fallthrough -> 68
	end
	-- [68] OP_93 (0, 69, nil) consumes=1
	do
		pc = 69
		pc = 70
		-- fallthrough -> 69
	end
	-- [69] OP_93 (0, 133, nil) consumes=1
	do
		pc = 133
		pc = 134
		-- fallthrough -> 70
	end
	-- [70] OP_207 (5, 5, 0) consumes=1
	do
		R[5] = ENV[5]
		-- fallthrough -> 71
	end
	-- [71] OP_84 (5, 83, 0) consumes=1
	do
		if R[5] then
		else
			pc = 83
		end
		-- fallthrough -> 72
	end
	-- [72] OP_93 (0, 83, nil) consumes=1
	do
		pc = 83
		pc = 84
		-- fallthrough -> 73
	end
	-- [73] OP_207 (5, 6, 0) consumes=1
	do
		R[5] = ENV[6]
		-- fallthrough -> 74
	end
	-- [74] OP_207 (6, 7, 0) consumes=1
	do
		R[6] = ENV[7]
		-- fallthrough -> 75
	end
	-- [75] OP_71 (5, 5, 6) consumes=1
	do
		R[5] = (R[5] - R[6])
		-- fallthrough -> 76
	end
	-- [76] OP_58 (5, 6, 0) consumes=1
	do
		ENV[6] = R[5]
		-- fallthrough -> 77
	end
	-- [77] OP_207 (5, 6, 0) consumes=1
	do
		R[5] = ENV[6]
		-- fallthrough -> 78
	end
	-- [78] OP_207 (6, 8, 0) consumes=1
	do
		R[6] = ENV[8]
		-- fallthrough -> 79
	end
	-- [79] OP_89 (5, 94, 6) consumes=1
	do
		if R[5] <= R[6] then
		else
			pc = 94
		end
		-- fallthrough -> 80
	end
	-- [80] OP_93 (0, 94, nil) consumes=1
	do
		pc = 94
		pc = 95
		-- fallthrough -> 81
	end
	-- [81] OP_268 (5, 0, 0) consumes=1
	do
		R[5] = false
		-- fallthrough -> 82
	end
	-- [82] OP_58 (5, 5, 0) consumes=1
	do
		ENV[5] = R[5]
		-- fallthrough -> 83
	end
	-- [83] OP_93 (0, 94, nil) consumes=1
	do
		pc = 94
		pc = 95
		-- fallthrough -> 84
	end
	-- [84] OP_207 (5, 6, 0) consumes=1
	do
		R[5] = ENV[6]
		-- fallthrough -> 85
	end
	-- [85] OP_87 (6, 7, 0) consumes=6
	do
		R[6] = ENV[7]
		R[5] = (R[5] + R[6])
		ENV[6] = R[5]
		R[5] = ENV[6]
		R[6] = ENV[9]
		if R[6] <= R[5] then
			pc = 92
		else
		end
		-- fallthrough -> 91
	end
	-- [91] OP_93 (0, 92, nil) consumes=1
	do
		pc = 92
		pc = 93
		-- fallthrough -> 92
	end
	-- [92] OP_93 (0, 94, nil) consumes=1
	do
		pc = 94
		pc = 95
		-- fallthrough -> 93
	end
	-- [93] OP_268 (5, 1, 0) consumes=1
	do
		R[5] = true
		-- fallthrough -> 94
	end
	-- [94] OP_58 (5, 5, 0) consumes=1
	do
		ENV[5] = R[5]
		-- fallthrough -> 95
	end
	-- [95] OP_148 (5, 3, "CFrame") consumes=1
	do
		R[5] = R[3]["CFrame"]
		-- fallthrough -> 96
	end
	-- [96] OP_199 (5, 5, "LookVector") consumes=8
	do
		R[5] = R[5]["LookVector"]
		R[6] = R[3]["Position"]
		R[7] = ENV[6]
		R[7] = (R[5] * R[7])
		R[6] = (R[6] + R[7])
		R[7] = UP["Vector3"]
		R[7] = R[7]["new"]
		R[8] = R[6]["X"]
		-- fallthrough -> 104
	end
	-- [104] OP_81 (9, 3, "Position") consumes=7
	do
		R[9] = R[3]["Position"]
		R[9] = R[9]["Y"]
		R[9] = (R[9] - 0)
		R[10] = R[6]["Z"]
		R[7] = R[7](UNPACKREG(R, 8, 10))
		R[6] = R[7]
		R[7] = UP["CFrame"]
		-- fallthrough -> 111
	end
	-- [111] OP_148 (7, 7, "new") consumes=1
	do
		R[7] = R[7]["new"]
		-- fallthrough -> 112
	end
	-- [112] OP_350 (8, 6, 0) consumes=1
	do
		R[8] = R[6]
		-- fallthrough -> 113
	end
	-- [113] OP_148 (9, 3, "Position") consumes=1
	do
		R[9] = R[3]["Position"]
		-- fallthrough -> 114
	end
	-- [114] OP_128 (7, 9, 2) consumes=7
	do
		R[7] = R[7](UNPACKREG(R, 8, 9))
		R[2]["CFrame"] = R[7]
		R[7] = UP["Vector3"]
		R[7] = R[7]["new"]
		R[8] = 0
		R[9] = 2
		R[10] = 0
		-- fallthrough -> 121
	end
	-- [121] OP_131 (7, 10, 2) consumes=5
	do
		R[7] = R[7](UNPACKREG(R, 8, 10))
		R[2]["Velocity"] = R[7]
		R[7] = UP["game"]
		R[7] = R[7]["Players"]
		R[7] = R[7]["LocalPlayer"]
		-- fallthrough -> 126
	end
	-- [126] OP_304 (7, 7, "Character") consumes=2
	do
		R[7] = R[7]["Character"]
		R[8] = R[7]
		R[7] = R[7]["FindFirstChildOfClass"]
		-- fallthrough -> 128
	end
	-- [128] OP_249 (9, "Humanoid", nil) consumes=1
	do
		R[9] = "Humanoid"
		-- fallthrough -> 129
	end
	-- [129] OP_107 (7, 9, 2) consumes=1
	do
		R[7] = R[7](UNPACKREG(R, 8, 9))
		-- fallthrough -> 130
	end
	-- [130] OP_321 (7, 132, 1) consumes=1
	do
		if not R[7] then
		else
			pc = 132
		end
		-- fallthrough -> 131
	end
	-- [131] OP_93 (0, 132, nil) consumes=1
	do
		pc = 132
		pc = 133
		-- fallthrough -> 132
	end
	-- [132] OP_93 (0, 133, nil) consumes=1
	do
		pc = 133
		pc = 134
		-- fallthrough -> 133
	end
	-- [133] OP_85 (7, "Sit", true) consumes=1
	do
		R[7]["Sit"] = true
		-- fallthrough -> 134
	end
	-- [134] OP_246 (5, "game", nil) consumes=1
	do
		R[5] = UP["game"]
		-- fallthrough -> 135
	end
	-- [135] OP_270 (5, 5, "GetService") consumes=1
	do
		R[6] = R[5]
		R[5] = R[5]["GetService"]
		-- fallthrough -> 136
	end
	-- [136] OP_249 (7, "RunService", nil) consumes=1
	do
		R[7] = "RunService"
		-- fallthrough -> 137
	end
	-- [137] OP_107 (5, 7, 2) consumes=1
	do
		R[5] = R[5](UNPACKREG(R, 6, 7))
		-- fallthrough -> 138
	end
	-- [138] OP_304 (5, 5, "Heartbeat") consumes=2
	do
		R[5] = R[5]["Heartbeat"]
		R[6] = R[5]
		R[5] = R[5]["Wait"]
		-- fallthrough -> 140
	end
	-- [140] OP_201 (5, 2, 1) consumes=1
	do
		R[5](R[6])
		-- fallthrough -> 141
	end
	-- [141] OP_93 (0, 12, nil) consumes=1
	do
		pc = 12
		pc = 13
		-- fallthrough -> 142
	end
	-- [142] OP_246 (2, "game", nil) consumes=1
	do
		R[2] = UP["game"]
		-- fallthrough -> 143
	end
	-- [143] OP_148 (2, 2, "Players") consumes=1
	do
		R[2] = R[2]["Players"]
		-- fallthrough -> 144
	end
	-- [144] OP_148 (2, 2, "LocalPlayer") consumes=1
	do
		R[2] = R[2]["LocalPlayer"]
		-- fallthrough -> 145
	end
	-- [145] OP_148 (2, 2, "Character") consumes=1
	do
		R[2] = R[2]["Character"]
		-- fallthrough -> 146
	end
	-- [146] OP_84 (2, 158, 0) consumes=1
	do
		if R[2] then
		else
			pc = 158
		end
		-- fallthrough -> 147
	end
	-- [147] OP_93 (0, 158, nil) consumes=1
	do
		pc = 158
		pc = 159
		-- fallthrough -> 148
	end
	-- [148] OP_246 (2, "game", nil) consumes=1
	do
		R[2] = UP["game"]
		-- fallthrough -> 149
	end
	-- [149] OP_148 (2, 2, "Players") consumes=1
	do
		R[2] = R[2]["Players"]
		-- fallthrough -> 150
	end
	-- [150] OP_148 (2, 2, "LocalPlayer") consumes=1
	do
		R[2] = R[2]["LocalPlayer"]
		-- fallthrough -> 151
	end
	-- [151] OP_304 (2, 2, "Character") consumes=2
	do
		R[2] = R[2]["Character"]
		R[3] = R[2]
		R[2] = R[2]["FindFirstChildOfClass"]
		-- fallthrough -> 153
	end
	-- [153] OP_249 (4, "Humanoid", nil) consumes=1
	do
		R[4] = "Humanoid"
		-- fallthrough -> 154
	end
	-- [154] OP_107 (2, 4, 2) consumes=1
	do
		R[2] = R[2](UNPACKREG(R, 3, 4))
		-- fallthrough -> 155
	end
	-- [155] OP_321 (2, 157, 1) consumes=1
	do
		if not R[2] then
		else
			pc = 157
		end
		-- fallthrough -> 156
	end
	-- [156] OP_93 (0, 157, nil) consumes=1
	do
		pc = 157
		pc = 158
		-- fallthrough -> 157
	end
	-- [157] OP_93 (0, 158, nil) consumes=1
	do
		pc = 158
		pc = 159
		-- fallthrough -> 158
	end
	-- [158] OP_85 (2, "Sit", false) consumes=1
	do
		R[2]["Sit"] = false
		-- fallthrough -> 159
	end
	-- [159] OP_207 (2, 1, 0) consumes=1
	do
		R[2] = ENV[1]
		-- fallthrough -> 160
	end
	-- [160] OP_84 (2, 166, 0) consumes=1
	do
		if R[2] then
		else
			pc = 166
		end
		-- fallthrough -> 161
	end
	-- [161] OP_93 (0, 166, nil) consumes=1
	do
		pc = 166
		pc = 167
		-- fallthrough -> 162
	end
	-- [162] OP_207 (2, 1, 0) consumes=1
	do
		R[2] = ENV[1]
		-- fallthrough -> 163
	end
	-- [163] OP_270 (2, 2, "Stop") consumes=1
	do
		R[3] = R[2]
		R[2] = R[2]["Stop"]
		-- fallthrough -> 164
	end
	-- [164] OP_201 (2, 2, 1) consumes=1
	do
		R[2](R[3])
		-- fallthrough -> 165
	end
	-- [165] OP_226 (2, 2, 0) consumes=1
	do
		R[2] = nil
		-- fallthrough -> 166
	end
	-- [166] OP_58 (2, 1, 0) consumes=1
	do
		ENV[1] = R[2]
		-- fallthrough -> 167
	end
	-- [167] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 168
	end
end

local function proto_root_8_0(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 2
	end
end

local function proto_root_8_1(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_207 (2, 0, 0) consumes=1
	do
		R[2] = ENV[0]
		-- fallthrough -> 2
	end
	-- [2] OP_321 (2, 4, 1) consumes=1
	do
		if not R[2] then
		else
			pc = 4
		end
		-- fallthrough -> 3
	end
	-- [3] OP_93 (0, 4, nil) consumes=1
	do
		pc = 4
		pc = 5
		-- fallthrough -> 4
	end
	-- [4] OP_93 (0, 9, nil) consumes=1
	do
		pc = 9
		pc = 10
		-- fallthrough -> 5
	end
	-- [5] OP_207 (2, 0, 0) consumes=1
	do
		R[2] = ENV[0]
		-- fallthrough -> 6
	end
	-- [6] OP_270 (2, 2, "Stop") consumes=1
	do
		R[3] = R[2]
		R[2] = R[2]["Stop"]
		-- fallthrough -> 7
	end
	-- [7] OP_201 (2, 2, 1) consumes=1
	do
		R[2](R[3])
		-- fallthrough -> 8
	end
	-- [8] OP_226 (2, 2, 0) consumes=1
	do
		R[2] = nil
		-- fallthrough -> 9
	end
	-- [9] OP_58 (2, 0, 0) consumes=1
	do
		ENV[0] = R[2]
		-- fallthrough -> 10
	end
	-- [10] OP_207 (2, 1, 0) consumes=1
	do
		R[2] = ENV[1]
		-- fallthrough -> 11
	end
	-- [11] OP_321 (2, 13, 1) consumes=1
	do
		if not R[2] then
		else
			pc = 13
		end
		-- fallthrough -> 12
	end
	-- [12] OP_93 (0, 13, nil) consumes=1
	do
		pc = 13
		pc = 14
		-- fallthrough -> 13
	end
	-- [13] OP_93 (0, 32, nil) consumes=1
	do
		pc = 32
		pc = 33
		-- fallthrough -> 14
	end
	-- [14] OP_85 (1, "Sit", true) consumes=1
	do
		R[1]["Sit"] = true
		-- fallthrough -> 15
	end
	-- [15] OP_68 (2, "rbxassetid://2506281703", nil) consumes=10
	do
		R[2] = "rbxassetid://2506281703"
		R[3] = UP["Instance"]
		R[3] = R[3]["new"]
		R[4] = "Animation"
		R[3] = R[3](R[4])
		R[3]["AnimationId"] = R[2]
		R[5] = R[1]
		R[4] = R[1]["LoadAnimation"]
		R[6] = R[3]
		R[4] = R[4](UNPACKREG(R, 5, 6))
		ENV[0] = R[4]
		-- fallthrough -> 25
	end
	-- [25] OP_207 (4, 0, 0) consumes=1
	do
		R[4] = ENV[0]
		-- fallthrough -> 26
	end
	-- [26] OP_176 (4, 4, "Play") consumes=7
	do
		R[5] = R[4]
		R[4] = R[4]["Play"]
		R[4](R[5])
		R[4] = ENV[0]
		R[5] = R[4]
		R[4] = R[4]["AdjustSpeed"]
		R[6] = 1
		R[4](UNPACKREG(R, 5, 6))
		pc = 33
		pc = 34
		-- fallthrough -> 33
	end
	-- [33] OP_85 (1, "Sit", false) consumes=1
	do
		R[1]["Sit"] = false
		-- fallthrough -> 34
	end
	-- [34] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 35
	end
end

local function proto_root_9(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_79 (0, 0, 0) consumes=6
	do
		R[0] = ENV[0]
		R[0] = not R[0]
		ENV[0] = R[0]
		R[0] = ENV[1]
		R[1] = ENV[0]
		if not R[1] then
		else
			pc = 8
		end
		-- fallthrough -> 7
	end
	-- [7] OP_93 (0, 8, nil) consumes=1
	do
		pc = 8
		pc = 9
		-- fallthrough -> 8
	end
	-- [8] OP_93 (0, 12, nil) consumes=1
	do
		pc = 12
		pc = 13
		-- fallthrough -> 9
	end
	-- [9] OP_249 (1, "إيقاف تغيير الحجم سريع", nil) consumes=1
	do
		R[1] = "إيقاف تغيير الحجم سريع"
		-- fallthrough -> 10
	end
	-- [10] OP_84 (1, 12, 0) consumes=1
	do
		if R[1] then
		else
			pc = 12
		end
		-- fallthrough -> 11
	end
	-- [11] OP_93 (0, 12, nil) consumes=1
	do
		pc = 12
		pc = 13
		-- fallthrough -> 12
	end
	-- [12] OP_93 (0, 13, nil) consumes=1
	do
		pc = 13
		pc = 14
		-- fallthrough -> 13
	end
	-- [13] OP_249 (1, "تغيير الحجم ", nil) consumes=1
	do
		R[1] = "تغيير الحجم "
		-- fallthrough -> 14
	end
	-- [14] OP_30 (0, "Text", 1) consumes=1
	do
		R[0]["Text"] = R[1]
		-- fallthrough -> 15
	end
	-- [15] OP_207 (0, 0, 0) consumes=1
	do
		R[0] = ENV[0]
		-- fallthrough -> 16
	end
	-- [16] OP_321 (0, 18, 1) consumes=1
	do
		if not R[0] then
		else
			pc = 18
		end
		-- fallthrough -> 17
	end
	-- [17] OP_93 (0, 18, nil) consumes=1
	do
		pc = 18
		pc = 19
		-- fallthrough -> 18
	end
	-- [18] OP_93 (0, 26, nil) consumes=1
	do
		pc = 26
		pc = 27
		-- fallthrough -> 19
	end
	-- [19] OP_246 (0, "coroutine", nil) consumes=1
	do
		R[0] = UP["coroutine"]
		-- fallthrough -> 20
	end
	-- [20] OP_148 (0, 0, "wrap") consumes=1
	do
		R[0] = R[0]["wrap"]
		-- fallthrough -> 21
	end
	-- [21] OP_73 (1, 0, 3) consumes=4
	do
		-- unresolved VM temporary: nil = {ENV, 0}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {ENV, 2}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {ENV, 3}
		c[(#c + 1)] = {}
		R[1] = CLOSURE(PROTO[0], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 25
	end
	-- [25] OP_202 (0, 2, 2) consumes=1
	do
		R[0] = R[0](R[1])
		-- fallthrough -> 26
	end
	-- [26] OP_158 (0, 1, 1) consumes=1
	do
		R[0]()
		-- fallthrough -> 27
	end
	-- [27] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 28
	end
end

local function proto_root_9_0(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_207 (0, 0, 0) consumes=1
	do
		R[0] = ENV[0]
		-- fallthrough -> 2
	end
	-- [2] OP_84 (0, 22, 0) consumes=1
	do
		if R[0] then
		else
			pc = 22
		end
		-- fallthrough -> 3
	end
	-- [3] OP_93 (0, 22, nil) consumes=1
	do
		pc = 22
		pc = 23
		-- fallthrough -> 4
	end
	-- [4] OP_246 (0, "ipairs", nil) consumes=1
	do
		R[0] = UP["ipairs"]
		-- fallthrough -> 5
	end
	-- [5] OP_207 (1, 1, 0) consumes=1
	do
		R[1] = ENV[1]
		-- fallthrough -> 6
	end
	-- [6] OP_209 (0, 2, 2) consumes=1
	do
		R[0] = R[0](R[1])
		R[1] = nil
		R[2] = nil
		-- fallthrough -> 7
	end
	-- [7] OP_93 (0, 19, nil) consumes=1
	do
		pc = 19
		pc = 20
		-- fallthrough -> 8
	end
	-- [8] OP_207 (5, 0, 0) consumes=1
	do
		R[5] = ENV[0]
		-- fallthrough -> 9
	end
	-- [9] OP_321 (5, 11, 1) consumes=1
	do
		if not R[5] then
		else
			pc = 11
		end
		-- fallthrough -> 10
	end
	-- [10] OP_93 (0, 11, nil) consumes=1
	do
		pc = 11
		pc = 12
		-- fallthrough -> 11
	end
	-- [11] OP_93 (0, 0, nil) consumes=1
	do
		pc = 0
		pc = 1
		-- fallthrough -> 12
	end
	-- [12] OP_207 (5, 2, 0) consumes=1
	do
		R[5] = ENV[2]
		-- fallthrough -> 13
	end
	-- [13] OP_19 (6, 4, 0) consumes=7
	do
		R[6] = R[4]
		R[7] = "Size"
		R[5](UNPACKREG(R, 6, 7))
		R[5] = UP["task"]
		R[5] = R[5]["wait"]
		R[6] = 0.15
		R[5](R[6])
		-- fallthrough -> 20
	end
	-- [20] OP_175 (0, 7, 2) consumes=1
	do
		R[3] = R[0](R[1], R[2])
		R[4] = nil
		if R[0](R[1], R[2]) then
			R[2] = R[0](R[1], R[2])
			pc = 7
		else
		end
		-- fallthrough -> 21
	end
	-- [21] OP_93 (0, 7, nil) consumes=1
	do
		pc = 7
		pc = 8
		-- fallthrough -> 22
	end
	-- [22] OP_93 (0, 0, nil) consumes=1
	do
		pc = 0
		pc = 1
		-- fallthrough -> 23
	end
	-- [23] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 24
	end
end

local function proto_root_10(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_278 (0, "Instance", nil) consumes=7
	do
		R[0] = UP["Instance"]
		R[0] = R[0]["new"]
		R[1] = "ScreenGui"
		R[0] = R[0](R[1])
		R[0]["Name"] = "Closest6Commands"
		R[1] = UP["game"]
		R[1] = R[1]["Players"]
		-- fallthrough -> 8
	end
	-- [8] OP_304 (1, 1, "LocalPlayer") consumes=2
	do
		R[1] = R[1]["LocalPlayer"]
		R[2] = R[1]
		R[1] = R[1]["WaitForChild"]
		-- fallthrough -> 10
	end
	-- [10] OP_249 (3, "PlayerGui", nil) consumes=1
	do
		R[3] = "PlayerGui"
		-- fallthrough -> 11
	end
	-- [11] OP_107 (1, 3, 2) consumes=1
	do
		R[1] = R[1](UNPACKREG(R, 2, 3))
		-- fallthrough -> 12
	end
	-- [12] OP_260 (0, "Parent", 1) consumes=7
	do
		R[0]["Parent"] = R[1]
		R[1] = UP["Instance"]
		R[1] = R[1]["new"]
		R[2] = "Frame"
		R[1] = R[1](R[2])
		R[2] = UP["UDim2"]
		R[2] = R[2]["new"]
		-- fallthrough -> 19
	end
	-- [19] OP_76 (3, 0.18, nil) consumes=7
	do
		R[3] = 0.18
		R[4] = 0
		R[5] = 0.27
		R[6] = 0
		R[2] = R[2](UNPACKREG(R, 3, 6))
		R[1]["Size"] = R[2]
		R[2] = UP["UDim2"]
		-- fallthrough -> 26
	end
	-- [26] OP_75 (2, 2, "new") consumes=7
	do
		R[2] = R[2]["new"]
		R[3] = 0.8
		R[4] = 0
		R[5] = 0.6
		R[6] = 0
		R[2] = R[2](UNPACKREG(R, 3, 6))
		R[1]["Position"] = R[2]
		-- fallthrough -> 33
	end
	-- [33] OP_252 (2, "Color3", nil) consumes=7
	do
		R[2] = UP["Color3"]
		R[2] = R[2]["fromRGB"]
		R[3] = 40
		R[4] = 40
		R[5] = 40
		R[2] = R[2](UNPACKREG(R, 3, 5))
		R[1]["BackgroundColor3"] = R[2]
		-- fallthrough -> 40
	end
	-- [40] OP_260 (1, "Parent", 0) consumes=7
	do
		R[1]["Parent"] = R[0]
		R[2] = UP["Instance"]
		R[2] = R[2]["new"]
		R[3] = "UICorner"
		R[2] = R[2](R[3])
		R[3] = UP["UDim"]
		R[3] = R[3]["new"]
		-- fallthrough -> 47
	end
	-- [47] OP_132 (4, 0.1, nil) consumes=7
	do
		R[4] = 0.1
		R[5] = 0
		R[3] = R[3](UNPACKREG(R, 4, 5))
		R[2]["CornerRadius"] = R[3]
		R[2]["Parent"] = R[1]
		R[3] = UP["Instance"]
		R[3] = R[3]["new"]
		-- fallthrough -> 54
	end
	-- [54] OP_294 (4, "TextButton", nil) consumes=7
	do
		R[4] = "TextButton"
		R[3] = R[3](R[4])
		R[4] = UP["UDim2"]
		R[4] = R[4]["new"]
		R[5] = 0.1
		R[6] = 0
		R[7] = 0.1
		-- fallthrough -> 61
	end
	-- [61] OP_307 (8, 0, nil) consumes=7
	do
		R[8] = 0
		R[4] = R[4](UNPACKREG(R, 5, 8))
		R[3]["Size"] = R[4]
		R[4] = UP["UDim2"]
		R[4] = R[4]["new"]
		R[5] = 0.9
		R[6] = 0
		-- fallthrough -> 68
	end
	-- [68] OP_16 (7, 0, nil) consumes=2
	do
		R[7] = 0
		R[8] = 0
		-- fallthrough -> 70
	end
	-- [70] OP_107 (4, 8, 2) consumes=1
	do
		R[4] = R[4](UNPACKREG(R, 5, 8))
		-- fallthrough -> 71
	end
	-- [71] OP_30 (3, "Position", 4) consumes=1
	do
		R[3]["Position"] = R[4]
		-- fallthrough -> 72
	end
	-- [72] OP_85 (3, "Text", "X") consumes=1
	do
		R[3]["Text"] = "X"
		-- fallthrough -> 73
	end
	-- [73] OP_252 (4, "Color3", nil) consumes=7
	do
		R[4] = UP["Color3"]
		R[4] = R[4]["fromRGB"]
		R[5] = 255
		R[6] = 140
		R[7] = 0
		R[4] = R[4](UNPACKREG(R, 5, 7))
		R[3]["BackgroundColor3"] = R[4]
		-- fallthrough -> 80
	end
	-- [80] OP_252 (4, "Color3", nil) consumes=7
	do
		R[4] = UP["Color3"]
		R[4] = R[4]["new"]
		R[5] = 1
		R[6] = 1
		R[7] = 1
		R[4] = R[4](UNPACKREG(R, 5, 7))
		R[3]["TextColor3"] = R[4]
		-- fallthrough -> 87
	end
	-- [87] OP_246 (4, "Enum", nil) consumes=1
	do
		R[4] = UP["Enum"]
		-- fallthrough -> 88
	end
	-- [88] OP_148 (4, 4, "Font") consumes=1
	do
		R[4] = R[4]["Font"]
		-- fallthrough -> 89
	end
	-- [89] OP_88 (4, 4, "SourceSansBold") consumes=7
	do
		R[4] = R[4]["SourceSansBold"]
		R[3]["Font"] = R[4]
		R[3]["TextSize"] = 14
		R[3]["Parent"] = R[1]
		R[4] = UP["Instance"]
		R[4] = R[4]["new"]
		R[5] = "UICorner"
		-- fallthrough -> 96
	end
	-- [96] OP_202 (4, 2, 2) consumes=1
	do
		R[4] = R[4](R[5])
		-- fallthrough -> 97
	end
	-- [97] OP_184 (5, "UDim", nil) consumes=7
	do
		R[5] = UP["UDim"]
		R[5] = R[5]["new"]
		R[6] = 0.2
		R[7] = 0
		R[5] = R[5](UNPACKREG(R, 6, 7))
		R[4]["CornerRadius"] = R[5]
		R[4]["Parent"] = R[3]
		-- fallthrough -> 104
	end
	-- [104] OP_304 (5, 3, "MouseButton1Click") consumes=2
	do
		R[5] = R[3]["MouseButton1Click"]
		R[6] = R[5]
		R[5] = R[5]["Connect"]
		-- fallthrough -> 106
	end
	-- [106] OP_73 (7, 8, 1) consumes=2
	do
		-- unresolved VM temporary: nil = {R, 0}
		c[(#c + 1)] = {}
		R[7] = CLOSURE(PROTO[8], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 108
	end
	-- [108] OP_262 (5, 7, 1) consumes=1
	do
		R[5](UNPACKREG(R, 6, 7))
		-- fallthrough -> 109
	end
	-- [109] OP_268 (5, 0, 0) consumes=1
	do
		R[5] = false
		-- fallthrough -> 110
	end
	-- [110] OP_226 (6, 8, 0) consumes=1
	do
		R[6] = nil
		R[7] = nil
		R[8] = nil
		-- fallthrough -> 111
	end
	-- [111] OP_304 (9, 1, "InputBegan") consumes=2
	do
		R[9] = R[1]["InputBegan"]
		R[10] = R[9]
		R[9] = R[9]["Connect"]
		-- fallthrough -> 113
	end
	-- [113] OP_73 (11, 9, 4) consumes=5
	do
		-- unresolved VM temporary: nil = {R, 5}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 7}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 8}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 1}
		c[(#c + 1)] = {}
		R[11] = CLOSURE(PROTO[9], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 118
	end
	-- [118] OP_191 (9, 11, 1) consumes=3
	do
		R[9](UNPACKREG(R, 10, 11))
		R[9] = R[1]["InputChanged"]
		R[10] = R[9]
		R[9] = R[9]["Connect"]
		-- fallthrough -> 121
	end
	-- [121] OP_73 (11, 6, 1) consumes=2
	do
		-- unresolved VM temporary: nil = {R, 6}
		c[(#c + 1)] = {}
		R[11] = CLOSURE(PROTO[6], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 123
	end
	-- [123] OP_311 (9, 11, 1) consumes=5
	do
		R[9](UNPACKREG(R, 10, 11))
		R[9] = UP["game"]
		R[10] = R[9]
		R[9] = R[9]["GetService"]
		R[11] = "UserInputService"
		R[9] = R[9](UNPACKREG(R, 10, 11))
		-- fallthrough -> 128
	end
	-- [128] OP_304 (9, 9, "InputChanged") consumes=2
	do
		R[9] = R[9]["InputChanged"]
		R[10] = R[9]
		R[9] = R[9]["Connect"]
		-- fallthrough -> 130
	end
	-- [130] OP_73 (11, 2, 5) consumes=6
	do
		-- unresolved VM temporary: nil = {R, 6}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 5}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 7}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 1}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 8}
		c[(#c + 1)] = {}
		R[11] = CLOSURE(PROTO[2], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 136
	end
	-- [136] OP_59 (9, 11, 1) consumes=7
	do
		R[9](UNPACKREG(R, 10, 11))
		R[9] = UP["Instance"]
		R[9] = R[9]["new"]
		R[10] = "TextLabel"
		R[9] = R[9](R[10])
		R[10] = UP["UDim2"]
		R[10] = R[10]["new"]
		-- fallthrough -> 143
	end
	-- [143] OP_76 (11, 1, nil) consumes=7
	do
		R[11] = 1
		R[12] = 0
		R[13] = 0.2
		R[14] = 0
		R[10] = R[10](UNPACKREG(R, 11, 14))
		R[9]["Size"] = R[10]
		R[10] = UP["UDim2"]
		-- fallthrough -> 150
	end
	-- [150] OP_75 (10, 10, "new") consumes=7
	do
		R[10] = R[10]["new"]
		R[11] = 0
		R[12] = 0
		R[13] = 0
		R[14] = 0
		R[10] = R[10](UNPACKREG(R, 11, 14))
		R[9]["Position"] = R[10]
		-- fallthrough -> 157
	end
	-- [157] OP_85 (9, "Text", "أوامر الأقرب 6 لاعبين") consumes=1
	do
		R[9]["Text"] = "أوامر الأقرب 6 لاعبين"
		-- fallthrough -> 158
	end
	-- [158] OP_252 (10, "Color3", nil) consumes=7
	do
		R[10] = UP["Color3"]
		R[10] = R[10]["fromRGB"]
		R[11] = 255
		R[12] = 215
		R[13] = 0
		R[10] = R[10](UNPACKREG(R, 11, 13))
		R[9]["TextColor3"] = R[10]
		-- fallthrough -> 165
	end
	-- [165] OP_85 (9, "BackgroundTransparency", 1) consumes=1
	do
		R[9]["BackgroundTransparency"] = 1
		-- fallthrough -> 166
	end
	-- [166] OP_246 (10, "Enum", nil) consumes=1
	do
		R[10] = UP["Enum"]
		-- fallthrough -> 167
	end
	-- [167] OP_148 (10, 10, "Font") consumes=1
	do
		R[10] = R[10]["Font"]
		-- fallthrough -> 168
	end
	-- [168] OP_88 (10, 10, "SourceSansBold") consumes=7
	do
		R[10] = R[10]["SourceSansBold"]
		R[9]["Font"] = R[10]
		R[9]["TextSize"] = 16
		R[9]["Parent"] = R[1]
		R[10] = UP["Color3"]
		R[10] = R[10]["fromRGB"]
		R[11] = 255
		-- fallthrough -> 175
	end
	-- [175] OP_16 (12, 140, nil) consumes=2
	do
		R[12] = 140
		R[13] = 0
		-- fallthrough -> 177
	end
	-- [177] OP_107 (10, 13, 2) consumes=1
	do
		R[10] = R[10](UNPACKREG(R, 11, 13))
		-- fallthrough -> 178
	end
	-- [178] OP_73 (11, 3, 2) consumes=3
	do
		-- unresolved VM temporary: nil = {R, 10}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 1}
		c[(#c + 1)] = {}
		R[11] = CLOSURE(PROTO[3], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 181
	end
	-- [181] OP_296 (12, 4, nil) consumes=1
	do
		R[12] = CLOSURE(PROTO[4], nil, UP)
		-- fallthrough -> 182
	end
	-- [182] OP_73 (13, 0, 1) consumes=2
	do
		-- unresolved VM temporary: nil = {R, 12}
		c[(#c + 1)] = {}
		R[13] = CLOSURE(PROTO[0], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 184
	end
	-- [184] OP_73 (14, 1, 1) consumes=2
	do
		-- unresolved VM temporary: nil = {R, 12}
		c[(#c + 1)] = {}
		R[14] = CLOSURE(PROTO[1], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 186
	end
	-- [186] OP_73 (15, 5, 1) consumes=2
	do
		-- unresolved VM temporary: nil = {R, 12}
		c[(#c + 1)] = {}
		R[15] = CLOSURE(PROTO[5], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 188
	end
	-- [188] OP_73 (16, 7, 1) consumes=2
	do
		-- unresolved VM temporary: nil = {R, 12}
		c[(#c + 1)] = {}
		R[16] = CLOSURE(PROTO[7], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 190
	end
	-- [190] OP_73 (17, 10, 1) consumes=2
	do
		-- unresolved VM temporary: nil = {R, 12}
		c[(#c + 1)] = {}
		R[17] = CLOSURE(PROTO[10], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 192
	end
	-- [192] OP_350 (18, 11, 0) consumes=1
	do
		R[18] = R[11]
		-- fallthrough -> 193
	end
	-- [193] OP_249 (19, "تصغير ", nil) consumes=1
	do
		R[19] = "تصغير "
		-- fallthrough -> 194
	end
	-- [194] OP_263 (20, "UDim2", nil) consumes=7
	do
		R[20] = UP["UDim2"]
		R[20] = R[20]["new"]
		R[21] = 0.05
		R[22] = 0
		R[23] = 0.18
		R[24] = 0
		R[20] = R[20](UNPACKREG(R, 21, 24))
		-- fallthrough -> 201
	end
	-- [201] OP_350 (21, 13, 0) consumes=1
	do
		R[21] = R[13]
		-- fallthrough -> 202
	end
	-- [202] OP_262 (18, 21, 1) consumes=1
	do
		R[18](UNPACKREG(R, 19, 21))
		-- fallthrough -> 203
	end
	-- [203] OP_350 (18, 11, 0) consumes=1
	do
		R[18] = R[11]
		-- fallthrough -> 204
	end
	-- [204] OP_249 (19, "RE", nil) consumes=1
	do
		R[19] = "RE"
		-- fallthrough -> 205
	end
	-- [205] OP_263 (20, "UDim2", nil) consumes=7
	do
		R[20] = UP["UDim2"]
		R[20] = R[20]["new"]
		R[21] = 0.05
		R[22] = 0
		R[23] = 0.35
		R[24] = 0
		R[20] = R[20](UNPACKREG(R, 21, 24))
		-- fallthrough -> 212
	end
	-- [212] OP_350 (21, 14, 0) consumes=1
	do
		R[21] = R[14]
		-- fallthrough -> 213
	end
	-- [213] OP_262 (18, 21, 1) consumes=1
	do
		R[18](UNPACKREG(R, 19, 21))
		-- fallthrough -> 214
	end
	-- [214] OP_350 (18, 11, 0) consumes=1
	do
		R[18] = R[11]
		-- fallthrough -> 215
	end
	-- [215] OP_249 (19, "تكبير  ", nil) consumes=1
	do
		R[19] = "تكبير  "
		-- fallthrough -> 216
	end
	-- [216] OP_263 (20, "UDim2", nil) consumes=7
	do
		R[20] = UP["UDim2"]
		R[20] = R[20]["new"]
		R[21] = 0.05
		R[22] = 0
		R[23] = 0.52
		R[24] = 0
		R[20] = R[20](UNPACKREG(R, 21, 24))
		-- fallthrough -> 223
	end
	-- [223] OP_350 (21, 15, 0) consumes=1
	do
		R[21] = R[15]
		-- fallthrough -> 224
	end
	-- [224] OP_262 (18, 21, 1) consumes=1
	do
		R[18](UNPACKREG(R, 19, 21))
		-- fallthrough -> 225
	end
	-- [225] OP_350 (18, 11, 0) consumes=1
	do
		R[18] = R[11]
		-- fallthrough -> 226
	end
	-- [226] OP_249 (19, "تغيير سكن ", nil) consumes=1
	do
		R[19] = "تغيير سكن "
		-- fallthrough -> 227
	end
	-- [227] OP_263 (20, "UDim2", nil) consumes=7
	do
		R[20] = UP["UDim2"]
		R[20] = R[20]["new"]
		R[21] = 0.05
		R[22] = 0
		R[23] = 0.69
		R[24] = 0
		R[20] = R[20](UNPACKREG(R, 21, 24))
		-- fallthrough -> 234
	end
	-- [234] OP_350 (21, 16, 0) consumes=1
	do
		R[21] = R[16]
		-- fallthrough -> 235
	end
	-- [235] OP_262 (18, 21, 1) consumes=1
	do
		R[18](UNPACKREG(R, 19, 21))
		-- fallthrough -> 236
	end
	-- [236] OP_350 (18, 11, 0) consumes=1
	do
		R[18] = R[11]
		-- fallthrough -> 237
	end
	-- [237] OP_249 (19, "تغير اسم", nil) consumes=1
	do
		R[19] = "تغير اسم"
		-- fallthrough -> 238
	end
	-- [238] OP_263 (20, "UDim2", nil) consumes=7
	do
		R[20] = UP["UDim2"]
		R[20] = R[20]["new"]
		R[21] = 0.05
		R[22] = 0
		R[23] = 0.86
		R[24] = 0
		R[20] = R[20](UNPACKREG(R, 21, 24))
		-- fallthrough -> 245
	end
	-- [245] OP_350 (21, 17, 0) consumes=1
	do
		R[21] = R[17]
		-- fallthrough -> 246
	end
	-- [246] OP_262 (18, 21, 1) consumes=1
	do
		R[18](UNPACKREG(R, 19, 21))
		-- fallthrough -> 247
	end
	-- [247] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 248
	end
end

local function proto_root_10_0(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_110 (0, 0, 0) consumes=6
	do
		R[0] = ENV[0]
		R[0] = R[0]()
		R[1] = UP["ipairs"]
		R[2] = R[0]
		R[1] = R[1](R[2])
		R[2] = nil
		R[3] = nil
		pc = 19
		pc = 20
		-- fallthrough -> 7
	end
	-- [7] OP_249 (6, "/e .size ", nil) consumes=1
	do
		R[6] = "/e .size "
		-- fallthrough -> 8
	end
	-- [8] OP_148 (7, 5, "Name") consumes=1
	do
		R[7] = R[5]["Name"]
		-- fallthrough -> 9
	end
	-- [9] OP_249 (8, " 0", nil) consumes=1
	do
		R[8] = " 0"
		-- fallthrough -> 10
	end
	-- [10] OP_224 (6, 6, 8) consumes=1
	do
		R[6] = ((R[6] .. R[7]) .. R[8])
		-- fallthrough -> 11
	end
	-- [11] OP_246 (7, "pcall", nil) consumes=1
	do
		R[7] = UP["pcall"]
		-- fallthrough -> 12
	end
	-- [12] OP_73 (8, 0, 1) consumes=2
	do
		-- unresolved VM temporary: nil = {R, 6}
		c[(#c + 1)] = {}
		R[8] = CLOSURE(PROTO[0], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 14
	end
	-- [14] OP_214 (7, 2, 1) consumes=6
	do
		R[7](R[8])
		R[7] = UP["task"]
		R[7] = R[7]["wait"]
		R[8] = 0.01
		R[7](R[8])
		for d = 1, #c, 1 do
			for d = 0, #c[d], 1 do
				if (c[d][d][1] == R) and (c[d][d][2] >= 6) then
					({})[c[d][d][2]] = c[d][d][1][c[d][d][2]]
					c[d][d][1] = {}
				end
			end
		end
		-- fallthrough -> 20
	end
	-- [20] OP_175 (1, 6, 2) consumes=1
	do
		R[4] = R[1](R[2], R[3])
		R[5] = nil
		if R[1](R[2], R[3]) then
			R[3] = R[1](R[2], R[3])
			pc = 6
		else
		end
		-- fallthrough -> 21
	end
	-- [21] OP_93 (0, 6, nil) consumes=1
	do
		pc = 6
		pc = 7
		-- fallthrough -> 22
	end
	-- [22] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 23
	end
end

local function proto_root_10_0_0(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_100 (0, "game", nil) consumes=7
	do
		R[0] = UP["game"]
		R[1] = R[0]
		R[0] = R[0]["GetService"]
		R[2] = "Players"
		R[0] = R[0](UNPACKREG(R, 1, 2))
		R[1] = R[0]
		R[0] = R[0]["Chat"]
		R[2] = ENV[0]
		R[0](UNPACKREG(R, 1, 2))
		-- fallthrough -> 8
	end
	-- [8] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 9
	end
end

local function proto_root_10_1(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_110 (0, 0, 0) consumes=6
	do
		R[0] = ENV[0]
		R[0] = R[0]()
		R[1] = UP["ipairs"]
		R[2] = R[0]
		R[1] = R[1](R[2])
		R[2] = nil
		R[3] = nil
		pc = 18
		pc = 19
		-- fallthrough -> 7
	end
	-- [7] OP_249 (6, "/e .re ", nil) consumes=1
	do
		R[6] = "/e .re "
		-- fallthrough -> 8
	end
	-- [8] OP_148 (7, 5, "Name") consumes=1
	do
		R[7] = R[5]["Name"]
		-- fallthrough -> 9
	end
	-- [9] OP_224 (6, 6, 7) consumes=1
	do
		R[6] = (R[6] .. R[7])
		-- fallthrough -> 10
	end
	-- [10] OP_246 (7, "pcall", nil) consumes=1
	do
		R[7] = UP["pcall"]
		-- fallthrough -> 11
	end
	-- [11] OP_73 (8, 0, 1) consumes=2
	do
		-- unresolved VM temporary: nil = {R, 6}
		c[(#c + 1)] = {}
		R[8] = CLOSURE(PROTO[0], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 13
	end
	-- [13] OP_214 (7, 2, 1) consumes=6
	do
		R[7](R[8])
		R[7] = UP["task"]
		R[7] = R[7]["wait"]
		R[8] = 0.01
		R[7](R[8])
		for d = 1, #c, 1 do
			for d = 0, #c[d], 1 do
				if (c[d][d][1] == R) and (c[d][d][2] >= 6) then
					({})[c[d][d][2]] = c[d][d][1][c[d][d][2]]
					c[d][d][1] = {}
				end
			end
		end
		-- fallthrough -> 19
	end
	-- [19] OP_175 (1, 6, 2) consumes=1
	do
		R[4] = R[1](R[2], R[3])
		R[5] = nil
		if R[1](R[2], R[3]) then
			R[3] = R[1](R[2], R[3])
			pc = 6
		else
		end
		-- fallthrough -> 20
	end
	-- [20] OP_93 (0, 6, nil) consumes=1
	do
		pc = 6
		pc = 7
		-- fallthrough -> 21
	end
	-- [21] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 22
	end
end

local function proto_root_10_1_0(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_100 (0, "game", nil) consumes=7
	do
		R[0] = UP["game"]
		R[1] = R[0]
		R[0] = R[0]["GetService"]
		R[2] = "Players"
		R[0] = R[0](UNPACKREG(R, 1, 2))
		R[1] = R[0]
		R[0] = R[0]["Chat"]
		R[2] = ENV[0]
		R[0](UNPACKREG(R, 1, 2))
		-- fallthrough -> 8
	end
	-- [8] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 9
	end
end

local function proto_root_10_2(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_207 (1, 0, 0) consumes=1
	do
		R[1] = ENV[0]
		-- fallthrough -> 2
	end
	-- [2] OP_358 (0, 4, 1) consumes=1
	do
		pc = (((R[0] == R[1]) and 4) or pc + 1)
		pc = (1 + (((R[0] == R[1]) and 4) or pc + 1))
		-- fallthrough -> 3
	end
	-- [3] OP_93 (0, 4, nil) consumes=1
	do
		pc = 4
		pc = 5
		-- fallthrough -> 4
	end
	-- [4] OP_93 (0, 32, nil) consumes=1
	do
		pc = 32
		pc = 33
		-- fallthrough -> 5
	end
	-- [5] OP_207 (1, 1, 0) consumes=1
	do
		R[1] = ENV[1]
		-- fallthrough -> 6
	end
	-- [6] OP_321 (1, 8, 1) consumes=1
	do
		if not R[1] then
		else
			pc = 8
		end
		-- fallthrough -> 7
	end
	-- [7] OP_93 (0, 8, nil) consumes=1
	do
		pc = 8
		pc = 9
		-- fallthrough -> 8
	end
	-- [8] OP_93 (0, 32, nil) consumes=1
	do
		pc = 32
		pc = 33
		-- fallthrough -> 9
	end
	-- [9] OP_148 (1, 0, "Position") consumes=1
	do
		R[1] = R[0]["Position"]
		-- fallthrough -> 10
	end
	-- [10] OP_207 (2, 2, 0) consumes=1
	do
		R[2] = ENV[2]
		-- fallthrough -> 11
	end
	-- [11] OP_71 (1, 1, 2) consumes=1
	do
		R[1] = (R[1] - R[2])
		-- fallthrough -> 12
	end
	-- [12] OP_207 (2, 3, 0) consumes=1
	do
		R[2] = ENV[3]
		-- fallthrough -> 13
	end
	-- [13] OP_246 (3, "UDim2", nil) consumes=1
	do
		R[3] = UP["UDim2"]
		-- fallthrough -> 14
	end
	-- [14] OP_148 (3, 3, "new") consumes=1
	do
		R[3] = R[3]["new"]
		-- fallthrough -> 15
	end
	-- [15] OP_210 (4, 4, 0) consumes=7
	do
		R[4] = ENV[4]
		R[4] = R[4]["X"]
		R[4] = R[4]["Scale"]
		R[5] = ENV[4]
		R[5] = R[5]["X"]
		R[5] = R[5]["Offset"]
		R[6] = R[1]["X"]
		-- fallthrough -> 22
	end
	-- [22] OP_313 (5, 5, 6) consumes=1
	do
		R[5] = (R[5] + R[6])
		-- fallthrough -> 23
	end
	-- [23] OP_210 (6, 4, 0) consumes=7
	do
		R[6] = ENV[4]
		R[6] = R[6]["Y"]
		R[6] = R[6]["Scale"]
		R[7] = ENV[4]
		R[7] = R[7]["Y"]
		R[7] = R[7]["Offset"]
		R[8] = R[1]["Y"]
		-- fallthrough -> 30
	end
	-- [30] OP_313 (7, 7, 8) consumes=1
	do
		R[7] = (R[7] + R[8])
		-- fallthrough -> 31
	end
	-- [31] OP_107 (3, 7, 2) consumes=1
	do
		R[3] = R[3](UNPACKREG(R, 4, 7))
		-- fallthrough -> 32
	end
	-- [32] OP_30 (2, "Position", 3) consumes=1
	do
		R[2]["Position"] = R[3]
		-- fallthrough -> 33
	end
	-- [33] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 34
	end
end

local function proto_root_10_3(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_124 (3, "Instance", nil) consumes=7
	do
		R[3] = UP["Instance"]
		R[3] = R[3]["new"]
		R[4] = "TextButton"
		R[3] = R[3](R[4])
		R[4] = UP["UDim2"]
		R[4] = R[4]["new"]
		R[5] = 0.9
		-- fallthrough -> 8
	end
	-- [8] OP_16 (6, 0, nil) consumes=2
	do
		R[6] = 0
		R[7] = 0.14
		-- fallthrough -> 10
	end
	-- [10] OP_249 (8, 0, nil) consumes=1
	do
		R[8] = 0
		-- fallthrough -> 11
	end
	-- [11] OP_107 (4, 8, 2) consumes=1
	do
		R[4] = R[4](UNPACKREG(R, 5, 8))
		-- fallthrough -> 12
	end
	-- [12] OP_30 (3, "Size", 4) consumes=1
	do
		R[3]["Size"] = R[4]
		-- fallthrough -> 13
	end
	-- [13] OP_30 (3, "Position", 1) consumes=1
	do
		R[3]["Position"] = R[1]
		-- fallthrough -> 14
	end
	-- [14] OP_30 (3, "Text", 0) consumes=1
	do
		R[3]["Text"] = R[0]
		-- fallthrough -> 15
	end
	-- [15] OP_207 (4, 0, 0) consumes=1
	do
		R[4] = ENV[0]
		-- fallthrough -> 16
	end
	-- [16] OP_345 (3, "BackgroundColor3", 4) consumes=7
	do
		R[3]["BackgroundColor3"] = R[4]
		R[4] = UP["Color3"]
		R[4] = R[4]["new"]
		R[5] = 1
		R[6] = 1
		R[7] = 1
		R[4] = R[4](UNPACKREG(R, 5, 7))
		-- fallthrough -> 23
	end
	-- [23] OP_30 (3, "TextColor3", 4) consumes=1
	do
		R[3]["TextColor3"] = R[4]
		-- fallthrough -> 24
	end
	-- [24] OP_246 (4, "Enum", nil) consumes=1
	do
		R[4] = UP["Enum"]
		-- fallthrough -> 25
	end
	-- [25] OP_250 (4, 4, "Font") consumes=7
	do
		R[4] = R[4]["Font"]
		R[4] = R[4]["SourceSansBold"]
		R[3]["Font"] = R[4]
		R[3]["TextSize"] = 14
		R[4] = ENV[1]
		R[3]["Parent"] = R[4]
		R[4] = UP["Instance"]
		-- fallthrough -> 32
	end
	-- [32] OP_248 (4, 4, "new") consumes=7
	do
		R[4] = R[4]["new"]
		R[5] = "UICorner"
		R[4] = R[4](R[5])
		R[5] = UP["UDim"]
		R[5] = R[5]["new"]
		R[6] = 0.9
		R[7] = 0
		-- fallthrough -> 39
	end
	-- [39] OP_107 (5, 7, 2) consumes=1
	do
		R[5] = R[5](UNPACKREG(R, 6, 7))
		-- fallthrough -> 40
	end
	-- [40] OP_30 (4, "CornerRadius", 5) consumes=1
	do
		R[4]["CornerRadius"] = R[5]
		-- fallthrough -> 41
	end
	-- [41] OP_86 (4, "Parent", 3) consumes=6
	do
		R[4]["Parent"] = R[3]
		R[5] = R[3]["MouseButton1Click"]
		R[6] = R[5]
		R[5] = R[5]["Connect"]
		R[7] = R[2]
		R[5](UNPACKREG(R, 6, 7))
		-- RETURN R[3]
		-- fallthrough -> 47
	end
	-- [47] OP_29 (0, 1, 0) consumes=7
	do
		R[0](UNPACKREG(R, 1, 1))
		R[I_1.A] = UP[I_1.B]
		R[(I_2.A + 1)] = R[I_2.B]
		R[I_2.A] = R[I_2.B][I_2.C]
		R[I_3.A] = I_3.B
		R[I_4.A] = R[I_4.A](UNPACKREG(R, (I_4.A + 1), I_4.B))
		R[I_5.A] = I_5.B
		R[I_6.A] = R[I_6.B][R[I_6.C]]
		-- fallthrough -> 54
	end
end

local function proto_root_10_4(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_188 (0, "game", nil) consumes=10
	do
		R[0] = UP["game"]
		R[1] = R[0]
		R[0] = R[0]["GetService"]
		R[2] = "Players"
		R[0] = R[0](UNPACKREG(R, 1, 2))
		R[1] = R[0]
		R[0] = R[0]["GetPlayers"]
		R[0] = R[0](R[1])
		R[1] = UP["game"]
		R[2] = R[1]
		R[1] = R[1]["GetService"]
		R[3] = "Players"
		R[1] = R[1](UNPACKREG(R, 2, 3))
		-- fallthrough -> 11
	end
	-- [11] OP_148 (1, 1, "LocalPlayer") consumes=1
	do
		R[1] = R[1]["LocalPlayer"]
		-- fallthrough -> 12
	end
	-- [12] OP_148 (2, 1, "Character") consumes=1
	do
		R[2] = R[1]["Character"]
		-- fallthrough -> 13
	end
	-- [13] OP_84 (2, 15, 0) consumes=1
	do
		if R[2] then
		else
			pc = 15
		end
		-- fallthrough -> 14
	end
	-- [14] OP_93 (0, 15, nil) consumes=1
	do
		pc = 15
		pc = 16
		-- fallthrough -> 15
	end
	-- [15] OP_93 (0, 18, nil) consumes=1
	do
		pc = 18
		pc = 19
		-- fallthrough -> 16
	end
	-- [16] OP_148 (2, 1, "CharacterAdded") consumes=1
	do
		R[2] = R[1]["CharacterAdded"]
		-- fallthrough -> 17
	end
	-- [17] OP_270 (2, 2, "Wait") consumes=1
	do
		R[3] = R[2]
		R[2] = R[2]["Wait"]
		-- fallthrough -> 18
	end
	-- [18] OP_202 (2, 2, 2) consumes=1
	do
		R[2] = R[2](R[3])
		-- fallthrough -> 19
	end
	-- [19] OP_270 (3, 2, "WaitForChild") consumes=1
	do
		R[4] = R[2]
		R[3] = R[2]["WaitForChild"]
		-- fallthrough -> 20
	end
	-- [20] OP_249 (5, "HumanoidRootPart", nil) consumes=1
	do
		R[5] = "HumanoidRootPart"
		-- fallthrough -> 21
	end
	-- [21] OP_107 (3, 5, 2) consumes=1
	do
		R[3] = R[3](UNPACKREG(R, 4, 5))
		-- fallthrough -> 22
	end
	-- [22] OP_344 (4, 0, 0) consumes=1
	do
		R[4] = {}
		-- fallthrough -> 23
	end
	-- [23] OP_246 (5, "ipairs", nil) consumes=1
	do
		R[5] = UP["ipairs"]
		-- fallthrough -> 24
	end
	-- [24] OP_63 (6, 0, 0) consumes=3
	do
		R[6] = R[0]
		R[5] = R[5](R[6])
		R[6] = nil
		R[7] = nil
		pc = 51
		pc = 52
		-- fallthrough -> 27
	end
	-- [27] OP_358 (9, 51, 1) consumes=1
	do
		pc = (((R[9] == R[1]) and 51) or pc + 1)
		pc = (1 + (((R[9] == R[1]) and 51) or pc + 1))
		-- fallthrough -> 28
	end
	-- [28] OP_93 (0, 51, nil) consumes=1
	do
		pc = 51
		pc = 52
		-- fallthrough -> 29
	end
	-- [29] OP_148 (10, 9, "Character") consumes=1
	do
		R[10] = R[9]["Character"]
		-- fallthrough -> 30
	end
	-- [30] OP_321 (10, 32, 1) consumes=1
	do
		if not R[10] then
		else
			pc = 32
		end
		-- fallthrough -> 31
	end
	-- [31] OP_93 (0, 32, nil) consumes=1
	do
		pc = 32
		pc = 33
		-- fallthrough -> 32
	end
	-- [32] OP_93 (0, 51, nil) consumes=1
	do
		pc = 51
		pc = 52
		-- fallthrough -> 33
	end
	-- [33] OP_148 (10, 9, "Character") consumes=1
	do
		R[10] = R[9]["Character"]
		-- fallthrough -> 34
	end
	-- [34] OP_270 (10, 10, "FindFirstChild") consumes=1
	do
		R[11] = R[10]
		R[10] = R[10]["FindFirstChild"]
		-- fallthrough -> 35
	end
	-- [35] OP_249 (12, "HumanoidRootPart", nil) consumes=1
	do
		R[12] = "HumanoidRootPart"
		-- fallthrough -> 36
	end
	-- [36] OP_107 (10, 12, 2) consumes=1
	do
		R[10] = R[10](UNPACKREG(R, 11, 12))
		-- fallthrough -> 37
	end
	-- [37] OP_84 (10, 51, 0) consumes=1
	do
		if R[10] then
		else
			pc = 51
		end
		-- fallthrough -> 38
	end
	-- [38] OP_93 (0, 51, nil) consumes=1
	do
		pc = 51
		pc = 52
		-- fallthrough -> 39
	end
	-- [39] OP_148 (10, 3, "Position") consumes=1
	do
		R[10] = R[3]["Position"]
		-- fallthrough -> 40
	end
	-- [40] OP_148 (11, 9, "Character") consumes=1
	do
		R[11] = R[9]["Character"]
		-- fallthrough -> 41
	end
	-- [41] OP_148 (11, 11, "HumanoidRootPart") consumes=1
	do
		R[11] = R[11]["HumanoidRootPart"]
		-- fallthrough -> 42
	end
	-- [42] OP_148 (11, 11, "Position") consumes=1
	do
		R[11] = R[11]["Position"]
		-- fallthrough -> 43
	end
	-- [43] OP_71 (10, 10, 11) consumes=1
	do
		R[10] = (R[10] - R[11])
		-- fallthrough -> 44
	end
	-- [44] OP_148 (10, 10, "Magnitude") consumes=1
	do
		R[10] = R[10]["Magnitude"]
		-- fallthrough -> 45
	end
	-- [45] OP_246 (11, "table", nil) consumes=1
	do
		R[11] = UP["table"]
		-- fallthrough -> 46
	end
	-- [46] OP_148 (11, 11, "insert") consumes=1
	do
		R[11] = R[11]["insert"]
		-- fallthrough -> 47
	end
	-- [47] OP_350 (12, 4, 0) consumes=1
	do
		R[12] = R[4]
		-- fallthrough -> 48
	end
	-- [48] OP_344 (13, 0, 2) consumes=1
	do
		R[13] = {}
		-- fallthrough -> 49
	end
	-- [49] OP_30 (13, "player", 9) consumes=1
	do
		R[13]["player"] = R[9]
		-- fallthrough -> 50
	end
	-- [50] OP_30 (13, "distance", 10) consumes=1
	do
		R[13]["distance"] = R[10]
		-- fallthrough -> 51
	end
	-- [51] OP_262 (11, 13, 1) consumes=1
	do
		R[11](UNPACKREG(R, 12, 13))
		-- fallthrough -> 52
	end
	-- [52] OP_175 (5, 26, 2) consumes=1
	do
		R[8] = R[5](R[6], R[7])
		R[9] = nil
		if R[5](R[6], R[7]) then
			R[7] = R[5](R[6], R[7])
			pc = 26
		else
		end
		-- fallthrough -> 53
	end
	-- [53] OP_93 (0, 26, nil) consumes=1
	do
		pc = 26
		pc = 27
		-- fallthrough -> 54
	end
	-- [54] OP_246 (5, "table", nil) consumes=1
	do
		R[5] = UP["table"]
		-- fallthrough -> 55
	end
	-- [55] OP_148 (5, 5, "sort") consumes=1
	do
		R[5] = R[5]["sort"]
		-- fallthrough -> 56
	end
	-- [56] OP_350 (6, 4, 0) consumes=1
	do
		R[6] = R[4]
		-- fallthrough -> 57
	end
	-- [57] OP_296 (7, 0, nil) consumes=1
	do
		R[7] = CLOSURE(PROTO[0], nil, UP)
		-- fallthrough -> 58
	end
	-- [58] OP_236 (5, 7, 1) consumes=10
	do
		R[5](UNPACKREG(R, 6, 7))
		R[5] = {}
		R[6] = 1
		R[7] = UP["math"]
		R[7] = R[7]["min"]
		R[8] = 6
		R[9] = #R[4]
		R[7] = R[7](UNPACKREG(R, 8, 9))
		R[8] = 1
		if R[8] > 0 then
			if R[6] > R[7] then
				pc = 74
			else
				R[9] = R[6]
			end
		elseif R[6] < R[7] then
			pc = 74
		else
			R[9] = R[6]
		end
		-- fallthrough -> 68
	end
	-- [68] OP_246 (10, "table", nil) consumes=1
	do
		R[10] = UP["table"]
		-- fallthrough -> 69
	end
	-- [69] OP_77 (10, 10, "insert") consumes=5
	do
		R[10] = R[10]["insert"]
		R[11] = R[5]
		R[12] = R[4][R[9]]
		R[12] = R[12]["player"]
		R[10](UNPACKREG(R, 11, 12))
		-- fallthrough -> 74
	end
	-- [74] OP_308 (6, 67, nil) consumes=1
	do
		R[6] = (R[6] + R[8])
		if R[8] > 0 then
			if (R[6] + R[8]) <= R[7] then
				pc = 67
				R[9] = (R[6] + R[8])
			end
		elseif (R[6] + R[8]) >= R[7] then
			pc = 67
			R[9] = (R[6] + R[8])
		end
		-- fallthrough -> 75
	end
	-- [75] OP_47 (5, 2, 0) consumes=1
	do
		-- RETURN R[5]
		-- fallthrough -> 76
	end
	-- [76] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 77
	end
end

local function proto_root_10_4_0(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_148 (2, 0, "distance") consumes=1
	do
		R[2] = R[0]["distance"]
		-- fallthrough -> 2
	end
	-- [2] OP_148 (3, 1, "distance") consumes=1
	do
		R[3] = R[1]["distance"]
		-- fallthrough -> 3
	end
	-- [3] OP_168 (2, 5, 3) consumes=1
	do
		if R[2] < R[3] then
		else
			pc = 5
		end
		-- fallthrough -> 4
	end
	-- [4] OP_93 (0, 5, nil) consumes=1
	do
		pc = 5
		pc = 6
		-- fallthrough -> 5
	end
	-- [5] OP_93 (0, 6, nil) consumes=1
	do
		pc = 6
		pc = 7
		-- fallthrough -> 6
	end
	-- [6] OP_329 (2, 0, 0) consumes=1
	do
		R[2] = false
		-- fallthrough -> 7
	end
	-- [7] OP_268 (2, 1, 0) consumes=1
	do
		R[2] = true
		-- fallthrough -> 8
	end
	-- [8] OP_47 (2, 2, 0) consumes=1
	do
		-- RETURN R[2]
		-- fallthrough -> 9
	end
	-- [9] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 10
	end
end

local function proto_root_10_5(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_110 (0, 0, 0) consumes=6
	do
		R[0] = ENV[0]
		R[0] = R[0]()
		R[1] = UP["ipairs"]
		R[2] = R[0]
		R[1] = R[1](R[2])
		R[2] = nil
		R[3] = nil
		pc = 19
		pc = 20
		-- fallthrough -> 7
	end
	-- [7] OP_249 (6, "/e .size ", nil) consumes=1
	do
		R[6] = "/e .size "
		-- fallthrough -> 8
	end
	-- [8] OP_148 (7, 5, "Name") consumes=1
	do
		R[7] = R[5]["Name"]
		-- fallthrough -> 9
	end
	-- [9] OP_249 (8, " 3", nil) consumes=1
	do
		R[8] = " 3"
		-- fallthrough -> 10
	end
	-- [10] OP_224 (6, 6, 8) consumes=1
	do
		R[6] = ((R[6] .. R[7]) .. R[8])
		-- fallthrough -> 11
	end
	-- [11] OP_246 (7, "pcall", nil) consumes=1
	do
		R[7] = UP["pcall"]
		-- fallthrough -> 12
	end
	-- [12] OP_73 (8, 0, 1) consumes=2
	do
		-- unresolved VM temporary: nil = {R, 6}
		c[(#c + 1)] = {}
		R[8] = CLOSURE(PROTO[0], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 14
	end
	-- [14] OP_214 (7, 2, 1) consumes=6
	do
		R[7](R[8])
		R[7] = UP["task"]
		R[7] = R[7]["wait"]
		R[8] = 0.01
		R[7](R[8])
		for d = 1, #c, 1 do
			for d = 0, #c[d], 1 do
				if (c[d][d][1] == R) and (c[d][d][2] >= 6) then
					({})[c[d][d][2]] = c[d][d][1][c[d][d][2]]
					c[d][d][1] = {}
				end
			end
		end
		-- fallthrough -> 20
	end
	-- [20] OP_175 (1, 6, 2) consumes=1
	do
		R[4] = R[1](R[2], R[3])
		R[5] = nil
		if R[1](R[2], R[3]) then
			R[3] = R[1](R[2], R[3])
			pc = 6
		else
		end
		-- fallthrough -> 21
	end
	-- [21] OP_93 (0, 6, nil) consumes=1
	do
		pc = 6
		pc = 7
		-- fallthrough -> 22
	end
	-- [22] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 23
	end
end

local function proto_root_10_5_0(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_100 (0, "game", nil) consumes=7
	do
		R[0] = UP["game"]
		R[1] = R[0]
		R[0] = R[0]["GetService"]
		R[2] = "Players"
		R[0] = R[0](UNPACKREG(R, 1, 2))
		R[1] = R[0]
		R[0] = R[0]["Chat"]
		R[2] = ENV[0]
		R[0](UNPACKREG(R, 1, 2))
		-- fallthrough -> 8
	end
	-- [8] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 9
	end
end

local function proto_root_10_6(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_303 (1, 0, "UserInputType") consumes=5
	do
		R[1] = R[0]["UserInputType"]
		R[2] = UP["Enum"]
		R[2] = R[2]["UserInputType"]
		R[2] = R[2]["MouseMovement"]
		if R[1] == R[2] then
		else
			pc = 7
		end
		-- fallthrough -> 6
	end
	-- [6] OP_93 (0, 7, nil) consumes=1
	do
		pc = 7
		pc = 8
		-- fallthrough -> 7
	end
	-- [7] OP_58 (0, 0, 0) consumes=1
	do
		ENV[0] = R[0]
		-- fallthrough -> 8
	end
	-- [8] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 9
	end
end

local function proto_root_10_7(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_110 (0, 0, 0) consumes=6
	do
		R[0] = ENV[0]
		R[0] = R[0]()
		R[1] = UP["ipairs"]
		R[2] = R[0]
		R[1] = R[1](R[2])
		R[2] = nil
		R[3] = nil
		pc = 19
		pc = 20
		-- fallthrough -> 7
	end
	-- [7] OP_249 (6, "/e .char ", nil) consumes=1
	do
		R[6] = "/e .char "
		-- fallthrough -> 8
	end
	-- [8] OP_148 (7, 5, "Name") consumes=1
	do
		R[7] = R[5]["Name"]
		-- fallthrough -> 9
	end
	-- [9] OP_249 (8, " jjjsssmmm", nil) consumes=1
	do
		R[8] = " jjjsssmmm"
		-- fallthrough -> 10
	end
	-- [10] OP_224 (6, 6, 8) consumes=1
	do
		R[6] = ((R[6] .. R[7]) .. R[8])
		-- fallthrough -> 11
	end
	-- [11] OP_246 (7, "pcall", nil) consumes=1
	do
		R[7] = UP["pcall"]
		-- fallthrough -> 12
	end
	-- [12] OP_73 (8, 0, 1) consumes=2
	do
		-- unresolved VM temporary: nil = {R, 6}
		c[(#c + 1)] = {}
		R[8] = CLOSURE(PROTO[0], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 14
	end
	-- [14] OP_214 (7, 2, 1) consumes=6
	do
		R[7](R[8])
		R[7] = UP["task"]
		R[7] = R[7]["wait"]
		R[8] = 0.01
		R[7](R[8])
		for d = 1, #c, 1 do
			for d = 0, #c[d], 1 do
				if (c[d][d][1] == R) and (c[d][d][2] >= 6) then
					({})[c[d][d][2]] = c[d][d][1][c[d][d][2]]
					c[d][d][1] = {}
				end
			end
		end
		-- fallthrough -> 20
	end
	-- [20] OP_175 (1, 6, 2) consumes=1
	do
		R[4] = R[1](R[2], R[3])
		R[5] = nil
		if R[1](R[2], R[3]) then
			R[3] = R[1](R[2], R[3])
			pc = 6
		else
		end
		-- fallthrough -> 21
	end
	-- [21] OP_93 (0, 6, nil) consumes=1
	do
		pc = 6
		pc = 7
		-- fallthrough -> 22
	end
	-- [22] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 23
	end
end

local function proto_root_10_7_0(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_100 (0, "game", nil) consumes=7
	do
		R[0] = UP["game"]
		R[1] = R[0]
		R[0] = R[0]["GetService"]
		R[2] = "Players"
		R[0] = R[0](UNPACKREG(R, 1, 2))
		R[1] = R[0]
		R[0] = R[0]["Chat"]
		R[2] = ENV[0]
		R[0](UNPACKREG(R, 1, 2))
		-- fallthrough -> 8
	end
	-- [8] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 9
	end
end

local function proto_root_10_8(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_207 (0, 0, 0) consumes=1
	do
		R[0] = ENV[0]
		-- fallthrough -> 2
	end
	-- [2] OP_270 (0, 0, "Destroy") consumes=1
	do
		R[1] = R[0]
		R[0] = R[0]["Destroy"]
		-- fallthrough -> 3
	end
	-- [3] OP_201 (0, 2, 1) consumes=1
	do
		R[0](R[1])
		-- fallthrough -> 4
	end
	-- [4] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 5
	end
end

local function proto_root_10_9(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_303 (1, 0, "UserInputType") consumes=5
	do
		R[1] = R[0]["UserInputType"]
		R[2] = UP["Enum"]
		R[2] = R[2]["UserInputType"]
		R[2] = R[2]["MouseButton1"]
		if R[1] == R[2] then
		else
			pc = 19
		end
		-- fallthrough -> 6
	end
	-- [6] OP_93 (0, 19, nil) consumes=1
	do
		pc = 19
		pc = 20
		-- fallthrough -> 7
	end
	-- [7] OP_268 (1, 1, 0) consumes=1
	do
		R[1] = true
		-- fallthrough -> 8
	end
	-- [8] OP_319 (1, 0, 0) consumes=6
	do
		ENV[0] = R[1]
		R[1] = R[0]["Position"]
		ENV[1] = R[1]
		R[1] = ENV[3]
		R[1] = R[1]["Position"]
		ENV[2] = R[1]
		-- fallthrough -> 14
	end
	-- [14] OP_304 (1, 0, "Changed") consumes=2
	do
		R[1] = R[0]["Changed"]
		R[2] = R[1]
		R[1] = R[1]["Connect"]
		-- fallthrough -> 16
	end
	-- [16] OP_73 (3, 0, 2) consumes=3
	do
		-- unresolved VM temporary: nil = {R, 0}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {ENV, 0}
		c[(#c + 1)] = {}
		R[3] = CLOSURE(PROTO[0], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 19
	end
	-- [19] OP_262 (1, 3, 1) consumes=1
	do
		R[1](UNPACKREG(R, 2, 3))
		-- fallthrough -> 20
	end
	-- [20] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 21
	end
end

local function proto_root_10_9_0(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_310 (0, 0, 0) consumes=6
	do
		R[0] = ENV[0]
		R[0] = R[0]["UserInputState"]
		R[1] = UP["Enum"]
		R[1] = R[1]["UserInputState"]
		R[1] = R[1]["End"]
		if R[0] == R[1] then
		else
			pc = 9
		end
		-- fallthrough -> 7
	end
	-- [7] OP_93 (0, 9, nil) consumes=1
	do
		pc = 9
		pc = 10
		-- fallthrough -> 8
	end
	-- [8] OP_268 (0, 0, 0) consumes=1
	do
		R[0] = false
		-- fallthrough -> 9
	end
	-- [9] OP_58 (0, 1, 0) consumes=1
	do
		ENV[1] = R[0]
		-- fallthrough -> 10
	end
	-- [10] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 11
	end
end

local function proto_root_10_10(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_110 (0, 0, 0) consumes=6
	do
		R[0] = ENV[0]
		R[0] = R[0]()
		R[1] = UP["ipairs"]
		R[2] = R[0]
		R[1] = R[1](R[2])
		R[2] = nil
		R[3] = nil
		pc = 19
		pc = 20
		-- fallthrough -> 7
	end
	-- [7] OP_249 (6, "/e .titlepk ", nil) consumes=1
	do
		R[6] = "/e .titlepk "
		-- fallthrough -> 8
	end
	-- [8] OP_148 (7, 5, "Name") consumes=1
	do
		R[7] = R[5]["Name"]
		-- fallthrough -> 9
	end
	-- [9] OP_249 (8, " 1st ", nil) consumes=1
	do
		R[8] = " 1st "
		-- fallthrough -> 10
	end
	-- [10] OP_224 (6, 6, 8) consumes=1
	do
		R[6] = ((R[6] .. R[7]) .. R[8])
		-- fallthrough -> 11
	end
	-- [11] OP_246 (7, "pcall", nil) consumes=1
	do
		R[7] = UP["pcall"]
		-- fallthrough -> 12
	end
	-- [12] OP_73 (8, 0, 1) consumes=2
	do
		-- unresolved VM temporary: nil = {R, 6}
		c[(#c + 1)] = {}
		R[8] = CLOSURE(PROTO[0], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 14
	end
	-- [14] OP_214 (7, 2, 1) consumes=6
	do
		R[7](R[8])
		R[7] = UP["task"]
		R[7] = R[7]["wait"]
		R[8] = 0.01
		R[7](R[8])
		for d = 1, #c, 1 do
			for d = 0, #c[d], 1 do
				if (c[d][d][1] == R) and (c[d][d][2] >= 6) then
					({})[c[d][d][2]] = c[d][d][1][c[d][d][2]]
					c[d][d][1] = {}
				end
			end
		end
		-- fallthrough -> 20
	end
	-- [20] OP_175 (1, 6, 2) consumes=1
	do
		R[4] = R[1](R[2], R[3])
		R[5] = nil
		if R[1](R[2], R[3]) then
			R[3] = R[1](R[2], R[3])
			pc = 6
		else
		end
		-- fallthrough -> 21
	end
	-- [21] OP_93 (0, 6, nil) consumes=1
	do
		pc = 6
		pc = 7
		-- fallthrough -> 22
	end
	-- [22] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 23
	end
end

local function proto_root_10_10_0(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_100 (0, "game", nil) consumes=7
	do
		R[0] = UP["game"]
		R[1] = R[0]
		R[0] = R[0]["GetService"]
		R[2] = "Players"
		R[0] = R[0](UNPACKREG(R, 1, 2))
		R[1] = R[0]
		R[0] = R[0]["Chat"]
		R[2] = ENV[0]
		R[0](UNPACKREG(R, 1, 2))
		-- fallthrough -> 8
	end
	-- [8] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 9
	end
end

local function proto_root_11(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_207 (0, 0, 0) consumes=1
	do
		R[0] = ENV[0]
		-- fallthrough -> 2
	end
	-- [2] OP_84 (0, 45, 0) consumes=1
	do
		if R[0] then
		else
			pc = 45
		end
		-- fallthrough -> 3
	end
	-- [3] OP_93 (0, 45, nil) consumes=1
	do
		pc = 45
		pc = 46
		-- fallthrough -> 4
	end
	-- [4] OP_207 (0, 1, 0) consumes=1
	do
		R[0] = ENV[1]
		-- fallthrough -> 5
	end
	-- [5] OP_240 (0, 0, 0) consumes=5
	do
		R[0] = not R[0]
		ENV[1] = R[0]
		R[0] = ENV[2]
		R[1] = ENV[1]
		if not R[1] then
		else
			pc = 11
		end
		-- fallthrough -> 10
	end
	-- [10] OP_93 (0, 11, nil) consumes=1
	do
		pc = 11
		pc = 12
		-- fallthrough -> 11
	end
	-- [11] OP_93 (0, 19, nil) consumes=1
	do
		pc = 19
		pc = 20
		-- fallthrough -> 12
	end
	-- [12] OP_246 (1, "Color3", nil) consumes=1
	do
		R[1] = UP["Color3"]
		-- fallthrough -> 13
	end
	-- [13] OP_355 (1, 1, "fromRGB") consumes=6
	do
		R[1] = R[1]["fromRGB"]
		R[2] = 255
		R[3] = 0
		R[4] = 0
		R[1] = R[1](UNPACKREG(R, 2, 4))
		if not R[1] then
		else
			pc = 25
		end
		-- fallthrough -> 19
	end
	-- [19] OP_93 (0, 25, nil) consumes=1
	do
		pc = 25
		pc = 26
		-- fallthrough -> 20
	end
	-- [20] OP_246 (1, "Color3", nil) consumes=1
	do
		R[1] = UP["Color3"]
		-- fallthrough -> 21
	end
	-- [21] OP_148 (1, 1, "fromRGB") consumes=1
	do
		R[1] = R[1]["fromRGB"]
		-- fallthrough -> 22
	end
	-- [22] OP_16 (2, 255, nil) consumes=2
	do
		R[2] = 255
		R[3] = 215
		-- fallthrough -> 24
	end
	-- [24] OP_249 (4, 0, nil) consumes=1
	do
		R[4] = 0
		-- fallthrough -> 25
	end
	-- [25] OP_107 (1, 4, 2) consumes=1
	do
		R[1] = R[1](UNPACKREG(R, 2, 4))
		-- fallthrough -> 26
	end
	-- [26] OP_30 (0, "BackgroundColor3", 1) consumes=1
	do
		R[0]["BackgroundColor3"] = R[1]
		-- fallthrough -> 27
	end
	-- [27] OP_207 (0, 2, 0) consumes=1
	do
		R[0] = ENV[2]
		-- fallthrough -> 28
	end
	-- [28] OP_207 (1, 1, 0) consumes=1
	do
		R[1] = ENV[1]
		-- fallthrough -> 29
	end
	-- [29] OP_321 (1, 31, 1) consumes=1
	do
		if not R[1] then
		else
			pc = 31
		end
		-- fallthrough -> 30
	end
	-- [30] OP_93 (0, 31, nil) consumes=1
	do
		pc = 31
		pc = 32
		-- fallthrough -> 31
	end
	-- [31] OP_93 (0, 34, nil) consumes=1
	do
		pc = 34
		pc = 35
		-- fallthrough -> 32
	end
	-- [32] OP_249 (1, "إيقاف الرساله", nil) consumes=1
	do
		R[1] = "إيقاف الرساله"
		-- fallthrough -> 33
	end
	-- [33] OP_321 (1, 35, 1) consumes=1
	do
		if not R[1] then
		else
			pc = 35
		end
		-- fallthrough -> 34
	end
	-- [34] OP_93 (0, 35, nil) consumes=1
	do
		pc = 35
		pc = 36
		-- fallthrough -> 35
	end
	-- [35] OP_249 (1, "رساله مزعجه", nil) consumes=1
	do
		R[1] = "رساله مزعجه"
		-- fallthrough -> 36
	end
	-- [36] OP_30 (0, "Text", 1) consumes=1
	do
		R[0]["Text"] = R[1]
		-- fallthrough -> 37
	end
	-- [37] OP_207 (0, 1, 0) consumes=1
	do
		R[0] = ENV[1]
		-- fallthrough -> 38
	end
	-- [38] OP_84 (0, 52, 0) consumes=1
	do
		if R[0] then
		else
			pc = 52
		end
		-- fallthrough -> 39
	end
	-- [39] OP_93 (0, 52, nil) consumes=1
	do
		pc = 52
		pc = 53
		-- fallthrough -> 40
	end
	-- [40] OP_246 (0, "coroutine", nil) consumes=1
	do
		R[0] = UP["coroutine"]
		-- fallthrough -> 41
	end
	-- [41] OP_315 (0, 0, "wrap") consumes=5
	do
		R[0] = R[0]["wrap"]
		R[1] = ENV[3]
		R[0] = R[0](R[1])
		R[0]()
		pc = 52
		pc = 53
		-- fallthrough -> 46
	end
	-- [46] OP_207 (0, 2, 0) consumes=1
	do
		R[0] = ENV[2]
		-- fallthrough -> 47
	end
	-- [47] OP_306 (0, "Text", "لم يتم العثور على لاعب!") consumes=6
	do
		R[0]["Text"] = "لم يتم العثور على لاعب!"
		R[0] = UP["wait"]
		R[1] = 1
		R[0](R[1])
		R[0] = ENV[2]
		R[0]["Text"] = "رساله مزعجه"
		-- fallthrough -> 53
	end
	-- [53] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 54
	end
end

local function proto_root_12(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_207 (0, 0, 0) consumes=1
	do
		R[0] = ENV[0]
		-- fallthrough -> 2
	end
	-- [2] OP_84 (0, 4, 0) consumes=1
	do
		if R[0] then
		else
			pc = 4
		end
		-- fallthrough -> 3
	end
	-- [3] OP_93 (0, 4, nil) consumes=1
	do
		pc = 4
		pc = 5
		-- fallthrough -> 4
	end
	-- [4] OP_93 (0, 16, nil) consumes=1
	do
		pc = 16
		pc = 17
		-- fallthrough -> 5
	end
	-- [5] OP_246 (0, "game", nil) consumes=1
	do
		R[0] = UP["game"]
		-- fallthrough -> 6
	end
	-- [6] OP_270 (0, 0, "GetService") consumes=1
	do
		R[1] = R[0]
		R[0] = R[0]["GetService"]
		-- fallthrough -> 7
	end
	-- [7] OP_249 (2, "StarterGui", nil) consumes=1
	do
		R[2] = "StarterGui"
		-- fallthrough -> 8
	end
	-- [8] OP_107 (0, 2, 2) consumes=1
	do
		R[0] = R[0](UNPACKREG(R, 1, 2))
		-- fallthrough -> 9
	end
	-- [9] OP_270 (0, 0, "SetCore") consumes=1
	do
		R[1] = R[0]
		R[0] = R[0]["SetCore"]
		-- fallthrough -> 10
	end
	-- [10] OP_249 (2, "SendNotification", nil) consumes=1
	do
		R[2] = "SendNotification"
		-- fallthrough -> 11
	end
	-- [11] OP_344 (3, 0, 3) consumes=1
	do
		R[3] = {}
		-- fallthrough -> 12
	end
	-- [12] OP_85 (3, "Title", "خطأ") consumes=1
	do
		R[3]["Title"] = "خطأ"
		-- fallthrough -> 13
	end
	-- [13] OP_85 (3, "Text", "لم يتم تحديد لاعب") consumes=1
	do
		R[3]["Text"] = "لم يتم تحديد لاعب"
		-- fallthrough -> 14
	end
	-- [14] OP_85 (3, "Duration", 2) consumes=1
	do
		R[3]["Duration"] = 2
		-- fallthrough -> 15
	end
	-- [15] OP_262 (0, 3, 1) consumes=1
	do
		R[0](UNPACKREG(R, 1, 3))
		-- fallthrough -> 16
	end
	-- [16] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 17
	end
	-- [17] OP_207 (0, 1, 0) consumes=1
	do
		R[0] = ENV[1]
		-- fallthrough -> 18
	end
	-- [18] OP_193 (0, 0, 0) consumes=1
	do
		R[0] = not R[0]
		-- fallthrough -> 19
	end
	-- [19] OP_58 (0, 1, 0) consumes=1
	do
		ENV[1] = R[0]
		-- fallthrough -> 20
	end
	-- [20] OP_207 (0, 1, 0) consumes=1
	do
		R[0] = ENV[1]
		-- fallthrough -> 21
	end
	-- [21] OP_84 (0, 28, 0) consumes=1
	do
		if R[0] then
		else
			pc = 28
		end
		-- fallthrough -> 22
	end
	-- [22] OP_93 (0, 28, nil) consumes=1
	do
		pc = 28
		pc = 29
		-- fallthrough -> 23
	end
	-- [23] OP_207 (0, 2, 0) consumes=1
	do
		R[0] = ENV[2]
		-- fallthrough -> 24
	end
	-- [24] OP_155 (0, "Text", "الكاميرا الأصلية") consumes=5
	do
		R[0]["Text"] = "الكاميرا الأصلية"
		R[0] = ENV[3]
		R[1] = ENV[0]
		R[0](R[1])
		pc = 65
		pc = 66
		-- fallthrough -> 29
	end
	-- [29] OP_207 (0, 2, 0) consumes=1
	do
		R[0] = ENV[2]
		-- fallthrough -> 30
	end
	-- [30] OP_85 (0, "Text", "رايته") consumes=1
	do
		R[0]["Text"] = "رايته"
		-- fallthrough -> 31
	end
	-- [31] OP_312 (0, "game", nil) consumes=5
	do
		R[0] = UP["game"]
		R[0] = R[0]["Players"]
		R[0] = R[0]["LocalPlayer"]
		R[0] = R[0]["Character"]
		if not R[0] then
		else
			pc = 37
		end
		-- fallthrough -> 36
	end
	-- [36] OP_93 (0, 37, nil) consumes=1
	do
		pc = 37
		pc = 38
		-- fallthrough -> 37
	end
	-- [37] OP_93 (0, 55, nil) consumes=1
	do
		pc = 55
		pc = 56
		-- fallthrough -> 38
	end
	-- [38] OP_246 (0, "game", nil) consumes=1
	do
		R[0] = UP["game"]
		-- fallthrough -> 39
	end
	-- [39] OP_148 (0, 0, "Players") consumes=1
	do
		R[0] = R[0]["Players"]
		-- fallthrough -> 40
	end
	-- [40] OP_148 (0, 0, "LocalPlayer") consumes=1
	do
		R[0] = R[0]["LocalPlayer"]
		-- fallthrough -> 41
	end
	-- [41] OP_304 (0, 0, "Character") consumes=2
	do
		R[0] = R[0]["Character"]
		R[1] = R[0]
		R[0] = R[0]["FindFirstChild"]
		-- fallthrough -> 43
	end
	-- [43] OP_249 (2, "Humanoid", nil) consumes=1
	do
		R[2] = "Humanoid"
		-- fallthrough -> 44
	end
	-- [44] OP_107 (0, 2, 2) consumes=1
	do
		R[0] = R[0](UNPACKREG(R, 1, 2))
		-- fallthrough -> 45
	end
	-- [45] OP_84 (0, 55, 0) consumes=1
	do
		if R[0] then
		else
			pc = 55
		end
		-- fallthrough -> 46
	end
	-- [46] OP_93 (0, 55, nil) consumes=1
	do
		pc = 55
		pc = 56
		-- fallthrough -> 47
	end
	-- [47] OP_246 (1, "workspace", nil) consumes=1
	do
		R[1] = UP["workspace"]
		-- fallthrough -> 48
	end
	-- [48] OP_8 (1, 1, "CurrentCamera") consumes=8
	do
		R[1] = R[1]["CurrentCamera"]
		R[2] = UP["Enum"]
		R[2] = R[2]["CameraType"]
		R[2] = R[2]["Custom"]
		R[1]["CameraType"] = R[2]
		R[1] = UP["workspace"]
		R[1] = R[1]["CurrentCamera"]
		R[1]["CameraSubject"] = R[0]
		-- fallthrough -> 56
	end
	-- [56] OP_246 (0, "pairs", nil) consumes=1
	do
		R[0] = UP["pairs"]
		-- fallthrough -> 57
	end
	-- [57] OP_207 (1, 4, 0) consumes=1
	do
		R[1] = ENV[4]
		-- fallthrough -> 58
	end
	-- [58] OP_209 (0, 2, 2) consumes=1
	do
		R[0] = R[0](R[1])
		R[1] = nil
		R[2] = nil
		-- fallthrough -> 59
	end
	-- [59] OP_93 (0, 61, nil) consumes=1
	do
		pc = 61
		pc = 62
		-- fallthrough -> 60
	end
	-- [60] OP_270 (5, 4, "Disconnect") consumes=1
	do
		R[6] = R[4]
		R[5] = R[4]["Disconnect"]
		-- fallthrough -> 61
	end
	-- [61] OP_201 (5, 2, 1) consumes=1
	do
		R[5](R[6])
		-- fallthrough -> 62
	end
	-- [62] OP_175 (0, 59, 2) consumes=1
	do
		R[3] = R[0](R[1], R[2])
		R[4] = nil
		if R[0](R[1], R[2]) then
			R[2] = R[0](R[1], R[2])
			pc = 59
		else
		end
		-- fallthrough -> 63
	end
	-- [63] OP_93 (0, 59, nil) consumes=1
	do
		pc = 59
		pc = 60
		-- fallthrough -> 64
	end
	-- [64] OP_344 (0, 0, 0) consumes=1
	do
		R[0] = {}
		-- fallthrough -> 65
	end
	-- [65] OP_58 (0, 4, 0) consumes=1
	do
		ENV[4] = R[0]
		-- fallthrough -> 66
	end
	-- [66] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 67
	end
end

local function proto_root_13(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_207 (0, 0, 0) consumes=1
	do
		R[0] = ENV[0]
		-- fallthrough -> 2
	end
	-- [2] OP_321 (0, 4, 1) consumes=1
	do
		if not R[0] then
		else
			pc = 4
		end
		-- fallthrough -> 3
	end
	-- [3] OP_93 (0, 4, nil) consumes=1
	do
		pc = 4
		pc = 5
		-- fallthrough -> 4
	end
	-- [4] OP_93 (0, 22, nil) consumes=1
	do
		pc = 22
		pc = 23
		-- fallthrough -> 5
	end
	-- [5] OP_207 (0, 1, 0) consumes=1
	do
		R[0] = ENV[1]
		-- fallthrough -> 6
	end
	-- [6] OP_321 (0, 8, 1) consumes=1
	do
		if not R[0] then
		else
			pc = 8
		end
		-- fallthrough -> 7
	end
	-- [7] OP_93 (0, 8, nil) consumes=1
	do
		pc = 8
		pc = 9
		-- fallthrough -> 8
	end
	-- [8] OP_93 (0, 22, nil) consumes=1
	do
		pc = 22
		pc = 23
		-- fallthrough -> 9
	end
	-- [9] OP_249 (0, "/e .size ", nil) consumes=1
	do
		R[0] = "/e .size "
		-- fallthrough -> 10
	end
	-- [10] OP_105 (1, 1, 0) consumes=5
	do
		R[1] = ENV[1]
		R[1] = R[1]["Name"]
		R[2] = " 0"
		R[0] = ((R[0] .. R[1]) .. R[2])
		R[1] = UP["pcall"]
		-- fallthrough -> 15
	end
	-- [15] OP_73 (2, 0, 1) consumes=2
	do
		-- unresolved VM temporary: nil = {R, 0}
		c[(#c + 1)] = {}
		R[2] = CLOSURE(PROTO[0], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 17
	end
	-- [17] OP_243 (1, 2, 2) consumes=6
	do
		R[1] = R[1](R[2])
		R[2] = nil
		R[3] = UP["wait"]
		R[4] = ENV[2]
		R[3](R[4])
		for d = 1, #c, 1 do
			for d = 0, #c[d], 1 do
				if (c[d][d][1] == R) and (c[d][d][2] >= 0) then
					({})[c[d][d][2]] = c[d][d][1][c[d][d][2]]
					c[d][d][1] = {}
				end
			end
		end
		pc = 0
		pc = 1
		-- fallthrough -> 23
	end
	-- [23] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 24
	end
end

local function proto_root_13_0(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_100 (0, "game", nil) consumes=7
	do
		R[0] = UP["game"]
		R[1] = R[0]
		R[0] = R[0]["GetService"]
		R[2] = "Players"
		R[0] = R[0](UNPACKREG(R, 1, 2))
		R[1] = R[0]
		R[0] = R[0]["Chat"]
		R[2] = ENV[0]
		R[0](UNPACKREG(R, 1, 2))
		-- fallthrough -> 8
	end
	-- [8] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 9
	end
end

local function proto_root_14(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_295 (1, 0, "Position") consumes=6
	do
		R[1] = R[0]["Position"]
		R[2] = ENV[0]
		R[1] = (R[1] - R[2])
		R[2] = ENV[1]
		R[3] = UP["UDim2"]
		R[3] = R[3]["new"]
		-- fallthrough -> 7
	end
	-- [7] OP_210 (4, 2, 0) consumes=7
	do
		R[4] = ENV[2]
		R[4] = R[4]["X"]
		R[4] = R[4]["Scale"]
		R[5] = ENV[2]
		R[5] = R[5]["X"]
		R[5] = R[5]["Offset"]
		R[6] = R[1]["X"]
		-- fallthrough -> 14
	end
	-- [14] OP_313 (5, 5, 6) consumes=1
	do
		R[5] = (R[5] + R[6])
		-- fallthrough -> 15
	end
	-- [15] OP_210 (6, 2, 0) consumes=7
	do
		R[6] = ENV[2]
		R[6] = R[6]["Y"]
		R[6] = R[6]["Scale"]
		R[7] = ENV[2]
		R[7] = R[7]["Y"]
		R[7] = R[7]["Offset"]
		R[8] = R[1]["Y"]
		-- fallthrough -> 22
	end
	-- [22] OP_313 (7, 7, 8) consumes=1
	do
		R[7] = (R[7] + R[8])
		-- fallthrough -> 23
	end
	-- [23] OP_107 (3, 7, 2) consumes=1
	do
		R[3] = R[3](UNPACKREG(R, 4, 7))
		-- fallthrough -> 24
	end
	-- [24] OP_30 (2, "Position", 3) consumes=1
	do
		R[2]["Position"] = R[3]
		-- fallthrough -> 25
	end
	-- [25] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 26
	end
end

local function proto_root_15(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_207 (0, 0, 0) consumes=1
	do
		R[0] = ENV[0]
		-- fallthrough -> 2
	end
	-- [2] OP_321 (0, 4, 1) consumes=1
	do
		if not R[0] then
		else
			pc = 4
		end
		-- fallthrough -> 3
	end
	-- [3] OP_93 (0, 4, nil) consumes=1
	do
		pc = 4
		pc = 5
		-- fallthrough -> 4
	end
	-- [4] OP_93 (0, 8, nil) consumes=1
	do
		pc = 8
		pc = 9
		-- fallthrough -> 5
	end
	-- [5] OP_246 (0, "pcall", nil) consumes=1
	do
		R[0] = UP["pcall"]
		-- fallthrough -> 6
	end
	-- [6] OP_207 (1, 1, 0) consumes=1
	do
		R[1] = ENV[1]
		-- fallthrough -> 7
	end
	-- [7] OP_207 (2, 0, 0) consumes=1
	do
		R[2] = ENV[0]
		-- fallthrough -> 8
	end
	-- [8] OP_262 (0, 2, 1) consumes=1
	do
		R[0](UNPACKREG(R, 1, 2))
		-- fallthrough -> 9
	end
	-- [9] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 10
	end
end

local function proto_root_16(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_207 (1, 0, 0) consumes=1
	do
		R[1] = ENV[0]
		-- fallthrough -> 2
	end
	-- [2] OP_350 (2, 0, 0) consumes=1
	do
		R[2] = R[0]
		-- fallthrough -> 3
	end
	-- [3] OP_202 (1, 2, 2) consumes=1
	do
		R[1] = R[1](R[2])
		-- fallthrough -> 4
	end
	-- [4] OP_84 (1, 6, 0) consumes=1
	do
		if R[1] then
		else
			pc = 6
		end
		-- fallthrough -> 5
	end
	-- [5] OP_93 (0, 6, nil) consumes=1
	do
		pc = 6
		pc = 7
		-- fallthrough -> 6
	end
	-- [6] OP_93 (0, 8, nil) consumes=1
	do
		pc = 8
		pc = 9
		-- fallthrough -> 7
	end
	-- [7] OP_268 (1, 0, 0) consumes=1
	do
		R[1] = false
		-- fallthrough -> 8
	end
	-- [8] OP_47 (1, 2, 0) consumes=1
	do
		-- RETURN R[1]
		-- fallthrough -> 9
	end
	-- [9] OP_246 (1, "pcall", nil) consumes=1
	do
		R[1] = UP["pcall"]
		-- fallthrough -> 10
	end
	-- [10] OP_296 (2, 0, nil) consumes=1
	do
		R[2] = CLOSURE(PROTO[0], nil, UP)
		-- fallthrough -> 11
	end
	-- [11] OP_201 (1, 2, 1) consumes=1
	do
		R[1](R[2])
		-- fallthrough -> 12
	end
	-- [12] OP_268 (1, 1, 0) consumes=1
	do
		R[1] = true
		-- fallthrough -> 13
	end
	-- [13] OP_47 (1, 2, 0) consumes=1
	do
		-- RETURN R[1]
		-- fallthrough -> 14
	end
	-- [14] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 15
	end
end

local function proto_root_16_0(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_327 (0, "game", nil) consumes=5
	do
		R[0] = UP["game"]
		R[1] = R[0]
		R[0] = R[0]["GetService"]
		R[2] = "ReplicatedStorage"
		R[0] = R[0](UNPACKREG(R, 1, 2))
		R[0] = R[0]["PrivateCommands"]
		-- fallthrough -> 6
	end
	-- [6] OP_304 (0, 0, "Char") consumes=2
	do
		R[0] = R[0]["Char"]
		R[1] = R[0]
		R[0] = R[0]["FireServer"]
		-- fallthrough -> 8
	end
	-- [8] OP_351 (2, 1, nil) consumes=7
	do
		R[2] = 1
		R[0](UNPACKREG(R, 1, 2))
		R[0] = UP["game"]
		R[1] = R[0]
		R[0] = R[0]["GetService"]
		R[2] = "ReplicatedStorage"
		R[0] = R[0](UNPACKREG(R, 1, 2))
		R[0] = R[0]["PrivateCommands"]
		-- fallthrough -> 15
	end
	-- [15] OP_304 (0, 0, "Char") consumes=2
	do
		R[0] = R[0]["Char"]
		R[1] = R[0]
		R[0] = R[0]["FireServer"]
		-- fallthrough -> 17
	end
	-- [17] OP_249 (2, 3153563901, nil) consumes=1
	do
		R[2] = 3153563901
		-- fallthrough -> 18
	end
	-- [18] OP_262 (0, 2, 1) consumes=1
	do
		R[0](UNPACKREG(R, 1, 2))
		-- fallthrough -> 19
	end
	-- [19] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 20
	end
end

local function proto_root_17(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_207 (0, 0, 0) consumes=1
	do
		R[0] = ENV[0]
		-- fallthrough -> 2
	end
	-- [2] OP_84 (0, 7, 0) consumes=1
	do
		if R[0] then
		else
			pc = 7
		end
		-- fallthrough -> 3
	end
	-- [3] OP_93 (0, 7, nil) consumes=1
	do
		pc = 7
		pc = 8
		-- fallthrough -> 4
	end
	-- [4] OP_246 (0, "pcall", nil) consumes=1
	do
		R[0] = UP["pcall"]
		-- fallthrough -> 5
	end
	-- [5] OP_207 (1, 1, 0) consumes=1
	do
		R[1] = ENV[1]
		-- fallthrough -> 6
	end
	-- [6] OP_207 (2, 0, 0) consumes=1
	do
		R[2] = ENV[0]
		-- fallthrough -> 7
	end
	-- [7] OP_262 (0, 2, 1) consumes=1
	do
		R[0](UNPACKREG(R, 1, 2))
		-- fallthrough -> 8
	end
	-- [8] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 9
	end
end

local function proto_root_18(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_84 (0, 6, 0) consumes=1
	do
		if R[0] then
		else
			pc = 6
		end
		-- fallthrough -> 2
	end
	-- [2] OP_93 (0, 6, nil) consumes=1
	do
		pc = 6
		pc = 7
		-- fallthrough -> 3
	end
	-- [3] OP_148 (1, 0, "Character") consumes=1
	do
		R[1] = R[0]["Character"]
		-- fallthrough -> 4
	end
	-- [4] OP_84 (1, 6, 0) consumes=1
	do
		if R[1] then
		else
			pc = 6
		end
		-- fallthrough -> 5
	end
	-- [5] OP_93 (0, 6, nil) consumes=1
	do
		pc = 6
		pc = 7
		-- fallthrough -> 6
	end
	-- [6] OP_93 (0, 8, nil) consumes=1
	do
		pc = 8
		pc = 9
		-- fallthrough -> 7
	end
	-- [7] OP_268 (1, 0, 0) consumes=1
	do
		R[1] = false
		-- fallthrough -> 8
	end
	-- [8] OP_47 (1, 2, 0) consumes=1
	do
		-- RETURN R[1]
		-- fallthrough -> 9
	end
	-- [9] OP_246 (1, "game", nil) consumes=1
	do
		R[1] = UP["game"]
		-- fallthrough -> 10
	end
	-- [10] OP_194 (1, 1, "GetService") consumes=6
	do
		R[2] = R[1]
		R[1] = R[1]["GetService"]
		R[3] = "Players"
		R[1] = R[1](UNPACKREG(R, 2, 3))
		R[1] = R[1]["LocalPlayer"]
		R[2] = R[1]["Character"]
		if not R[2] then
		else
			pc = 18
		end
		-- fallthrough -> 16
	end
	-- [16] OP_93 (0, 18, nil) consumes=1
	do
		pc = 18
		pc = 19
		-- fallthrough -> 17
	end
	-- [17] OP_268 (3, 0, 0) consumes=1
	do
		R[3] = false
		-- fallthrough -> 18
	end
	-- [18] OP_47 (3, 2, 0) consumes=1
	do
		-- RETURN R[3]
		-- fallthrough -> 19
	end
	-- [19] OP_207 (3, 0, 0) consumes=1
	do
		R[3] = ENV[0]
		-- fallthrough -> 20
	end
	-- [20] OP_356 (3, 1, 2) consumes=1
	do
		R[3] = R[3]()
		-- fallthrough -> 21
	end
	-- [21] OP_84 (3, 23, 0) consumes=1
	do
		if R[3] then
		else
			pc = 23
		end
		-- fallthrough -> 22
	end
	-- [22] OP_93 (0, 23, nil) consumes=1
	do
		pc = 23
		pc = 24
		-- fallthrough -> 23
	end
	-- [23] OP_93 (0, 25, nil) consumes=1
	do
		pc = 25
		pc = 26
		-- fallthrough -> 24
	end
	-- [24] OP_268 (3, 0, 0) consumes=1
	do
		R[3] = false
		-- fallthrough -> 25
	end
	-- [25] OP_47 (3, 2, 0) consumes=1
	do
		-- RETURN R[3]
		-- fallthrough -> 26
	end
	-- [26] OP_207 (3, 1, 0) consumes=1
	do
		R[3] = ENV[1]
		-- fallthrough -> 27
	end
	-- [27] OP_356 (3, 1, 2) consumes=1
	do
		R[3] = R[3]()
		-- fallthrough -> 28
	end
	-- [28] OP_321 (3, 30, 1) consumes=1
	do
		if not R[3] then
		else
			pc = 30
		end
		-- fallthrough -> 29
	end
	-- [29] OP_93 (0, 30, nil) consumes=1
	do
		pc = 30
		pc = 31
		-- fallthrough -> 30
	end
	-- [30] OP_93 (0, 35, nil) consumes=1
	do
		pc = 35
		pc = 36
		-- fallthrough -> 31
	end
	-- [31] OP_270 (4, 3, "FindFirstChild") consumes=1
	do
		R[5] = R[3]
		R[4] = R[3]["FindFirstChild"]
		-- fallthrough -> 32
	end
	-- [32] OP_249 (6, "RemoteEvent", nil) consumes=1
	do
		R[6] = "RemoteEvent"
		-- fallthrough -> 33
	end
	-- [33] OP_107 (4, 6, 2) consumes=1
	do
		R[4] = R[4](UNPACKREG(R, 5, 6))
		-- fallthrough -> 34
	end
	-- [34] OP_321 (4, 37, 1) consumes=1
	do
		if not R[4] then
		else
			pc = 37
		end
		-- fallthrough -> 35
	end
	-- [35] OP_93 (0, 37, nil) consumes=1
	do
		pc = 37
		pc = 38
		-- fallthrough -> 36
	end
	-- [36] OP_268 (4, 0, 0) consumes=1
	do
		R[4] = false
		-- fallthrough -> 37
	end
	-- [37] OP_47 (4, 2, 0) consumes=1
	do
		-- RETURN R[4]
		-- fallthrough -> 38
	end
	-- [38] OP_148 (4, 0, "Character") consumes=1
	do
		R[4] = R[0]["Character"]
		-- fallthrough -> 39
	end
	-- [39] OP_270 (4, 4, "FindFirstChild") consumes=1
	do
		R[5] = R[4]
		R[4] = R[4]["FindFirstChild"]
		-- fallthrough -> 40
	end
	-- [40] OP_249 (6, "RightUpperArm", nil) consumes=1
	do
		R[6] = "RightUpperArm"
		-- fallthrough -> 41
	end
	-- [41] OP_107 (4, 6, 2) consumes=1
	do
		R[4] = R[4](UNPACKREG(R, 5, 6))
		-- fallthrough -> 42
	end
	-- [42] OP_84 (4, 44, 0) consumes=1
	do
		if R[4] then
		else
			pc = 44
		end
		-- fallthrough -> 43
	end
	-- [43] OP_93 (0, 44, nil) consumes=1
	do
		pc = 44
		pc = 45
		-- fallthrough -> 44
	end
	-- [44] OP_93 (0, 48, nil) consumes=1
	do
		pc = 48
		pc = 49
		-- fallthrough -> 45
	end
	-- [45] OP_148 (4, 0, "Character") consumes=1
	do
		R[4] = R[0]["Character"]
		-- fallthrough -> 46
	end
	-- [46] OP_270 (4, 4, "FindFirstChild") consumes=1
	do
		R[5] = R[4]
		R[4] = R[4]["FindFirstChild"]
		-- fallthrough -> 47
	end
	-- [47] OP_249 (6, "LeftUpperArm", nil) consumes=1
	do
		R[6] = "LeftUpperArm"
		-- fallthrough -> 48
	end
	-- [48] OP_107 (4, 6, 2) consumes=1
	do
		R[4] = R[4](UNPACKREG(R, 5, 6))
		-- fallthrough -> 49
	end
	-- [49] OP_84 (4, 51, 0) consumes=1
	do
		if R[4] then
		else
			pc = 51
		end
		-- fallthrough -> 50
	end
	-- [50] OP_93 (0, 51, nil) consumes=1
	do
		pc = 51
		pc = 52
		-- fallthrough -> 51
	end
	-- [51] OP_93 (0, 53, nil) consumes=1
	do
		pc = 53
		pc = 54
		-- fallthrough -> 52
	end
	-- [52] OP_268 (5, 0, 0) consumes=1
	do
		R[5] = false
		-- fallthrough -> 53
	end
	-- [53] OP_47 (5, 2, 0) consumes=1
	do
		-- RETURN R[5]
		-- fallthrough -> 54
	end
	-- [54] OP_246 (5, "pcall", nil) consumes=1
	do
		R[5] = UP["pcall"]
		-- fallthrough -> 55
	end
	-- [55] OP_73 (6, 0, 5) consumes=6
	do
		-- unresolved VM temporary: nil = {R, 2}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 3}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 4}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 0}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 1}
		c[(#c + 1)] = {}
		R[6] = CLOSURE(PROTO[0], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 61
	end
	-- [61] OP_209 (5, 2, 6) consumes=1
	do
		R[5] = R[5](R[6])
		R[6] = nil
		-- fallthrough -> 62
	end
	-- [62] OP_47 (5, 2, 0) consumes=1
	do
		-- RETURN R[5]
		-- fallthrough -> 63
	end
	-- [63] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 64
	end
end

local function proto_root_18_0(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_242 (0, 0, 0) consumes=6
	do
		R[0] = ENV[0]
		R[0] = R[0]["HumanoidRootPart"]
		R[0] = R[0]["Position"]
		R[1] = UP["workspace"]
		R[1] = R[1]["FallenPartsDestroyHeight"]
		R[2] = ENV[1]
		-- fallthrough -> 7
	end
	-- [7] OP_304 (2, 2, "RemoteEvent") consumes=2
	do
		R[2] = R[2]["RemoteEvent"]
		R[3] = R[2]
		R[2] = R[2]["FireServer"]
		-- fallthrough -> 9
	end
	-- [9] OP_97 (4, 2, 0) consumes=6
	do
		R[4] = ENV[2]
		R[2](UNPACKREG(R, 3, 4))
		R[2] = UP["workspace"]
		R[2]["FallenPartsDestroyHeight"] = -100000000000000
		R[2] = ENV[0]
		R[2] = R[2]["HumanoidRootPart"]
		-- fallthrough -> 15
	end
	-- [15] OP_252 (3, "CFrame", nil) consumes=7
	do
		R[3] = UP["CFrame"]
		R[3] = R[3]["new"]
		R[4] = 0
		R[5] = 10000000
		R[6] = 0
		R[3] = R[3](UNPACKREG(R, 4, 6))
		R[2]["CFrame"] = R[3]
		-- fallthrough -> 22
	end
	-- [22] OP_2 (2, "task", nil) consumes=10
	do
		R[2] = UP["task"]
		R[2] = R[2]["wait"]
		R[3] = 0.2
		R[2](R[3])
		R[2] = UP["game"]
		R[3] = R[2]
		R[2] = R[2]["GetService"]
		R[4] = "Players"
		R[2] = R[2](UNPACKREG(R, 3, 4))
		R[3] = R[2]
		R[2] = R[2]["Chat"]
		R[4] = "/e .re "
		-- fallthrough -> 32
	end
	-- [32] OP_207 (5, 3, 0) consumes=1
	do
		R[5] = ENV[3]
		-- fallthrough -> 33
	end
	-- [33] OP_18 (5, 5, "Name") consumes=10
	do
		R[5] = R[5]["Name"]
		R[4] = (R[4] .. R[5])
		R[2](UNPACKREG(R, 3, 4))
		R[2] = ENV[0]
		R[2] = R[2]["HumanoidRootPart"]
		R[3] = UP["CFrame"]
		R[3] = R[3]["new"]
		R[4] = R[0]
		R[3] = R[3](R[4])
		R[2]["CFrame"] = R[3]
		-- fallthrough -> 43
	end
	-- [43] OP_246 (2, "workspace", nil) consumes=1
	do
		R[2] = UP["workspace"]
		-- fallthrough -> 44
	end
	-- [44] OP_30 (2, "FallenPartsDestroyHeight", 1) consumes=1
	do
		R[2]["FallenPartsDestroyHeight"] = R[1]
		-- fallthrough -> 45
	end
	-- [45] OP_186 (2, "task", nil) consumes=6
	do
		R[2] = UP["task"]
		R[2] = R[2]["wait"]
		R[3] = 0.1
		R[2](R[3])
		R[2] = ENV[1]
		if not R[2] then
		else
			pc = 52
		end
		-- fallthrough -> 51
	end
	-- [51] OP_93 (0, 52, nil) consumes=1
	do
		pc = 52
		pc = 53
		-- fallthrough -> 52
	end
	-- [52] OP_93 (0, 66, nil) consumes=1
	do
		pc = 66
		pc = 67
		-- fallthrough -> 53
	end
	-- [53] OP_207 (2, 1, 0) consumes=1
	do
		R[2] = ENV[1]
		-- fallthrough -> 54
	end
	-- [54] OP_148 (2, 2, "Parent") consumes=1
	do
		R[2] = R[2]["Parent"]
		-- fallthrough -> 55
	end
	-- [55] OP_207 (3, 0, 0) consumes=1
	do
		R[3] = ENV[0]
		-- fallthrough -> 56
	end
	-- [56] OP_358 (2, 58, 3) consumes=1
	do
		pc = (((R[2] == R[3]) and 58) or pc + 1)
		pc = (1 + (((R[2] == R[3]) and 58) or pc + 1))
		-- fallthrough -> 57
	end
	-- [57] OP_93 (0, 58, nil) consumes=1
	do
		pc = 58
		pc = 59
		-- fallthrough -> 58
	end
	-- [58] OP_93 (0, 66, nil) consumes=1
	do
		pc = 66
		pc = 67
		-- fallthrough -> 59
	end
	-- [59] OP_207 (2, 1, 0) consumes=1
	do
		R[2] = ENV[1]
		-- fallthrough -> 60
	end
	-- [60] OP_304 (2, 2, "RemoteEvent") consumes=2
	do
		R[2] = R[2]["RemoteEvent"]
		R[3] = R[2]
		R[2] = R[2]["FireServer"]
		-- fallthrough -> 62
	end
	-- [62] OP_201 (2, 2, 1) consumes=1
	do
		R[2](R[3])
		-- fallthrough -> 63
	end
	-- [63] OP_207 (2, 1, 0) consumes=1
	do
		R[2] = ENV[1]
		-- fallthrough -> 64
	end
	-- [64] OP_207 (3, 4, 0) consumes=1
	do
		R[3] = ENV[4]
		-- fallthrough -> 65
	end
	-- [65] OP_148 (3, 3, "Backpack") consumes=1
	do
		R[3] = R[3]["Backpack"]
		-- fallthrough -> 66
	end
	-- [66] OP_30 (2, "Parent", 3) consumes=1
	do
		R[2]["Parent"] = R[3]
		-- fallthrough -> 67
	end
	-- [67] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 68
	end
end

local function proto_root_19(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_207 (0, 0, 0) consumes=1
	do
		R[0] = ENV[0]
		-- fallthrough -> 2
	end
	-- [2] OP_321 (0, 4, 1) consumes=1
	do
		if not R[0] then
		else
			pc = 4
		end
		-- fallthrough -> 3
	end
	-- [3] OP_93 (0, 4, nil) consumes=1
	do
		pc = 4
		pc = 5
		-- fallthrough -> 4
	end
	-- [4] OP_93 (0, 23, nil) consumes=1
	do
		pc = 23
		pc = 24
		-- fallthrough -> 5
	end
	-- [5] OP_207 (0, 0, 0) consumes=1
	do
		R[0] = ENV[0]
		-- fallthrough -> 6
	end
	-- [6] OP_148 (0, 0, "Name") consumes=1
	do
		R[0] = R[0]["Name"]
		-- fallthrough -> 7
	end
	-- [7] OP_249 (1, "/e .size ", nil) consumes=1
	do
		R[1] = "/e .size "
		-- fallthrough -> 8
	end
	-- [8] OP_350 (2, 0, 0) consumes=1
	do
		R[2] = R[0]
		-- fallthrough -> 9
	end
	-- [9] OP_249 (3, " 3 .neon ", nil) consumes=1
	do
		R[3] = " 3 .neon "
		-- fallthrough -> 10
	end
	-- [10] OP_350 (4, 0, 0) consumes=1
	do
		R[4] = R[0]
		-- fallthrough -> 11
	end
	-- [11] OP_249 (5, " .unfly ", nil) consumes=1
	do
		R[5] = " .unfly "
		-- fallthrough -> 12
	end
	-- [12] OP_331 (6, 0, 0) consumes=7
	do
		R[6] = R[0]
		R[7] = " .height "
		R[8] = R[0]
		R[9] = " 0 .titlepk "
		R[10] = R[0]
		R[11] = "  🥺🥺 تم الفتح من دادي "
		R[1] = (
			(((((((((R[1] .. R[2]) .. R[3]) .. R[4]) .. R[5]) .. R[6]) .. R[7]) .. R[8]) .. R[9]) .. R[10]) .. R[11]
		)
		-- fallthrough -> 19
	end
	-- [19] OP_246 (2, "pcall", nil) consumes=1
	do
		R[2] = UP["pcall"]
		-- fallthrough -> 20
	end
	-- [20] OP_73 (3, 0, 1) consumes=2
	do
		-- unresolved VM temporary: nil = {R, 1}
		c[(#c + 1)] = {}
		R[3] = CLOSURE(PROTO[0], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 22
	end
	-- [22] OP_202 (2, 2, 2) consumes=1
	do
		R[2] = R[2](R[3])
		-- fallthrough -> 23
	end
	-- [23] OP_44 (0, 0, 0) consumes=1
	do
		for d = 1, #c, 1 do
			for l = 0, #c[d], 1 do
				if (c[d][l][1] == R) and (c[d][l][2] >= 0) then
					({})[c[d][l][2]] = c[d][l][1][c[d][l][2]]
					c[d][l][1] = {}
				end
			end
		end
		-- fallthrough -> 24
	end
	-- [24] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 25
	end
end

local function proto_root_19_0(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_100 (0, "game", nil) consumes=7
	do
		R[0] = UP["game"]
		R[1] = R[0]
		R[0] = R[0]["GetService"]
		R[2] = "Players"
		R[0] = R[0](UNPACKREG(R, 1, 2))
		R[1] = R[0]
		R[0] = R[0]["Chat"]
		R[2] = ENV[0]
		R[0](UNPACKREG(R, 1, 2))
		-- fallthrough -> 8
	end
	-- [8] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 9
	end
end

local function proto_root_20(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_246 (1, "pairs", nil) consumes=1
	do
		R[1] = UP["pairs"]
		-- fallthrough -> 2
	end
	-- [2] OP_207 (2, 0, 0) consumes=1
	do
		R[2] = ENV[0]
		-- fallthrough -> 3
	end
	-- [3] OP_209 (1, 2, 3) consumes=1
	do
		R[1] = R[1](R[2])
		R[2] = nil
		R[3] = nil
		-- fallthrough -> 4
	end
	-- [4] OP_93 (0, 9, nil) consumes=1
	do
		pc = 9
		pc = 10
		-- fallthrough -> 5
	end
	-- [5] OP_358 (4, 7, 0) consumes=1
	do
		pc = (((R[4] == R[0]) and 7) or pc + 1)
		pc = (1 + (((R[4] == R[0]) and 7) or pc + 1))
		-- fallthrough -> 6
	end
	-- [6] OP_93 (0, 7, nil) consumes=1
	do
		pc = 7
		pc = 8
		-- fallthrough -> 7
	end
	-- [7] OP_329 (6, 0, 0) consumes=1
	do
		R[6] = false
		-- fallthrough -> 8
	end
	-- [8] OP_268 (6, 1, 0) consumes=1
	do
		R[6] = true
		-- fallthrough -> 9
	end
	-- [9] OP_30 (5, "Visible", 6) consumes=1
	do
		R[5]["Visible"] = R[6]
		-- fallthrough -> 10
	end
	-- [10] OP_175 (1, 4, 2) consumes=1
	do
		R[4] = R[1](R[2], R[3])
		R[5] = nil
		if R[1](R[2], R[3]) then
			R[3] = R[1](R[2], R[3])
			pc = 4
		else
		end
		-- fallthrough -> 11
	end
	-- [11] OP_93 (0, 4, nil) consumes=1
	do
		pc = 4
		pc = 5
		-- fallthrough -> 12
	end
	-- [12] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 13
	end
end

local function proto_root_21(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_16 (0, 1, nil) consumes=2
	do
		R[0] = 1
		R[1] = 1
		-- fallthrough -> 3
	end
	-- [3] OP_207 (2, 0, 0) consumes=1
	do
		R[2] = ENV[0]
		-- fallthrough -> 4
	end
	-- [4] OP_321 (2, 6, 1) consumes=1
	do
		if not R[2] then
		else
			pc = 6
		end
		-- fallthrough -> 5
	end
	-- [5] OP_93 (0, 6, nil) consumes=1
	do
		pc = 6
		pc = 7
		-- fallthrough -> 6
	end
	-- [6] OP_93 (0, 36, nil) consumes=1
	do
		pc = 36
		pc = 37
		-- fallthrough -> 7
	end
	-- [7] OP_207 (2, 1, 0) consumes=1
	do
		R[2] = ENV[1]
		-- fallthrough -> 8
	end
	-- [8] OP_222 (2, 2, 0) consumes=1
	do
		R[2] = R[2][R[0]]
		-- fallthrough -> 9
	end
	-- [9] OP_207 (3, 2, 0) consumes=1
	do
		R[3] = ENV[2]
		-- fallthrough -> 10
	end
	-- [10] OP_195 (3, 3, 1) consumes=7
	do
		R[3] = R[3][R[1]]
		R[4] = {}
		R[4][1] = R[2]
		R[4][2] = R[3]
		R[5] = UP["game"]
		R[6] = R[5]
		R[5] = R[5]["GetService"]
		R[7] = "ReplicatedStorage"
		-- fallthrough -> 17
	end
	-- [17] OP_107 (5, 7, 2) consumes=1
	do
		R[5] = R[5](UNPACKREG(R, 6, 7))
		-- fallthrough -> 18
	end
	-- [18] OP_148 (5, 5, "PrivateCommands") consumes=1
	do
		R[5] = R[5]["PrivateCommands"]
		-- fallthrough -> 19
	end
	-- [19] OP_304 (5, 5, "Title") consumes=2
	do
		R[5] = R[5]["Title"]
		R[6] = R[5]
		R[5] = R[5]["FireServer"]
		-- fallthrough -> 21
	end
	-- [21] OP_98 (7, "unpack", nil) consumes=10
	do
		R[7] = UP["unpack"]
		R[8] = R[4]
		R[5](UNPACKREG(R, 6, 6))
		R[5] = ENV[1]
		R[5] = #R[5]
		R[5] = (R[0] % R[5])
		R[0] = (R[5] + 1)
		R[5] = ENV[2]
		R[5] = #R[5]
		-- fallthrough -> 31
	end
	-- [31] OP_232 (5, 1, 5) consumes=1
	do
		R[5] = (R[1] % R[5])
		-- fallthrough -> 32
	end
	-- [32] OP_32 (1, 5, 1) consumes=5
	do
		R[1] = (R[5] + 1)
		R[5] = UP["wait"]
		R[6] = 0.1
		R[5](R[6])
		pc = 2
		pc = 3
		-- fallthrough -> 37
	end
	-- [37] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 38
	end
end

local function proto_root_22(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_207 (0, 0, 0) consumes=1
	do
		R[0] = ENV[0]
		-- fallthrough -> 2
	end
	-- [2] OP_321 (0, 4, 1) consumes=1
	do
		if not R[0] then
		else
			pc = 4
		end
		-- fallthrough -> 3
	end
	-- [3] OP_93 (0, 4, nil) consumes=1
	do
		pc = 4
		pc = 5
		-- fallthrough -> 4
	end
	-- [4] OP_93 (0, 30, nil) consumes=1
	do
		pc = 30
		pc = 31
		-- fallthrough -> 5
	end
	-- [5] OP_207 (0, 1, 0) consumes=1
	do
		R[0] = ENV[1]
		-- fallthrough -> 6
	end
	-- [6] OP_84 (0, 30, 0) consumes=1
	do
		if R[0] then
		else
			pc = 30
		end
		-- fallthrough -> 7
	end
	-- [7] OP_93 (0, 30, nil) consumes=1
	do
		pc = 30
		pc = 31
		-- fallthrough -> 8
	end
	-- [8] OP_249 (0, "/e .neon ", nil) consumes=1
	do
		R[0] = "/e .neon "
		-- fallthrough -> 9
	end
	-- [9] OP_360 (1, 1, 0) consumes=10
	do
		R[1] = ENV[1]
		R[1] = R[1]["Name"]
		R[2] = " .unfly "
		R[3] = ENV[1]
		R[3] = R[3]["Name"]
		R[4] = " .height "
		R[5] = ENV[1]
		R[5] = R[5]["Name"]
		R[6] = " 0 .titlepk "
		R[7] = ENV[1]
		-- fallthrough -> 19
	end
	-- [19] OP_148 (7, 7, "Name") consumes=1
	do
		R[7] = R[7]["Name"]
		-- fallthrough -> 20
	end
	-- [20] OP_249 (8, "  🥺🥺 تم الفتح من دادي ", nil) consumes=1
	do
		R[8] = "  🥺🥺 تم الفتح من دادي "
		-- fallthrough -> 21
	end
	-- [21] OP_224 (0, 0, 8) consumes=1
	do
		R[0] = ((((((((R[0] .. R[1]) .. R[2]) .. R[3]) .. R[4]) .. R[5]) .. R[6]) .. R[7]) .. R[8])
		-- fallthrough -> 22
	end
	-- [22] OP_58 (0, 2, 0) consumes=1
	do
		ENV[2] = R[0]
		-- fallthrough -> 23
	end
	-- [23] OP_246 (0, "pcall", nil) consumes=1
	do
		R[0] = UP["pcall"]
		-- fallthrough -> 24
	end
	-- [24] OP_73 (1, 0, 1) consumes=2
	do
		-- unresolved VM temporary: nil = {ENV, 2}
		c[(#c + 1)] = {}
		R[1] = CLOSURE(PROTO[0], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 26
	end
	-- [26] OP_280 (0, 2, 1) consumes=5
	do
		R[0] = R[0](R[1])
		R[1] = nil
		R[2] = UP["wait"]
		R[3] = ENV[3]
		R[2](R[3])
		pc = 0
		pc = 1
		-- fallthrough -> 31
	end
	-- [31] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 32
	end
end

local function proto_root_22_0(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_100 (0, "game", nil) consumes=7
	do
		R[0] = UP["game"]
		R[1] = R[0]
		R[0] = R[0]["GetService"]
		R[2] = "Players"
		R[0] = R[0](UNPACKREG(R, 1, 2))
		R[1] = R[0]
		R[0] = R[0]["Chat"]
		R[2] = ENV[0]
		R[0](UNPACKREG(R, 1, 2))
		-- fallthrough -> 8
	end
	-- [8] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 9
	end
end

local function proto_root_23(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_207 (0, 0, 0) consumes=1
	do
		R[0] = ENV[0]
		-- fallthrough -> 2
	end
	-- [2] OP_304 (0, 0, "Text") consumes=2
	do
		R[0] = R[0]["Text"]
		R[1] = R[0]
		R[0] = R[0]["gsub"]
		-- fallthrough -> 4
	end
	-- [4] OP_16 (2, "^%s*(.-)%s*$", nil) consumes=2
	do
		R[2] = "^%s*(.-)%s*$"
		R[3] = "%1"
		-- fallthrough -> 6
	end
	-- [6] OP_107 (0, 3, 2) consumes=1
	do
		R[0] = R[0](UNPACKREG(R, 1, 3))
		-- fallthrough -> 7
	end
	-- [7] OP_231 (0, 9, "") consumes=1
	do
		if R[0] == "" then
		else
			pc = 9
		end
		-- fallthrough -> 8
	end
	-- [8] OP_93 (0, 9, nil) consumes=1
	do
		pc = 9
		pc = 10
		-- fallthrough -> 9
	end
	-- [9] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 10
	end
	-- [10] OP_207 (1, 1, 0) consumes=1
	do
		R[1] = ENV[1]
		-- fallthrough -> 11
	end
	-- [11] OP_230 (2, 0, 0) consumes=10
	do
		R[2] = R[0]
		R[1] = R[1](R[2])
		R[2] = ENV[2]
		R[3] = R[1]
		R[2](R[3])
		R[2] = UP["task"]
		R[2] = R[2]["wait"]
		R[3] = 0.1
		R[2](R[3])
		R[2] = ENV[2]
		-- fallthrough -> 21
	end
	-- [21] OP_249 (3, "/e ABC", nil) consumes=1
	do
		R[3] = "/e ABC"
		-- fallthrough -> 22
	end
	-- [22] OP_201 (2, 2, 1) consumes=1
	do
		R[2](R[3])
		-- fallthrough -> 23
	end
	-- [23] OP_207 (2, 0, 0) consumes=1
	do
		R[2] = ENV[0]
		-- fallthrough -> 24
	end
	-- [24] OP_85 (2, "Text", "") consumes=1
	do
		R[2]["Text"] = ""
		-- fallthrough -> 25
	end
	-- [25] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 26
	end
end

local function proto_root_24(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_207 (0, 0, 0) consumes=1
	do
		R[0] = ENV[0]
		-- fallthrough -> 2
	end
	-- [2] OP_270 (0, 0, "Destroy") consumes=1
	do
		R[1] = R[0]
		R[0] = R[0]["Destroy"]
		-- fallthrough -> 3
	end
	-- [3] OP_201 (0, 2, 1) consumes=1
	do
		R[0](R[1])
		-- fallthrough -> 4
	end
	-- [4] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 5
	end
end

local function proto_root_25(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_312 (0, "game", nil) consumes=5
	do
		R[0] = UP["game"]
		R[0] = R[0]["Players"]
		R[0] = R[0]["LocalPlayer"]
		R[1] = R[0]["Character"]
		if not R[1] then
		else
			pc = 8
		end
		-- fallthrough -> 6
	end
	-- [6] OP_93 (0, 8, nil) consumes=1
	do
		pc = 8
		pc = 9
		-- fallthrough -> 7
	end
	-- [7] OP_268 (2, 0, 0) consumes=1
	do
		R[2] = false
		-- fallthrough -> 8
	end
	-- [8] OP_47 (2, 2, 0) consumes=1
	do
		-- RETURN R[2]
		-- fallthrough -> 9
	end
	-- [9] OP_207 (2, 0, 0) consumes=1
	do
		R[2] = ENV[0]
		-- fallthrough -> 10
	end
	-- [10] OP_356 (2, 1, 2) consumes=1
	do
		R[2] = R[2]()
		-- fallthrough -> 11
	end
	-- [11] OP_321 (2, 14, 1) consumes=1
	do
		if not R[2] then
		else
			pc = 14
		end
		-- fallthrough -> 12
	end
	-- [12] OP_93 (0, 14, nil) consumes=1
	do
		pc = 14
		pc = 15
		-- fallthrough -> 13
	end
	-- [13] OP_268 (3, 0, 0) consumes=1
	do
		R[3] = false
		-- fallthrough -> 14
	end
	-- [14] OP_47 (3, 2, 0) consumes=1
	do
		-- RETURN R[3]
		-- fallthrough -> 15
	end
	-- [15] OP_148 (3, 2, "Parent") consumes=1
	do
		R[3] = R[2]["Parent"]
		-- fallthrough -> 16
	end
	-- [16] OP_255 (3, 18, 1) consumes=1
	do
		if R[3] == R[1] then
		else
			pc = 18
		end
		-- fallthrough -> 17
	end
	-- [17] OP_93 (0, 18, nil) consumes=1
	do
		pc = 18
		pc = 19
		-- fallthrough -> 18
	end
	-- [18] OP_93 (0, 57, nil) consumes=1
	do
		pc = 57
		pc = 58
		-- fallthrough -> 19
	end
	-- [19] OP_246 (3, "ipairs", nil) consumes=1
	do
		R[3] = UP["ipairs"]
		-- fallthrough -> 20
	end
	-- [20] OP_270 (4, 1, "GetChildren") consumes=1
	do
		R[5] = R[1]
		R[4] = R[1]["GetChildren"]
		-- fallthrough -> 21
	end
	-- [21] OP_125 (4, 5, 0) consumes=1
	do
		for d = 4, ((l + 4) - 1), 1 do
			R[d] = PACK(R[4](R[5]))[1]
		end
		-- fallthrough -> 22
	end
	-- [22] OP_36 (3, 0, 5) consumes=1
	do
		R[3] = R[3](UNPACKREG(R, 4, b))
		R[4] = nil
		R[5] = nil
		-- fallthrough -> 23
	end
	-- [23] OP_93 (0, 50, nil) consumes=1
	do
		pc = 50
		pc = 51
		-- fallthrough -> 24
	end
	-- [24] OP_270 (8, 7, "IsA") consumes=1
	do
		R[9] = R[7]
		R[8] = R[7]["IsA"]
		-- fallthrough -> 25
	end
	-- [25] OP_249 (10, "Tool", nil) consumes=1
	do
		R[10] = "Tool"
		-- fallthrough -> 26
	end
	-- [26] OP_107 (8, 10, 2) consumes=1
	do
		R[8] = R[8](UNPACKREG(R, 9, 10))
		-- fallthrough -> 27
	end
	-- [27] OP_321 (8, 29, 1) consumes=1
	do
		if not R[8] then
		else
			pc = 29
		end
		-- fallthrough -> 28
	end
	-- [28] OP_93 (0, 29, nil) consumes=1
	do
		pc = 29
		pc = 30
		-- fallthrough -> 29
	end
	-- [29] OP_93 (0, 50, nil) consumes=1
	do
		pc = 50
		pc = 51
		-- fallthrough -> 30
	end
	-- [30] OP_246 (8, "string", nil) consumes=1
	do
		R[8] = UP["string"]
		-- fallthrough -> 31
	end
	-- [31] OP_148 (8, 8, "find") consumes=1
	do
		R[8] = R[8]["find"]
		-- fallthrough -> 32
	end
	-- [32] OP_304 (9, 7, "Name") consumes=2
	do
		R[9] = R[7]["Name"]
		R[10] = R[9]
		R[9] = R[9]["lower"]
		-- fallthrough -> 34
	end
	-- [34] OP_202 (9, 2, 2) consumes=1
	do
		R[9] = R[9](R[10])
		-- fallthrough -> 35
	end
	-- [35] OP_249 (10, "كلبش", nil) consumes=1
	do
		R[10] = "كلبش"
		-- fallthrough -> 36
	end
	-- [36] OP_107 (8, 10, 2) consumes=1
	do
		R[8] = R[8](UNPACKREG(R, 9, 10))
		-- fallthrough -> 37
	end
	-- [37] OP_321 (8, 48, 1) consumes=1
	do
		if not R[8] then
		else
			pc = 48
		end
		-- fallthrough -> 38
	end
	-- [38] OP_93 (0, 48, nil) consumes=1
	do
		pc = 48
		pc = 49
		-- fallthrough -> 39
	end
	-- [39] OP_246 (8, "string", nil) consumes=1
	do
		R[8] = UP["string"]
		-- fallthrough -> 40
	end
	-- [40] OP_148 (8, 8, "find") consumes=1
	do
		R[8] = R[8]["find"]
		-- fallthrough -> 41
	end
	-- [41] OP_304 (9, 7, "Name") consumes=2
	do
		R[9] = R[7]["Name"]
		R[10] = R[9]
		R[9] = R[9]["lower"]
		-- fallthrough -> 43
	end
	-- [43] OP_202 (9, 2, 2) consumes=1
	do
		R[9] = R[9](R[10])
		-- fallthrough -> 44
	end
	-- [44] OP_249 (10, "Angels handcuffs", nil) consumes=1
	do
		R[10] = "Angels handcuffs"
		-- fallthrough -> 45
	end
	-- [45] OP_107 (8, 10, 2) consumes=1
	do
		R[8] = R[8](UNPACKREG(R, 9, 10))
		-- fallthrough -> 46
	end
	-- [46] OP_321 (8, 48, 1) consumes=1
	do
		if not R[8] then
		else
			pc = 48
		end
		-- fallthrough -> 47
	end
	-- [47] OP_93 (0, 48, nil) consumes=1
	do
		pc = 48
		pc = 49
		-- fallthrough -> 48
	end
	-- [48] OP_93 (0, 50, nil) consumes=1
	do
		pc = 50
		pc = 51
		-- fallthrough -> 49
	end
	-- [49] OP_148 (8, 0, "Backpack") consumes=1
	do
		R[8] = R[0]["Backpack"]
		-- fallthrough -> 50
	end
	-- [50] OP_30 (7, "Parent", 8) consumes=1
	do
		R[7]["Parent"] = R[8]
		-- fallthrough -> 51
	end
	-- [51] OP_175 (3, 23, 2) consumes=1
	do
		R[6] = R[3](R[4], R[5])
		R[7] = nil
		if R[3](R[4], R[5]) then
			R[5] = R[3](R[4], R[5])
			pc = 23
		else
		end
		-- fallthrough -> 52
	end
	-- [52] OP_93 (0, 23, nil) consumes=1
	do
		pc = 23
		pc = 24
		-- fallthrough -> 53
	end
	-- [53] OP_30 (2, "Parent", 1) consumes=1
	do
		R[2]["Parent"] = R[1]
		-- fallthrough -> 54
	end
	-- [54] OP_246 (3, "task", nil) consumes=1
	do
		R[3] = UP["task"]
		-- fallthrough -> 55
	end
	-- [55] OP_148 (3, 3, "wait") consumes=1
	do
		R[3] = R[3]["wait"]
		-- fallthrough -> 56
	end
	-- [56] OP_249 (4, 0, nil) consumes=1
	do
		R[4] = 0
		-- fallthrough -> 57
	end
	-- [57] OP_201 (3, 2, 1) consumes=1
	do
		R[3](R[4])
		-- fallthrough -> 58
	end
	-- [58] OP_268 (3, 1, 0) consumes=1
	do
		R[3] = true
		-- fallthrough -> 59
	end
	-- [59] OP_47 (3, 2, 0) consumes=1
	do
		-- RETURN R[3]
		-- fallthrough -> 60
	end
	-- [60] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 61
	end
end

local function proto_root_26(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_207 (0, 0, 0) consumes=1
	do
		R[0] = ENV[0]
		-- fallthrough -> 2
	end
	-- [2] OP_84 (0, 24, 0) consumes=1
	do
		if R[0] then
		else
			pc = 24
		end
		-- fallthrough -> 3
	end
	-- [3] OP_93 (0, 24, nil) consumes=1
	do
		pc = 24
		pc = 25
		-- fallthrough -> 4
	end
	-- [4] OP_207 (0, 0, 0) consumes=1
	do
		R[0] = ENV[0]
		-- fallthrough -> 5
	end
	-- [5] OP_148 (0, 0, "Name") consumes=1
	do
		R[0] = R[0]["Name"]
		-- fallthrough -> 6
	end
	-- [6] OP_249 (1, "/e .neon ", nil) consumes=1
	do
		R[1] = "/e .neon "
		-- fallthrough -> 7
	end
	-- [7] OP_350 (2, 0, 0) consumes=1
	do
		R[2] = R[0]
		-- fallthrough -> 8
	end
	-- [8] OP_249 (3, " .color ", nil) consumes=1
	do
		R[3] = " .color "
		-- fallthrough -> 9
	end
	-- [9] OP_350 (4, 0, 0) consumes=1
	do
		R[4] = R[0]
		-- fallthrough -> 10
	end
	-- [10] OP_249 (5, " pk .size ", nil) consumes=1
	do
		R[5] = " pk .size "
		-- fallthrough -> 11
	end
	-- [11] OP_350 (6, 0, 0) consumes=1
	do
		R[6] = R[0]
		-- fallthrough -> 12
	end
	-- [12] OP_249 (7, " 2 .thin ", nil) consumes=1
	do
		R[7] = " 2 .thin "
		-- fallthrough -> 13
	end
	-- [13] OP_331 (8, 0, 0) consumes=7
	do
		R[8] = R[0]
		R[9] = " .sit "
		R[10] = R[0]
		R[11] = " .jp "
		R[12] = R[0]
		R[13] = " 1000"
		R[1] = (
			(
				(
					(((((((((R[1] .. R[2]) .. R[3]) .. R[4]) .. R[5]) .. R[6]) .. R[7]) .. R[8]) .. R[9]) .. R[10])
					.. R[11]
				) .. R[12]
			) .. R[13]
		)
		-- fallthrough -> 20
	end
	-- [20] OP_246 (2, "pcall", nil) consumes=1
	do
		R[2] = UP["pcall"]
		-- fallthrough -> 21
	end
	-- [21] OP_73 (3, 0, 1) consumes=2
	do
		-- unresolved VM temporary: nil = {R, 1}
		c[(#c + 1)] = {}
		R[3] = CLOSURE(PROTO[0], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 23
	end
	-- [23] OP_202 (2, 2, 2) consumes=1
	do
		R[2] = R[2](R[3])
		-- fallthrough -> 24
	end
	-- [24] OP_44 (0, 0, 0) consumes=1
	do
		for d = 1, #c, 1 do
			for l = 0, #c[d], 1 do
				if (c[d][l][1] == R) and (c[d][l][2] >= 0) then
					({})[c[d][l][2]] = c[d][l][1][c[d][l][2]]
					c[d][l][1] = {}
				end
			end
		end
		-- fallthrough -> 25
	end
	-- [25] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 26
	end
end

local function proto_root_26_0(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_100 (0, "game", nil) consumes=7
	do
		R[0] = UP["game"]
		R[1] = R[0]
		R[0] = R[0]["GetService"]
		R[2] = "Players"
		R[0] = R[0](UNPACKREG(R, 1, 2))
		R[1] = R[0]
		R[0] = R[0]["Chat"]
		R[2] = ENV[0]
		R[0](UNPACKREG(R, 1, 2))
		-- fallthrough -> 8
	end
	-- [8] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 9
	end
end

local function proto_root_27(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_180 (0, 0, 0) consumes=6
	do
		R[0] = ENV[0]
		R[0] = not R[0]
		ENV[0] = R[0]
		R[0] = ENV[1]
		R[1] = ENV[0]
		if R[1] then
		else
			pc = 11
		end
		-- fallthrough -> 7
	end
	-- [7] OP_93 (0, 11, nil) consumes=1
	do
		pc = 11
		pc = 12
		-- fallthrough -> 8
	end
	-- [8] OP_249 (1, "إيقاف ", nil) consumes=1
	do
		R[1] = "إيقاف "
		-- fallthrough -> 9
	end
	-- [9] OP_84 (1, 11, 0) consumes=1
	do
		if R[1] then
		else
			pc = 11
		end
		-- fallthrough -> 10
	end
	-- [10] OP_93 (0, 11, nil) consumes=1
	do
		pc = 11
		pc = 12
		-- fallthrough -> 11
	end
	-- [11] OP_93 (0, 12, nil) consumes=1
	do
		pc = 12
		pc = 13
		-- fallthrough -> 12
	end
	-- [12] OP_249 (1, "1st ", nil) consumes=1
	do
		R[1] = "1st "
		-- fallthrough -> 13
	end
	-- [13] OP_30 (0, "Text", 1) consumes=1
	do
		R[0]["Text"] = R[1]
		-- fallthrough -> 14
	end
	-- [14] OP_207 (0, 0, 0) consumes=1
	do
		R[0] = ENV[0]
		-- fallthrough -> 15
	end
	-- [15] OP_321 (0, 17, 1) consumes=1
	do
		if not R[0] then
		else
			pc = 17
		end
		-- fallthrough -> 16
	end
	-- [16] OP_93 (0, 17, nil) consumes=1
	do
		pc = 17
		pc = 18
		-- fallthrough -> 17
	end
	-- [17] OP_93 (0, 19, nil) consumes=1
	do
		pc = 19
		pc = 20
		-- fallthrough -> 18
	end
	-- [18] OP_207 (0, 2, 0) consumes=1
	do
		R[0] = ENV[2]
		-- fallthrough -> 19
	end
	-- [19] OP_158 (0, 1, 1) consumes=1
	do
		R[0]()
		-- fallthrough -> 20
	end
	-- [20] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 21
	end
end

local function proto_root_28(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_249 (0, "https://gist.githubusercontent.com/amroffaads/26d5ecaef226633cd0a2bd369cce2083/raw/93b0c0ba8730f642733fa2081d3db4e16af24fe4/%25D8%25A7%25D9%2584%25D8%25AA%25D8%25AC%25D8%25B3%25D8%25B3%2520%25D8%25AE%25D8%25A7%25D8%25B5", nil) consumes=1
	do
		R[0] =
			"https://gist.githubusercontent.com/amroffaads/26d5ecaef226633cd0a2bd369cce2083/raw/93b0c0ba8730f642733fa2081d3db4e16af24fe4/%25D8%25A7%25D9%2584%25D8%25AA%25D8%25AC%25D8%25B3%25D8%25B3%2520%25D8%25AE%25D8%25A7%25D8%25B5"
		-- fallthrough -> 2
	end
	-- [2] OP_246 (1, "pcall", nil) consumes=1
	do
		R[1] = UP["pcall"]
		-- fallthrough -> 3
	end
	-- [3] OP_73 (2, 0, 1) consumes=2
	do
		-- unresolved VM temporary: nil = {R, 0}
		c[(#c + 1)] = {}
		R[2] = CLOSURE(PROTO[0], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 5
	end
	-- [5] OP_209 (1, 2, 2) consumes=1
	do
		R[1] = R[1](R[2])
		R[2] = nil
		-- fallthrough -> 6
	end
	-- [6] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 7
	end
end

local function proto_root_28_0(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_244 (0, "game", nil) consumes=8
	do
		R[0] = UP["game"]
		R[1] = R[0]
		R[0] = R[0]["HttpGet"]
		R[2] = ENV[0]
		R[0] = R[0](UNPACKREG(R, 1, 2))
		R[1] = UP["loadstring"]
		R[2] = R[0]
		R[1] = R[1](R[2])
		R[1]()
		-- RETURN
		-- fallthrough -> 9
	end
	-- [9] OP_5 (0, 1, 0) consumes=10
	do
		R[0] = UP[1]
		R[I_1.A] = R[I_1.B][I_1.C]
		R[I_2.A] = R[I_2.B][I_2.C]
		R[I_3.A] = R[I_3.B][I_3.C]
		R[I_4.A] = (R[I_4.B] * I_4.C)
		R[I_5.A] = (R[I_5.B] + R[I_5.C])
		R[I_6.A] = R[I_6.B][I_6.C]
		R[I_7.A] = R[I_7.B][I_7.C]
		R[I_8.A] = (R[I_8.B] * I_8.C)
		R[I_9.A] = (R[I_9.B] + R[I_9.C])
		-- fallthrough -> 19
	end
end

local function proto_root_29(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_180 (0, 0, 0) consumes=6
	do
		R[0] = ENV[0]
		R[0] = not R[0]
		ENV[0] = R[0]
		R[0] = ENV[1]
		R[1] = ENV[0]
		if R[1] then
		else
			pc = 11
		end
		-- fallthrough -> 7
	end
	-- [7] OP_93 (0, 11, nil) consumes=1
	do
		pc = 11
		pc = 12
		-- fallthrough -> 8
	end
	-- [8] OP_249 (1, "إيقاف أسلحة", nil) consumes=1
	do
		R[1] = "إيقاف أسلحة"
		-- fallthrough -> 9
	end
	-- [9] OP_84 (1, 11, 0) consumes=1
	do
		if R[1] then
		else
			pc = 11
		end
		-- fallthrough -> 10
	end
	-- [10] OP_93 (0, 11, nil) consumes=1
	do
		pc = 11
		pc = 12
		-- fallthrough -> 11
	end
	-- [11] OP_93 (0, 12, nil) consumes=1
	do
		pc = 12
		pc = 13
		-- fallthrough -> 12
	end
	-- [12] OP_249 (1, "أسلحة", nil) consumes=1
	do
		R[1] = "أسلحة"
		-- fallthrough -> 13
	end
	-- [13] OP_30 (0, "Text", 1) consumes=1
	do
		R[0]["Text"] = R[1]
		-- fallthrough -> 14
	end
	-- [14] OP_207 (0, 0, 0) consumes=1
	do
		R[0] = ENV[0]
		-- fallthrough -> 15
	end
	-- [15] OP_84 (0, 23, 0) consumes=1
	do
		if R[0] then
		else
			pc = 23
		end
		-- fallthrough -> 16
	end
	-- [16] OP_93 (0, 23, nil) consumes=1
	do
		pc = 23
		pc = 24
		-- fallthrough -> 17
	end
	-- [17] OP_207 (0, 2, 0) consumes=1
	do
		R[0] = ENV[2]
		-- fallthrough -> 18
	end
	-- [18] OP_207 (1, 3, 0) consumes=1
	do
		R[1] = ENV[3]
		-- fallthrough -> 19
	end
	-- [19] OP_207 (2, 4, 0) consumes=1
	do
		R[2] = ENV[4]
		-- fallthrough -> 20
	end
	-- [20] OP_249 (3, 1, nil) consumes=1
	do
		R[3] = 1
		-- fallthrough -> 21
	end
	-- [21] OP_73 (4, 0, 1) consumes=2
	do
		-- unresolved VM temporary: nil = {ENV, 0}
		c[(#c + 1)] = {}
		R[4] = CLOSURE(PROTO[0], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 23
	end
	-- [23] OP_262 (0, 4, 1) consumes=1
	do
		R[0](UNPACKREG(R, 1, 4))
		-- fallthrough -> 24
	end
	-- [24] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 25
	end
end

local function proto_root_29_0(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_207 (0, 0, 0) consumes=1
	do
		R[0] = ENV[0]
		-- fallthrough -> 2
	end
	-- [2] OP_47 (0, 2, 0) consumes=1
	do
		-- RETURN R[0]
		-- fallthrough -> 3
	end
	-- [3] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 4
	end
end

local function proto_root_30(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_246 (0, "tick", nil) consumes=1
	do
		R[0] = UP["tick"]
		-- fallthrough -> 2
	end
	-- [2] OP_356 (0, 1, 2) consumes=1
	do
		R[0] = R[0]()
		-- fallthrough -> 3
	end
	-- [3] OP_207 (1, 0, 0) consumes=1
	do
		R[1] = ENV[0]
		-- fallthrough -> 4
	end
	-- [4] OP_84 (1, 17, 0) consumes=1
	do
		if R[1] then
		else
			pc = 17
		end
		-- fallthrough -> 5
	end
	-- [5] OP_93 (0, 17, nil) consumes=1
	do
		pc = 17
		pc = 18
		-- fallthrough -> 6
	end
	-- [6] OP_207 (1, 0, 0) consumes=1
	do
		R[1] = ENV[0]
		-- fallthrough -> 7
	end
	-- [7] OP_148 (1, 1, "Parent") consumes=1
	do
		R[1] = R[1]["Parent"]
		-- fallthrough -> 8
	end
	-- [8] OP_321 (1, 10, 1) consumes=1
	do
		if not R[1] then
		else
			pc = 10
		end
		-- fallthrough -> 9
	end
	-- [9] OP_93 (0, 10, nil) consumes=1
	do
		pc = 10
		pc = 11
		-- fallthrough -> 10
	end
	-- [10] OP_93 (0, 17, nil) consumes=1
	do
		pc = 17
		pc = 18
		-- fallthrough -> 11
	end
	-- [11] OP_207 (1, 1, 0) consumes=1
	do
		R[1] = ENV[1]
		-- fallthrough -> 12
	end
	-- [12] OP_71 (1, 0, 1) consumes=1
	do
		R[1] = (R[0] - R[1])
		-- fallthrough -> 13
	end
	-- [13] OP_207 (2, 2, 0) consumes=1
	do
		R[2] = ENV[2]
		-- fallthrough -> 14
	end
	-- [14] OP_168 (1, 17, 2) consumes=1
	do
		if R[1] < R[2] then
		else
			pc = 17
		end
		-- fallthrough -> 15
	end
	-- [15] OP_93 (0, 17, nil) consumes=1
	do
		pc = 17
		pc = 18
		-- fallthrough -> 16
	end
	-- [16] OP_207 (1, 0, 0) consumes=1
	do
		R[1] = ENV[0]
		-- fallthrough -> 17
	end
	-- [17] OP_47 (1, 2, 0) consumes=1
	do
		-- RETURN R[1]
		-- fallthrough -> 18
	end
	-- [18] OP_58 (0, 1, 0) consumes=1
	do
		ENV[1] = R[0]
		-- fallthrough -> 19
	end
	-- [19] OP_246 (1, "game", nil) consumes=1
	do
		R[1] = UP["game"]
		-- fallthrough -> 20
	end
	-- [20] OP_148 (1, 1, "Players") consumes=1
	do
		R[1] = R[1]["Players"]
		-- fallthrough -> 21
	end
	-- [21] OP_148 (1, 1, "LocalPlayer") consumes=1
	do
		R[1] = R[1]["LocalPlayer"]
		-- fallthrough -> 22
	end
	-- [22] OP_84 (1, 24, 0) consumes=1
	do
		if R[1] then
		else
			pc = 24
		end
		-- fallthrough -> 23
	end
	-- [23] OP_93 (0, 24, nil) consumes=1
	do
		pc = 24
		pc = 25
		-- fallthrough -> 24
	end
	-- [24] OP_93 (0, 26, nil) consumes=1
	do
		pc = 26
		pc = 27
		-- fallthrough -> 25
	end
	-- [25] OP_226 (2, 2, 0) consumes=1
	do
		R[2] = nil
		-- fallthrough -> 26
	end
	-- [26] OP_47 (2, 2, 0) consumes=1
	do
		-- RETURN R[2]
		-- fallthrough -> 27
	end
	-- [27] OP_270 (2, 1, "FindFirstChild") consumes=1
	do
		R[3] = R[1]
		R[2] = R[1]["FindFirstChild"]
		-- fallthrough -> 28
	end
	-- [28] OP_249 (4, "Backpack", nil) consumes=1
	do
		R[4] = "Backpack"
		-- fallthrough -> 29
	end
	-- [29] OP_107 (2, 4, 2) consumes=1
	do
		R[2] = R[2](UNPACKREG(R, 3, 4))
		-- fallthrough -> 30
	end
	-- [30] OP_321 (2, 32, 1) consumes=1
	do
		if not R[2] then
		else
			pc = 32
		end
		-- fallthrough -> 31
	end
	-- [31] OP_93 (0, 32, nil) consumes=1
	do
		pc = 32
		pc = 33
		-- fallthrough -> 32
	end
	-- [32] OP_93 (0, 65, nil) consumes=1
	do
		pc = 65
		pc = 66
		-- fallthrough -> 33
	end
	-- [33] OP_246 (3, "ipairs", nil) consumes=1
	do
		R[3] = UP["ipairs"]
		-- fallthrough -> 34
	end
	-- [34] OP_270 (4, 2, "GetChildren") consumes=1
	do
		R[5] = R[2]
		R[4] = R[2]["GetChildren"]
		-- fallthrough -> 35
	end
	-- [35] OP_125 (4, 5, 0) consumes=1
	do
		for d = 4, ((l + 4) - 1), 1 do
			R[d] = PACK(R[4](R[5]))[1]
		end
		-- fallthrough -> 36
	end
	-- [36] OP_36 (3, 0, 5) consumes=1
	do
		R[3] = R[3](UNPACKREG(R, 4, b))
		R[4] = nil
		R[5] = nil
		-- fallthrough -> 37
	end
	-- [37] OP_93 (0, 63, nil) consumes=1
	do
		pc = 63
		pc = 64
		-- fallthrough -> 38
	end
	-- [38] OP_270 (8, 7, "IsA") consumes=1
	do
		R[9] = R[7]
		R[8] = R[7]["IsA"]
		-- fallthrough -> 39
	end
	-- [39] OP_249 (10, "Tool", nil) consumes=1
	do
		R[10] = "Tool"
		-- fallthrough -> 40
	end
	-- [40] OP_107 (8, 10, 2) consumes=1
	do
		R[8] = R[8](UNPACKREG(R, 9, 10))
		-- fallthrough -> 41
	end
	-- [41] OP_84 (8, 63, 0) consumes=1
	do
		if R[8] then
		else
			pc = 63
		end
		-- fallthrough -> 42
	end
	-- [42] OP_93 (0, 63, nil) consumes=1
	do
		pc = 63
		pc = 64
		-- fallthrough -> 43
	end
	-- [43] OP_246 (8, "string", nil) consumes=1
	do
		R[8] = UP["string"]
		-- fallthrough -> 44
	end
	-- [44] OP_148 (8, 8, "find") consumes=1
	do
		R[8] = R[8]["find"]
		-- fallthrough -> 45
	end
	-- [45] OP_304 (9, 7, "Name") consumes=2
	do
		R[9] = R[7]["Name"]
		R[10] = R[9]
		R[9] = R[9]["lower"]
		-- fallthrough -> 47
	end
	-- [47] OP_202 (9, 2, 2) consumes=1
	do
		R[9] = R[9](R[10])
		-- fallthrough -> 48
	end
	-- [48] OP_249 (10, "كلبش", nil) consumes=1
	do
		R[10] = "كلبش"
		-- fallthrough -> 49
	end
	-- [49] OP_107 (8, 10, 2) consumes=1
	do
		R[8] = R[8](UNPACKREG(R, 9, 10))
		-- fallthrough -> 50
	end
	-- [50] OP_321 (8, 60, 1) consumes=1
	do
		if not R[8] then
		else
			pc = 60
		end
		-- fallthrough -> 51
	end
	-- [51] OP_93 (0, 60, nil) consumes=1
	do
		pc = 60
		pc = 61
		-- fallthrough -> 52
	end
	-- [52] OP_246 (8, "string", nil) consumes=1
	do
		R[8] = UP["string"]
		-- fallthrough -> 53
	end
	-- [53] OP_148 (8, 8, "find") consumes=1
	do
		R[8] = R[8]["find"]
		-- fallthrough -> 54
	end
	-- [54] OP_304 (9, 7, "Name") consumes=2
	do
		R[9] = R[7]["Name"]
		R[10] = R[9]
		R[9] = R[9]["lower"]
		-- fallthrough -> 56
	end
	-- [56] OP_202 (9, 2, 2) consumes=1
	do
		R[9] = R[9](R[10])
		-- fallthrough -> 57
	end
	-- [57] OP_249 (10, "klbsh", nil) consumes=1
	do
		R[10] = "klbsh"
		-- fallthrough -> 58
	end
	-- [58] OP_107 (8, 10, 2) consumes=1
	do
		R[8] = R[8](UNPACKREG(R, 9, 10))
		-- fallthrough -> 59
	end
	-- [59] OP_84 (8, 63, 0) consumes=1
	do
		if R[8] then
		else
			pc = 63
		end
		-- fallthrough -> 60
	end
	-- [60] OP_93 (0, 63, nil) consumes=1
	do
		pc = 63
		pc = 64
		-- fallthrough -> 61
	end
	-- [61] OP_58 (7, 0, 0) consumes=1
	do
		ENV[0] = R[7]
		-- fallthrough -> 62
	end
	-- [62] OP_207 (8, 0, 0) consumes=1
	do
		R[8] = ENV[0]
		-- fallthrough -> 63
	end
	-- [63] OP_47 (8, 2, 0) consumes=1
	do
		-- RETURN R[8]
		-- fallthrough -> 64
	end
	-- [64] OP_175 (3, 37, 2) consumes=1
	do
		R[6] = R[3](R[4], R[5])
		R[7] = nil
		if R[3](R[4], R[5]) then
			R[5] = R[3](R[4], R[5])
			pc = 37
		else
		end
		-- fallthrough -> 65
	end
	-- [65] OP_93 (0, 37, nil) consumes=1
	do
		pc = 37
		pc = 38
		-- fallthrough -> 66
	end
	-- [66] OP_226 (3, 3, 0) consumes=1
	do
		R[3] = nil
		-- fallthrough -> 67
	end
	-- [67] OP_58 (3, 0, 0) consumes=1
	do
		ENV[0] = R[3]
		-- fallthrough -> 68
	end
	-- [68] OP_226 (3, 3, 0) consumes=1
	do
		R[3] = nil
		-- fallthrough -> 69
	end
	-- [69] OP_47 (3, 2, 0) consumes=1
	do
		-- RETURN R[3]
		-- fallthrough -> 70
	end
	-- [70] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 71
	end
end

local function proto_root_31(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_207 (0, 0, 0) consumes=1
	do
		R[0] = ENV[0]
		-- fallthrough -> 2
	end
	-- [2] OP_321 (0, 4, 1) consumes=1
	do
		if not R[0] then
		else
			pc = 4
		end
		-- fallthrough -> 3
	end
	-- [3] OP_93 (0, 4, nil) consumes=1
	do
		pc = 4
		pc = 5
		-- fallthrough -> 4
	end
	-- [4] OP_93 (0, 35, nil) consumes=1
	do
		pc = 35
		pc = 36
		-- fallthrough -> 5
	end
	-- [5] OP_207 (0, 1, 0) consumes=1
	do
		R[0] = ENV[1]
		-- fallthrough -> 6
	end
	-- [6] OP_240 (0, 0, 0) consumes=5
	do
		R[0] = not R[0]
		ENV[1] = R[0]
		R[0] = ENV[2]
		R[1] = ENV[1]
		if not R[1] then
		else
			pc = 12
		end
		-- fallthrough -> 11
	end
	-- [11] OP_93 (0, 12, nil) consumes=1
	do
		pc = 12
		pc = 13
		-- fallthrough -> 12
	end
	-- [12] OP_93 (0, 20, nil) consumes=1
	do
		pc = 20
		pc = 21
		-- fallthrough -> 13
	end
	-- [13] OP_246 (1, "Color3", nil) consumes=1
	do
		R[1] = UP["Color3"]
		-- fallthrough -> 14
	end
	-- [14] OP_355 (1, 1, "fromRGB") consumes=6
	do
		R[1] = R[1]["fromRGB"]
		R[2] = 255
		R[3] = 0
		R[4] = 0
		R[1] = R[1](UNPACKREG(R, 2, 4))
		if not R[1] then
		else
			pc = 26
		end
		-- fallthrough -> 20
	end
	-- [20] OP_93 (0, 26, nil) consumes=1
	do
		pc = 26
		pc = 27
		-- fallthrough -> 21
	end
	-- [21] OP_246 (1, "Color3", nil) consumes=1
	do
		R[1] = UP["Color3"]
		-- fallthrough -> 22
	end
	-- [22] OP_148 (1, 1, "fromRGB") consumes=1
	do
		R[1] = R[1]["fromRGB"]
		-- fallthrough -> 23
	end
	-- [23] OP_16 (2, 225, nil) consumes=2
	do
		R[2] = 225
		R[3] = 215
		-- fallthrough -> 25
	end
	-- [25] OP_249 (4, 0, nil) consumes=1
	do
		R[4] = 0
		-- fallthrough -> 26
	end
	-- [26] OP_107 (1, 4, 2) consumes=1
	do
		R[1] = R[1](UNPACKREG(R, 2, 4))
		-- fallthrough -> 27
	end
	-- [27] OP_30 (0, "BackgroundColor3", 1) consumes=1
	do
		R[0]["BackgroundColor3"] = R[1]
		-- fallthrough -> 28
	end
	-- [28] OP_207 (0, 1, 0) consumes=1
	do
		R[0] = ENV[1]
		-- fallthrough -> 29
	end
	-- [29] OP_84 (0, 35, 0) consumes=1
	do
		if R[0] then
		else
			pc = 35
		end
		-- fallthrough -> 30
	end
	-- [30] OP_93 (0, 35, nil) consumes=1
	do
		pc = 35
		pc = 36
		-- fallthrough -> 31
	end
	-- [31] OP_246 (0, "coroutine", nil) consumes=1
	do
		R[0] = UP["coroutine"]
		-- fallthrough -> 32
	end
	-- [32] OP_148 (0, 0, "wrap") consumes=1
	do
		R[0] = R[0]["wrap"]
		-- fallthrough -> 33
	end
	-- [33] OP_207 (1, 3, 0) consumes=1
	do
		R[1] = ENV[3]
		-- fallthrough -> 34
	end
	-- [34] OP_202 (0, 2, 2) consumes=1
	do
		R[0] = R[0](R[1])
		-- fallthrough -> 35
	end
	-- [35] OP_158 (0, 1, 1) consumes=1
	do
		R[0]()
		-- fallthrough -> 36
	end
	-- [36] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 37
	end
end

local function proto_root_32(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_327 (1, "game", nil) consumes=5
	do
		R[1] = UP["game"]
		R[2] = R[1]
		R[1] = R[1]["GetService"]
		R[3] = "TextChatService"
		R[1] = R[1](UNPACKREG(R, 2, 3))
		R[2] = R[1]["TextChannels"]
		-- fallthrough -> 6
	end
	-- [6] OP_148 (2, 2, "RBXGeneral") consumes=1
	do
		R[2] = R[2]["RBXGeneral"]
		-- fallthrough -> 7
	end
	-- [7] OP_84 (2, 12, 0) consumes=1
	do
		if R[2] then
		else
			pc = 12
		end
		-- fallthrough -> 8
	end
	-- [8] OP_93 (0, 12, nil) consumes=1
	do
		pc = 12
		pc = 13
		-- fallthrough -> 9
	end
	-- [9] OP_270 (3, 2, "SendAsync") consumes=1
	do
		R[4] = R[2]
		R[3] = R[2]["SendAsync"]
		-- fallthrough -> 10
	end
	-- [10] OP_350 (5, 0, 0) consumes=1
	do
		R[5] = R[0]
		-- fallthrough -> 11
	end
	-- [11] OP_262 (3, 5, 1) consumes=1
	do
		R[3](UNPACKREG(R, 4, 5))
		-- fallthrough -> 12
	end
	-- [12] OP_93 (0, 22, nil) consumes=1
	do
		pc = 22
		pc = 23
		-- fallthrough -> 13
	end
	-- [13] OP_246 (3, "game", nil) consumes=1
	do
		R[3] = UP["game"]
		-- fallthrough -> 14
	end
	-- [14] OP_270 (3, 3, "GetService") consumes=1
	do
		R[4] = R[3]
		R[3] = R[3]["GetService"]
		-- fallthrough -> 15
	end
	-- [15] OP_249 (5, "ReplicatedStorage", nil) consumes=1
	do
		R[5] = "ReplicatedStorage"
		-- fallthrough -> 16
	end
	-- [16] OP_107 (3, 5, 2) consumes=1
	do
		R[3] = R[3](UNPACKREG(R, 4, 5))
		-- fallthrough -> 17
	end
	-- [17] OP_148 (3, 3, "DefaultChatSystemChatEvents") consumes=1
	do
		R[3] = R[3]["DefaultChatSystemChatEvents"]
		-- fallthrough -> 18
	end
	-- [18] OP_304 (3, 3, "SayMessageRequest") consumes=2
	do
		R[3] = R[3]["SayMessageRequest"]
		R[4] = R[3]
		R[3] = R[3]["FireServer"]
		-- fallthrough -> 20
	end
	-- [20] OP_350 (5, 0, 0) consumes=1
	do
		R[5] = R[0]
		-- fallthrough -> 21
	end
	-- [21] OP_249 (6, "All", nil) consumes=1
	do
		R[6] = "All"
		-- fallthrough -> 22
	end
	-- [22] OP_262 (3, 6, 1) consumes=1
	do
		R[3](UNPACKREG(R, 4, 6))
		-- fallthrough -> 23
	end
	-- [23] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 24
	end
end

local function proto_root_33(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_79 (0, 0, 0) consumes=6
	do
		R[0] = ENV[0]
		R[0] = not R[0]
		ENV[0] = R[0]
		R[0] = ENV[1]
		R[1] = ENV[0]
		if not R[1] then
		else
			pc = 8
		end
		-- fallthrough -> 7
	end
	-- [7] OP_93 (0, 8, nil) consumes=1
	do
		pc = 8
		pc = 9
		-- fallthrough -> 8
	end
	-- [8] OP_93 (0, 11, nil) consumes=1
	do
		pc = 11
		pc = 12
		-- fallthrough -> 9
	end
	-- [9] OP_249 (1, "إيقاف مص", nil) consumes=1
	do
		R[1] = "إيقاف مص"
		-- fallthrough -> 10
	end
	-- [10] OP_321 (1, 12, 1) consumes=1
	do
		if not R[1] then
		else
			pc = 12
		end
		-- fallthrough -> 11
	end
	-- [11] OP_93 (0, 12, nil) consumes=1
	do
		pc = 12
		pc = 13
		-- fallthrough -> 12
	end
	-- [12] OP_249 (1, "مص", nil) consumes=1
	do
		R[1] = "مص"
		-- fallthrough -> 13
	end
	-- [13] OP_30 (0, "Text", 1) consumes=1
	do
		R[0]["Text"] = R[1]
		-- fallthrough -> 14
	end
	-- [14] OP_207 (0, 0, 0) consumes=1
	do
		R[0] = ENV[0]
		-- fallthrough -> 15
	end
	-- [15] OP_84 (0, 34, 0) consumes=1
	do
		if R[0] then
		else
			pc = 34
		end
		-- fallthrough -> 16
	end
	-- [16] OP_93 (0, 34, nil) consumes=1
	do
		pc = 34
		pc = 35
		-- fallthrough -> 17
	end
	-- [17] OP_207 (0, 2, 0) consumes=1
	do
		R[0] = ENV[2]
		-- fallthrough -> 18
	end
	-- [18] OP_84 (0, 29, 0) consumes=1
	do
		if R[0] then
		else
			pc = 29
		end
		-- fallthrough -> 19
	end
	-- [19] OP_93 (0, 29, nil) consumes=1
	do
		pc = 29
		pc = 30
		-- fallthrough -> 20
	end
	-- [20] OP_207 (0, 2, 0) consumes=1
	do
		R[0] = ENV[2]
		-- fallthrough -> 21
	end
	-- [21] OP_148 (0, 0, "Character") consumes=1
	do
		R[0] = R[0]["Character"]
		-- fallthrough -> 22
	end
	-- [22] OP_84 (0, 29, 0) consumes=1
	do
		if R[0] then
		else
			pc = 29
		end
		-- fallthrough -> 23
	end
	-- [23] OP_93 (0, 29, nil) consumes=1
	do
		pc = 29
		pc = 30
		-- fallthrough -> 24
	end
	-- [24] OP_246 (0, "coroutine", nil) consumes=1
	do
		R[0] = UP["coroutine"]
		-- fallthrough -> 25
	end
	-- [25] OP_315 (0, 0, "wrap") consumes=5
	do
		R[0] = R[0]["wrap"]
		R[1] = ENV[3]
		R[0] = R[0](R[1])
		R[0]()
		pc = 40
		pc = 41
		-- fallthrough -> 30
	end
	-- [30] OP_268 (0, 0, 0) consumes=1
	do
		R[0] = false
		-- fallthrough -> 31
	end
	-- [31] OP_58 (0, 0, 0) consumes=1
	do
		ENV[0] = R[0]
		-- fallthrough -> 32
	end
	-- [32] OP_207 (0, 1, 0) consumes=1
	do
		R[0] = ENV[1]
		-- fallthrough -> 33
	end
	-- [33] OP_85 (0, "Text", "مص") consumes=1
	do
		R[0]["Text"] = "مص"
		-- fallthrough -> 34
	end
	-- [34] OP_93 (0, 40, nil) consumes=1
	do
		pc = 40
		pc = 41
		-- fallthrough -> 35
	end
	-- [35] OP_207 (0, 4, 0) consumes=1
	do
		R[0] = ENV[4]
		-- fallthrough -> 36
	end
	-- [36] OP_84 (0, 40, 0) consumes=1
	do
		if R[0] then
		else
			pc = 40
		end
		-- fallthrough -> 37
	end
	-- [37] OP_93 (0, 40, nil) consumes=1
	do
		pc = 40
		pc = 41
		-- fallthrough -> 38
	end
	-- [38] OP_207 (0, 4, 0) consumes=1
	do
		R[0] = ENV[4]
		-- fallthrough -> 39
	end
	-- [39] OP_270 (0, 0, "Stop") consumes=1
	do
		R[1] = R[0]
		R[0] = R[0]["Stop"]
		-- fallthrough -> 40
	end
	-- [40] OP_201 (0, 2, 1) consumes=1
	do
		R[0](R[1])
		-- fallthrough -> 41
	end
	-- [41] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 42
	end
end

local function proto_root_34(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_267 (0, 0, 0) consumes=4
	do
		R[0] = ENV[0]
		R[1] = ENV[1]
		R[1] = R[1]["Text"]
		R[0](R[1])
		-- RETURN
		-- fallthrough -> 5
	end
	-- [5] OP_15 (0, 1, 0) consumes=5
	do
		R[0] = UP[1]
		R[(I_1.A + 1)] = R[I_1.B]
		R[I_1.A] = R[I_1.B][I_1.C]
		for d = I_2.A, ((nil + I_2.A) - 1), 1 do
			R[d] = PACK(R[I_2.A](R[(I_2.A + 1)]))[1]
		end
		for d = I_3.A, I_3.C, 1 do
			R[d] = R[I_3.A](UNPACKREG(R, (I_3.A + 1), ((nil + I_2.A) - 1)))
		end
		pc = I_4.B
		pc = (1 + I_4.B)
		-- fallthrough -> 10
	end
end

local function proto_root_35(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_84 (0, 6, 0) consumes=1
	do
		if R[0] then
		else
			pc = 6
		end
		-- fallthrough -> 2
	end
	-- [2] OP_93 (0, 6, nil) consumes=1
	do
		pc = 6
		pc = 7
		-- fallthrough -> 3
	end
	-- [3] OP_148 (1, 0, "Character") consumes=1
	do
		R[1] = R[0]["Character"]
		-- fallthrough -> 4
	end
	-- [4] OP_84 (1, 6, 0) consumes=1
	do
		if R[1] then
		else
			pc = 6
		end
		-- fallthrough -> 5
	end
	-- [5] OP_93 (0, 6, nil) consumes=1
	do
		pc = 6
		pc = 7
		-- fallthrough -> 6
	end
	-- [6] OP_93 (0, 8, nil) consumes=1
	do
		pc = 8
		pc = 9
		-- fallthrough -> 7
	end
	-- [7] OP_268 (1, 0, 0) consumes=1
	do
		R[1] = false
		-- fallthrough -> 8
	end
	-- [8] OP_47 (1, 2, 0) consumes=1
	do
		-- RETURN R[1]
		-- fallthrough -> 9
	end
	-- [9] OP_246 (1, "game", nil) consumes=1
	do
		R[1] = UP["game"]
		-- fallthrough -> 10
	end
	-- [10] OP_326 (1, 1, "GetService") consumes=6
	do
		R[2] = R[1]
		R[1] = R[1]["GetService"]
		R[3] = "Players"
		R[1] = R[1](UNPACKREG(R, 2, 3))
		R[1] = R[1]["LocalPlayer"]
		R[2] = R[1]["Character"]
		if R[2] then
		else
			pc = 22
		end
		-- fallthrough -> 16
	end
	-- [16] OP_93 (0, 22, nil) consumes=1
	do
		pc = 22
		pc = 23
		-- fallthrough -> 17
	end
	-- [17] OP_270 (3, 2, "FindFirstChild") consumes=1
	do
		R[4] = R[2]
		R[3] = R[2]["FindFirstChild"]
		-- fallthrough -> 18
	end
	-- [18] OP_249 (5, "Humanoid", nil) consumes=1
	do
		R[5] = "Humanoid"
		-- fallthrough -> 19
	end
	-- [19] OP_107 (3, 5, 2) consumes=1
	do
		R[3] = R[3](UNPACKREG(R, 4, 5))
		-- fallthrough -> 20
	end
	-- [20] OP_84 (3, 22, 0) consumes=1
	do
		if R[3] then
		else
			pc = 22
		end
		-- fallthrough -> 21
	end
	-- [21] OP_93 (0, 22, nil) consumes=1
	do
		pc = 22
		pc = 23
		-- fallthrough -> 22
	end
	-- [22] OP_93 (0, 24, nil) consumes=1
	do
		pc = 24
		pc = 25
		-- fallthrough -> 23
	end
	-- [23] OP_268 (3, 0, 0) consumes=1
	do
		R[3] = false
		-- fallthrough -> 24
	end
	-- [24] OP_47 (3, 2, 0) consumes=1
	do
		-- RETURN R[3]
		-- fallthrough -> 25
	end
	-- [25] OP_207 (3, 0, 0) consumes=1
	do
		R[3] = ENV[0]
		-- fallthrough -> 26
	end
	-- [26] OP_356 (3, 1, 2) consumes=1
	do
		R[3] = R[3]()
		-- fallthrough -> 27
	end
	-- [27] OP_321 (3, 30, 1) consumes=1
	do
		if not R[3] then
		else
			pc = 30
		end
		-- fallthrough -> 28
	end
	-- [28] OP_93 (0, 30, nil) consumes=1
	do
		pc = 30
		pc = 31
		-- fallthrough -> 29
	end
	-- [29] OP_268 (3, 0, 0) consumes=1
	do
		R[3] = false
		-- fallthrough -> 30
	end
	-- [30] OP_47 (3, 2, 0) consumes=1
	do
		-- RETURN R[3]
		-- fallthrough -> 31
	end
	-- [31] OP_207 (3, 1, 0) consumes=1
	do
		R[3] = ENV[1]
		-- fallthrough -> 32
	end
	-- [32] OP_356 (3, 1, 2) consumes=1
	do
		R[3] = R[3]()
		-- fallthrough -> 33
	end
	-- [33] OP_321 (3, 35, 1) consumes=1
	do
		if not R[3] then
		else
			pc = 35
		end
		-- fallthrough -> 34
	end
	-- [34] OP_93 (0, 35, nil) consumes=1
	do
		pc = 35
		pc = 36
		-- fallthrough -> 35
	end
	-- [35] OP_93 (0, 40, nil) consumes=1
	do
		pc = 40
		pc = 41
		-- fallthrough -> 36
	end
	-- [36] OP_270 (4, 3, "FindFirstChild") consumes=1
	do
		R[5] = R[3]
		R[4] = R[3]["FindFirstChild"]
		-- fallthrough -> 37
	end
	-- [37] OP_249 (6, "RemoteEvent", nil) consumes=1
	do
		R[6] = "RemoteEvent"
		-- fallthrough -> 38
	end
	-- [38] OP_107 (4, 6, 2) consumes=1
	do
		R[4] = R[4](UNPACKREG(R, 5, 6))
		-- fallthrough -> 39
	end
	-- [39] OP_321 (4, 42, 1) consumes=1
	do
		if not R[4] then
		else
			pc = 42
		end
		-- fallthrough -> 40
	end
	-- [40] OP_93 (0, 42, nil) consumes=1
	do
		pc = 42
		pc = 43
		-- fallthrough -> 41
	end
	-- [41] OP_268 (4, 0, 0) consumes=1
	do
		R[4] = false
		-- fallthrough -> 42
	end
	-- [42] OP_47 (4, 2, 0) consumes=1
	do
		-- RETURN R[4]
		-- fallthrough -> 43
	end
	-- [43] OP_148 (4, 0, "Character") consumes=1
	do
		R[4] = R[0]["Character"]
		-- fallthrough -> 44
	end
	-- [44] OP_270 (4, 4, "FindFirstChild") consumes=1
	do
		R[5] = R[4]
		R[4] = R[4]["FindFirstChild"]
		-- fallthrough -> 45
	end
	-- [45] OP_249 (6, "RightUpperArm", nil) consumes=1
	do
		R[6] = "RightUpperArm"
		-- fallthrough -> 46
	end
	-- [46] OP_107 (4, 6, 2) consumes=1
	do
		R[4] = R[4](UNPACKREG(R, 5, 6))
		-- fallthrough -> 47
	end
	-- [47] OP_321 (4, 52, 1) consumes=1
	do
		if not R[4] then
		else
			pc = 52
		end
		-- fallthrough -> 48
	end
	-- [48] OP_93 (0, 52, nil) consumes=1
	do
		pc = 52
		pc = 53
		-- fallthrough -> 49
	end
	-- [49] OP_148 (4, 0, "Character") consumes=1
	do
		R[4] = R[0]["Character"]
		-- fallthrough -> 50
	end
	-- [50] OP_270 (4, 4, "FindFirstChild") consumes=1
	do
		R[5] = R[4]
		R[4] = R[4]["FindFirstChild"]
		-- fallthrough -> 51
	end
	-- [51] OP_249 (6, "LeftUpperArm", nil) consumes=1
	do
		R[6] = "LeftUpperArm"
		-- fallthrough -> 52
	end
	-- [52] OP_107 (4, 6, 2) consumes=1
	do
		R[4] = R[4](UNPACKREG(R, 5, 6))
		-- fallthrough -> 53
	end
	-- [53] OP_321 (4, 56, 1) consumes=1
	do
		if not R[4] then
		else
			pc = 56
		end
		-- fallthrough -> 54
	end
	-- [54] OP_93 (0, 56, nil) consumes=1
	do
		pc = 56
		pc = 57
		-- fallthrough -> 55
	end
	-- [55] OP_268 (5, 0, 0) consumes=1
	do
		R[5] = false
		-- fallthrough -> 56
	end
	-- [56] OP_47 (5, 2, 0) consumes=1
	do
		-- RETURN R[5]
		-- fallthrough -> 57
	end
	-- [57] OP_148 (5, 2, "Humanoid") consumes=1
	do
		R[5] = R[2]["Humanoid"]
		-- fallthrough -> 58
	end
	-- [58] OP_42 (6, 5, "WalkSpeed") consumes=5
	do
		R[6] = R[5]["WalkSpeed"]
		R[7] = R[5]["JumpPower"]
		R[5]["WalkSpeed"] = 0
		R[5]["JumpPower"] = 0
		R[8] = UP["pcall"]
		-- fallthrough -> 63
	end
	-- [63] OP_73 (9, 0, 5) consumes=6
	do
		-- unresolved VM temporary: nil = {R, 2}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 0}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 3}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 4}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 1}
		c[(#c + 1)] = {}
		R[9] = CLOSURE(PROTO[0], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 69
	end
	-- [69] OP_209 (8, 2, 9) consumes=1
	do
		R[8] = R[8](R[9])
		R[9] = nil
		-- fallthrough -> 70
	end
	-- [70] OP_246 (10, "pcall", nil) consumes=1
	do
		R[10] = UP["pcall"]
		-- fallthrough -> 71
	end
	-- [71] OP_73 (11, 1, 3) consumes=4
	do
		-- unresolved VM temporary: nil = {R, 5}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 6}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 7}
		c[(#c + 1)] = {}
		R[11] = CLOSURE(PROTO[1], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 75
	end
	-- [75] OP_201 (10, 2, 1) consumes=1
	do
		R[10](R[11])
		-- fallthrough -> 76
	end
	-- [76] OP_47 (8, 2, 0) consumes=1
	do
		-- RETURN R[8]
		-- fallthrough -> 77
	end
	-- [77] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 78
	end
end

local function proto_root_35_0(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_210 (0, 0, 0) consumes=7
	do
		R[0] = ENV[0]
		R[0] = R[0]["HumanoidRootPart"]
		R[0] = R[0]["Position"]
		R[1] = ENV[1]
		R[1] = R[1]["Character"]
		R[1] = R[1]["HumanoidRootPart"]
		R[1] = R[1]["Position"]
		-- fallthrough -> 8
	end
	-- [8] OP_246 (2, "workspace", nil) consumes=1
	do
		R[2] = UP["workspace"]
		-- fallthrough -> 9
	end
	-- [9] OP_148 (2, 2, "FallenPartsDestroyHeight") consumes=1
	do
		R[2] = R[2]["FallenPartsDestroyHeight"]
		-- fallthrough -> 10
	end
	-- [10] OP_207 (3, 2, 0) consumes=1
	do
		R[3] = ENV[2]
		-- fallthrough -> 11
	end
	-- [11] OP_304 (3, 3, "RemoteEvent") consumes=2
	do
		R[3] = R[3]["RemoteEvent"]
		R[4] = R[3]
		R[3] = R[3]["FireServer"]
		-- fallthrough -> 13
	end
	-- [13] OP_97 (5, 3, 0) consumes=6
	do
		R[5] = ENV[3]
		R[3](UNPACKREG(R, 4, 5))
		R[3] = UP["workspace"]
		R[3]["FallenPartsDestroyHeight"] = -100000000000
		R[3] = ENV[0]
		R[3] = R[3]["HumanoidRootPart"]
		-- fallthrough -> 19
	end
	-- [19] OP_252 (4, "CFrame", nil) consumes=7
	do
		R[4] = UP["CFrame"]
		R[4] = R[4]["new"]
		R[5] = 0
		R[6] = -8000
		R[7] = 0
		R[4] = R[4](UNPACKREG(R, 5, 7))
		R[3]["CFrame"] = R[4]
		-- fallthrough -> 26
	end
	-- [26] OP_207 (3, 1, 0) consumes=1
	do
		R[3] = ENV[1]
		-- fallthrough -> 27
	end
	-- [27] OP_148 (3, 3, "Character") consumes=1
	do
		R[3] = R[3]["Character"]
		-- fallthrough -> 28
	end
	-- [28] OP_148 (3, 3, "HumanoidRootPart") consumes=1
	do
		R[3] = R[3]["HumanoidRootPart"]
		-- fallthrough -> 29
	end
	-- [29] OP_252 (4, "CFrame", nil) consumes=7
	do
		R[4] = UP["CFrame"]
		R[4] = R[4]["new"]
		R[5] = 0
		R[6] = -8000
		R[7] = 0
		R[4] = R[4](UNPACKREG(R, 5, 7))
		R[3]["CFrame"] = R[4]
		-- fallthrough -> 36
	end
	-- [36] OP_208 (3, "task", nil) consumes=10
	do
		R[3] = UP["task"]
		R[3] = R[3]["wait"]
		R[4] = 0.3
		R[3](R[4])
		R[3] = ENV[0]
		R[3] = R[3]["HumanoidRootPart"]
		R[4] = UP["CFrame"]
		R[4] = R[4]["new"]
		R[5] = R[0]
		R[4] = R[4](R[5])
		-- fallthrough -> 46
	end
	-- [46] OP_30 (3, "CFrame", 4) consumes=1
	do
		R[3]["CFrame"] = R[4]
		-- fallthrough -> 47
	end
	-- [47] OP_130 (3, 1, 0) consumes=10
	do
		R[3] = ENV[1]
		R[3] = R[3]["Character"]
		R[3] = R[3]["HumanoidRootPart"]
		R[4] = UP["CFrame"]
		R[4] = R[4]["new"]
		R[5] = R[1]
		R[4] = R[4](R[5])
		R[3]["CFrame"] = R[4]
		R[3] = UP["workspace"]
		R[3]["FallenPartsDestroyHeight"] = R[2]
		-- fallthrough -> 57
	end
	-- [57] OP_186 (3, "task", nil) consumes=6
	do
		R[3] = UP["task"]
		R[3] = R[3]["wait"]
		R[4] = 0.1
		R[3](R[4])
		R[3] = ENV[2]
		if not R[3] then
		else
			pc = 64
		end
		-- fallthrough -> 63
	end
	-- [63] OP_93 (0, 64, nil) consumes=1
	do
		pc = 64
		pc = 65
		-- fallthrough -> 64
	end
	-- [64] OP_93 (0, 78, nil) consumes=1
	do
		pc = 78
		pc = 79
		-- fallthrough -> 65
	end
	-- [65] OP_207 (3, 2, 0) consumes=1
	do
		R[3] = ENV[2]
		-- fallthrough -> 66
	end
	-- [66] OP_148 (3, 3, "Parent") consumes=1
	do
		R[3] = R[3]["Parent"]
		-- fallthrough -> 67
	end
	-- [67] OP_207 (4, 0, 0) consumes=1
	do
		R[4] = ENV[0]
		-- fallthrough -> 68
	end
	-- [68] OP_358 (3, 70, 4) consumes=1
	do
		pc = (((R[3] == R[4]) and 70) or pc + 1)
		pc = (1 + (((R[3] == R[4]) and 70) or pc + 1))
		-- fallthrough -> 69
	end
	-- [69] OP_93 (0, 70, nil) consumes=1
	do
		pc = 70
		pc = 71
		-- fallthrough -> 70
	end
	-- [70] OP_93 (0, 78, nil) consumes=1
	do
		pc = 78
		pc = 79
		-- fallthrough -> 71
	end
	-- [71] OP_207 (3, 2, 0) consumes=1
	do
		R[3] = ENV[2]
		-- fallthrough -> 72
	end
	-- [72] OP_304 (3, 3, "RemoteEvent") consumes=2
	do
		R[3] = R[3]["RemoteEvent"]
		R[4] = R[3]
		R[3] = R[3]["FireServer"]
		-- fallthrough -> 74
	end
	-- [74] OP_201 (3, 2, 1) consumes=1
	do
		R[3](R[4])
		-- fallthrough -> 75
	end
	-- [75] OP_207 (3, 2, 0) consumes=1
	do
		R[3] = ENV[2]
		-- fallthrough -> 76
	end
	-- [76] OP_207 (4, 4, 0) consumes=1
	do
		R[4] = ENV[4]
		-- fallthrough -> 77
	end
	-- [77] OP_148 (4, 4, "Backpack") consumes=1
	do
		R[4] = R[4]["Backpack"]
		-- fallthrough -> 78
	end
	-- [78] OP_30 (3, "Parent", 4) consumes=1
	do
		R[3]["Parent"] = R[4]
		-- fallthrough -> 79
	end
	-- [79] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 80
	end
end

local function proto_root_35_1(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_207 (0, 0, 0) consumes=1
	do
		R[0] = ENV[0]
		-- fallthrough -> 2
	end
	-- [2] OP_207 (1, 1, 0) consumes=1
	do
		R[1] = ENV[1]
		-- fallthrough -> 3
	end
	-- [3] OP_30 (0, "WalkSpeed", 1) consumes=1
	do
		R[0]["WalkSpeed"] = R[1]
		-- fallthrough -> 4
	end
	-- [4] OP_207 (0, 0, 0) consumes=1
	do
		R[0] = ENV[0]
		-- fallthrough -> 5
	end
	-- [5] OP_207 (1, 2, 0) consumes=1
	do
		R[1] = ENV[2]
		-- fallthrough -> 6
	end
	-- [6] OP_30 (0, "JumpPower", 1) consumes=1
	do
		R[0]["JumpPower"] = R[1]
		-- fallthrough -> 7
	end
	-- [7] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 8
	end
end

local function proto_root_36(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_207 (0, 0, 0) consumes=1
	do
		R[0] = ENV[0]
		-- fallthrough -> 2
	end
	-- [2] OP_84 (0, 4, 0) consumes=1
	do
		if R[0] then
		else
			pc = 4
		end
		-- fallthrough -> 3
	end
	-- [3] OP_93 (0, 4, nil) consumes=1
	do
		pc = 4
		pc = 5
		-- fallthrough -> 4
	end
	-- [4] OP_93 (0, 5, nil) consumes=1
	do
		pc = 5
		pc = 6
		-- fallthrough -> 5
	end
	-- [5] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 6
	end
	-- [6] OP_207 (0, 0, 0) consumes=1
	do
		R[0] = ENV[0]
		-- fallthrough -> 7
	end
	-- [7] OP_148 (0, 0, "Name") consumes=1
	do
		R[0] = R[0]["Name"]
		-- fallthrough -> 8
	end
	-- [8] OP_207 (1, 1, 0) consumes=1
	do
		R[1] = ENV[1]
		-- fallthrough -> 9
	end
	-- [9] OP_321 (1, 11, 1) consumes=1
	do
		if not R[1] then
		else
			pc = 11
		end
		-- fallthrough -> 10
	end
	-- [10] OP_93 (0, 11, nil) consumes=1
	do
		pc = 11
		pc = 12
		-- fallthrough -> 11
	end
	-- [11] OP_93 (0, 33, nil) consumes=1
	do
		pc = 33
		pc = 34
		-- fallthrough -> 12
	end
	-- [12] OP_249 (1, "/e /unfeetdance ", nil) consumes=1
	do
		R[1] = "/e /unfeetdance "
		-- fallthrough -> 13
	end
	-- [13] OP_159 (2, 0, 0) consumes=10
	do
		R[2] = R[0]
		R[3] = " "
		R[1] = ((R[1] .. R[2]) .. R[3])
		R[2] = UP["game"]
		R[3] = R[2]
		R[2] = R[2]["GetService"]
		R[4] = "Players"
		R[2] = R[2](UNPACKREG(R, 3, 4))
		R[3] = R[2]
		R[2] = R[2]["Chat"]
		R[4] = R[1]
		R[2](UNPACKREG(R, 3, 4))
		-- fallthrough -> 23
	end
	-- [23] OP_207 (2, 2, 0) consumes=1
	do
		R[2] = ENV[2]
		-- fallthrough -> 24
	end
	-- [24] OP_348 (2, "Text", "ترقيص") consumes=7
	do
		R[2]["Text"] = "ترقيص"
		R[2] = ENV[2]
		R[3] = UP["Color3"]
		R[3] = R[3]["fromRGB"]
		R[4] = 255
		R[5] = 215
		R[6] = 0
		-- fallthrough -> 31
	end
	-- [31] OP_107 (3, 6, 2) consumes=1
	do
		R[3] = R[3](UNPACKREG(R, 4, 6))
		-- fallthrough -> 32
	end
	-- [32] OP_30 (2, "BackgroundColor3", 3) consumes=1
	do
		R[2]["BackgroundColor3"] = R[3]
		-- fallthrough -> 33
	end
	-- [33] OP_93 (0, 54, nil) consumes=1
	do
		pc = 54
		pc = 55
		-- fallthrough -> 34
	end
	-- [34] OP_249 (1, "/e /feetdance ", nil) consumes=1
	do
		R[1] = "/e /feetdance "
		-- fallthrough -> 35
	end
	-- [35] OP_159 (2, 0, 0) consumes=10
	do
		R[2] = R[0]
		R[3] = " 3"
		R[1] = ((R[1] .. R[2]) .. R[3])
		R[2] = UP["game"]
		R[3] = R[2]
		R[2] = R[2]["GetService"]
		R[4] = "Players"
		R[2] = R[2](UNPACKREG(R, 3, 4))
		R[3] = R[2]
		R[2] = R[2]["Chat"]
		R[4] = R[1]
		R[2](UNPACKREG(R, 3, 4))
		-- fallthrough -> 45
	end
	-- [45] OP_207 (2, 2, 0) consumes=1
	do
		R[2] = ENV[2]
		-- fallthrough -> 46
	end
	-- [46] OP_348 (2, "Text", "إيقاف الترقيص") consumes=7
	do
		R[2]["Text"] = "إيقاف الترقيص"
		R[2] = ENV[2]
		R[3] = UP["Color3"]
		R[3] = R[3]["fromRGB"]
		R[4] = 255
		R[5] = 100
		R[6] = 100
		-- fallthrough -> 53
	end
	-- [53] OP_107 (3, 6, 2) consumes=1
	do
		R[3] = R[3](UNPACKREG(R, 4, 6))
		-- fallthrough -> 54
	end
	-- [54] OP_30 (2, "BackgroundColor3", 3) consumes=1
	do
		R[2]["BackgroundColor3"] = R[3]
		-- fallthrough -> 55
	end
	-- [55] OP_207 (1, 1, 0) consumes=1
	do
		R[1] = ENV[1]
		-- fallthrough -> 56
	end
	-- [56] OP_193 (1, 1, 0) consumes=1
	do
		R[1] = not R[1]
		-- fallthrough -> 57
	end
	-- [57] OP_58 (1, 1, 0) consumes=1
	do
		ENV[1] = R[1]
		-- fallthrough -> 58
	end
	-- [58] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 59
	end
end

local function proto_root_37(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_207 (0, 0, 0) consumes=1
	do
		R[0] = ENV[0]
		-- fallthrough -> 2
	end
	-- [2] OP_321 (0, 4, 1) consumes=1
	do
		if not R[0] then
		else
			pc = 4
		end
		-- fallthrough -> 3
	end
	-- [3] OP_93 (0, 4, nil) consumes=1
	do
		pc = 4
		pc = 5
		-- fallthrough -> 4
	end
	-- [4] OP_93 (0, 14, nil) consumes=1
	do
		pc = 14
		pc = 15
		-- fallthrough -> 5
	end
	-- [5] OP_207 (0, 0, 0) consumes=1
	do
		R[0] = ENV[0]
		-- fallthrough -> 6
	end
	-- [6] OP_148 (0, 0, "Name") consumes=1
	do
		R[0] = R[0]["Name"]
		-- fallthrough -> 7
	end
	-- [7] OP_249 (1, "/e .re ", nil) consumes=1
	do
		R[1] = "/e .re "
		-- fallthrough -> 8
	end
	-- [8] OP_350 (2, 0, 0) consumes=1
	do
		R[2] = R[0]
		-- fallthrough -> 9
	end
	-- [9] OP_224 (1, 1, 2) consumes=1
	do
		R[1] = (R[1] .. R[2])
		-- fallthrough -> 10
	end
	-- [10] OP_246 (2, "pcall", nil) consumes=1
	do
		R[2] = UP["pcall"]
		-- fallthrough -> 11
	end
	-- [11] OP_73 (3, 0, 1) consumes=2
	do
		-- unresolved VM temporary: nil = {R, 1}
		c[(#c + 1)] = {}
		R[3] = CLOSURE(PROTO[0], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 13
	end
	-- [13] OP_202 (2, 2, 2) consumes=1
	do
		R[2] = R[2](R[3])
		-- fallthrough -> 14
	end
	-- [14] OP_44 (0, 0, 0) consumes=1
	do
		for d = 1, #c, 1 do
			for l = 0, #c[d], 1 do
				if (c[d][l][1] == R) and (c[d][l][2] >= 0) then
					({})[c[d][l][2]] = c[d][l][1][c[d][l][2]]
					c[d][l][1] = {}
				end
			end
		end
		-- fallthrough -> 15
	end
	-- [15] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 16
	end
end

local function proto_root_37_0(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_100 (0, "game", nil) consumes=7
	do
		R[0] = UP["game"]
		R[1] = R[0]
		R[0] = R[0]["GetService"]
		R[2] = "Players"
		R[0] = R[0](UNPACKREG(R, 1, 2))
		R[1] = R[0]
		R[0] = R[0]["Chat"]
		R[2] = ENV[0]
		R[0](UNPACKREG(R, 1, 2))
		-- fallthrough -> 8
	end
	-- [8] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 9
	end
end

local function proto_root_38(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_207 (0, 0, 0) consumes=1
	do
		R[0] = ENV[0]
		-- fallthrough -> 2
	end
	-- [2] OP_321 (0, 4, 1) consumes=1
	do
		if not R[0] then
		else
			pc = 4
		end
		-- fallthrough -> 3
	end
	-- [3] OP_93 (0, 4, nil) consumes=1
	do
		pc = 4
		pc = 5
		-- fallthrough -> 4
	end
	-- [4] OP_93 (0, 30, nil) consumes=1
	do
		pc = 30
		pc = 31
		-- fallthrough -> 5
	end
	-- [5] OP_207 (0, 0, 0) consumes=1
	do
		R[0] = ENV[0]
		-- fallthrough -> 6
	end
	-- [6] OP_148 (0, 0, "Character") consumes=1
	do
		R[0] = R[0]["Character"]
		-- fallthrough -> 7
	end
	-- [7] OP_84 (0, 30, 0) consumes=1
	do
		if R[0] then
		else
			pc = 30
		end
		-- fallthrough -> 8
	end
	-- [8] OP_93 (0, 30, nil) consumes=1
	do
		pc = 30
		pc = 31
		-- fallthrough -> 9
	end
	-- [9] OP_246 (0, "game", nil) consumes=1
	do
		R[0] = UP["game"]
		-- fallthrough -> 10
	end
	-- [10] OP_148 (0, 0, "Players") consumes=1
	do
		R[0] = R[0]["Players"]
		-- fallthrough -> 11
	end
	-- [11] OP_148 (0, 0, "LocalPlayer") consumes=1
	do
		R[0] = R[0]["LocalPlayer"]
		-- fallthrough -> 12
	end
	-- [12] OP_207 (1, 0, 0) consumes=1
	do
		R[1] = ENV[0]
		-- fallthrough -> 13
	end
	-- [13] OP_304 (1, 1, "Character") consumes=2
	do
		R[1] = R[1]["Character"]
		R[2] = R[1]
		R[1] = R[1]["FindFirstChild"]
		-- fallthrough -> 15
	end
	-- [15] OP_249 (3, "HumanoidRootPart", nil) consumes=1
	do
		R[3] = "HumanoidRootPart"
		-- fallthrough -> 16
	end
	-- [16] OP_107 (1, 3, 2) consumes=1
	do
		R[1] = R[1](UNPACKREG(R, 2, 3))
		-- fallthrough -> 17
	end
	-- [17] OP_304 (2, 0, "Character") consumes=2
	do
		R[2] = R[0]["Character"]
		R[3] = R[2]
		R[2] = R[2]["FindFirstChild"]
		-- fallthrough -> 19
	end
	-- [19] OP_249 (4, "HumanoidRootPart", nil) consumes=1
	do
		R[4] = "HumanoidRootPart"
		-- fallthrough -> 20
	end
	-- [20] OP_107 (2, 4, 2) consumes=1
	do
		R[2] = R[2](UNPACKREG(R, 3, 4))
		-- fallthrough -> 21
	end
	-- [21] OP_321 (1, 23, 1) consumes=1
	do
		if not R[1] then
		else
			pc = 23
		end
		-- fallthrough -> 22
	end
	-- [22] OP_93 (0, 23, nil) consumes=1
	do
		pc = 23
		pc = 24
		-- fallthrough -> 23
	end
	-- [23] OP_93 (0, 30, nil) consumes=1
	do
		pc = 30
		pc = 31
		-- fallthrough -> 24
	end
	-- [24] OP_321 (2, 26, 1) consumes=1
	do
		if not R[2] then
		else
			pc = 26
		end
		-- fallthrough -> 25
	end
	-- [25] OP_93 (0, 26, nil) consumes=1
	do
		pc = 26
		pc = 27
		-- fallthrough -> 26
	end
	-- [26] OP_93 (0, 30, nil) consumes=1
	do
		pc = 30
		pc = 31
		-- fallthrough -> 27
	end
	-- [27] OP_148 (3, 1, "CFrame") consumes=1
	do
		R[3] = R[1]["CFrame"]
		-- fallthrough -> 28
	end
	-- [28] OP_30 (2, "CFrame", 3) consumes=1
	do
		R[2]["CFrame"] = R[3]
		-- fallthrough -> 29
	end
	-- [29] OP_93 (0, 30, nil) consumes=1
	do
		pc = 30
		pc = 31
		-- fallthrough -> 30
	end
	-- [30] OP_93 (0, 30, nil) consumes=1
	do
		pc = 30
		pc = 31
		-- fallthrough -> 31
	end
	-- [31] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 32
	end
end

local function proto_root_39(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_16 (4, 1, nil) consumes=2
	do
		R[4] = 1
		R[5] = 1
		-- fallthrough -> 3
	end
	-- [3] OP_350 (6, 3, 0) consumes=1
	do
		R[6] = R[3]
		-- fallthrough -> 4
	end
	-- [4] OP_356 (6, 1, 2) consumes=1
	do
		R[6] = R[6]()
		-- fallthrough -> 5
	end
	-- [5] OP_84 (6, 32, 0) consumes=1
	do
		if R[6] then
		else
			pc = 32
		end
		-- fallthrough -> 6
	end
	-- [6] OP_93 (0, 32, nil) consumes=1
	do
		pc = 32
		pc = 33
		-- fallthrough -> 7
	end
	-- [7] OP_222 (6, 0, 4) consumes=1
	do
		R[6] = R[0][R[4]]
		-- fallthrough -> 8
	end
	-- [8] OP_195 (7, 1, 5) consumes=7
	do
		R[7] = R[1][R[5]]
		R[8] = {}
		R[8][1] = R[7]
		R[8][2] = R[6]
		R[9] = UP["game"]
		R[10] = R[9]
		R[9] = R[9]["GetService"]
		R[11] = "ReplicatedStorage"
		-- fallthrough -> 15
	end
	-- [15] OP_107 (9, 11, 2) consumes=1
	do
		R[9] = R[9](UNPACKREG(R, 10, 11))
		-- fallthrough -> 16
	end
	-- [16] OP_148 (9, 9, "PrivateCommands") consumes=1
	do
		R[9] = R[9]["PrivateCommands"]
		-- fallthrough -> 17
	end
	-- [17] OP_304 (9, 9, "Title") consumes=2
	do
		R[9] = R[9]["Title"]
		R[10] = R[9]
		R[9] = R[9]["FireServer"]
		-- fallthrough -> 19
	end
	-- [19] OP_246 (11, "unpack", nil) consumes=1
	do
		R[11] = UP["unpack"]
		-- fallthrough -> 20
	end
	-- [20] OP_350 (12, 8, 0) consumes=1
	do
		R[12] = R[8]
		-- fallthrough -> 21
	end
	-- [21] OP_125 (11, 12, 0) consumes=1
	do
		for d = 11, ((l + 11) - 1), 1 do
			R[d] = PACK(R[11](R[12]))[1]
		end
		-- fallthrough -> 22
	end
	-- [22] OP_339 (9, 0, 1) consumes=1
	do
		R[9](UNPACKREG(R, 10, b))
		-- fallthrough -> 23
	end
	-- [23] OP_137 (9, 0, 0) consumes=1
	do
		R[9] = #R[0]
		-- fallthrough -> 24
	end
	-- [24] OP_232 (9, 4, 9) consumes=1
	do
		R[9] = (R[4] % R[9])
		-- fallthrough -> 25
	end
	-- [25] OP_152 (4, 9, 1) consumes=1
	do
		R[4] = (R[9] + 1)
		-- fallthrough -> 26
	end
	-- [26] OP_137 (9, 1, 0) consumes=1
	do
		R[9] = #R[1]
		-- fallthrough -> 27
	end
	-- [27] OP_232 (9, 5, 9) consumes=1
	do
		R[9] = (R[5] % R[9])
		-- fallthrough -> 28
	end
	-- [28] OP_152 (5, 9, 1) consumes=1
	do
		R[5] = (R[9] + 1)
		-- fallthrough -> 29
	end
	-- [29] OP_246 (9, "wait", nil) consumes=1
	do
		R[9] = UP["wait"]
		-- fallthrough -> 30
	end
	-- [30] OP_350 (10, 2, 0) consumes=1
	do
		R[10] = R[2]
		-- fallthrough -> 31
	end
	-- [31] OP_201 (9, 2, 1) consumes=1
	do
		R[9](R[10])
		-- fallthrough -> 32
	end
	-- [32] OP_93 (0, 2, nil) consumes=1
	do
		pc = 2
		pc = 3
		-- fallthrough -> 33
	end
	-- [33] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 34
	end
end

local function proto_root_40(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_79 (0, 0, 0) consumes=6
	do
		R[0] = ENV[0]
		R[0] = not R[0]
		ENV[0] = R[0]
		R[0] = ENV[1]
		R[1] = ENV[0]
		if not R[1] then
		else
			pc = 8
		end
		-- fallthrough -> 7
	end
	-- [7] OP_93 (0, 8, nil) consumes=1
	do
		pc = 8
		pc = 9
		-- fallthrough -> 8
	end
	-- [8] OP_93 (0, 11, nil) consumes=1
	do
		pc = 11
		pc = 12
		-- fallthrough -> 9
	end
	-- [9] OP_249 (1, "إيقاف السبام", nil) consumes=1
	do
		R[1] = "إيقاف السبام"
		-- fallthrough -> 10
	end
	-- [10] OP_321 (1, 12, 1) consumes=1
	do
		if not R[1] then
		else
			pc = 12
		end
		-- fallthrough -> 11
	end
	-- [11] OP_93 (0, 12, nil) consumes=1
	do
		pc = 12
		pc = 13
		-- fallthrough -> 12
	end
	-- [12] OP_249 (1, "سبام", nil) consumes=1
	do
		R[1] = "سبام"
		-- fallthrough -> 13
	end
	-- [13] OP_30 (0, "Text", 1) consumes=1
	do
		R[0]["Text"] = R[1]
		-- fallthrough -> 14
	end
	-- [14] OP_207 (0, 0, 0) consumes=1
	do
		R[0] = ENV[0]
		-- fallthrough -> 15
	end
	-- [15] OP_321 (0, 17, 1) consumes=1
	do
		if not R[0] then
		else
			pc = 17
		end
		-- fallthrough -> 16
	end
	-- [16] OP_93 (0, 17, nil) consumes=1
	do
		pc = 17
		pc = 18
		-- fallthrough -> 17
	end
	-- [17] OP_93 (0, 29, nil) consumes=1
	do
		pc = 29
		pc = 30
		-- fallthrough -> 18
	end
	-- [18] OP_207 (0, 0, 0) consumes=1
	do
		R[0] = ENV[0]
		-- fallthrough -> 19
	end
	-- [19] OP_321 (0, 21, 1) consumes=1
	do
		if not R[0] then
		else
			pc = 21
		end
		-- fallthrough -> 20
	end
	-- [20] OP_93 (0, 21, nil) consumes=1
	do
		pc = 21
		pc = 22
		-- fallthrough -> 21
	end
	-- [21] OP_93 (0, 29, nil) consumes=1
	do
		pc = 29
		pc = 30
		-- fallthrough -> 22
	end
	-- [22] OP_207 (0, 2, 0) consumes=1
	do
		R[0] = ENV[2]
		-- fallthrough -> 23
	end
	-- [23] OP_281 (1, "1st", nil) consumes=7
	do
		R[1] = "1st"
		R[0](R[1])
		R[0] = UP["task"]
		R[0] = R[0]["wait"]
		R[1] = 3.5
		R[0](R[1])
		pc = 13
		pc = 14
		-- fallthrough -> 30
	end
	-- [30] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 31
	end
end

local function proto_root_41(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_84 (0, 6, 0) consumes=1
	do
		if R[0] then
		else
			pc = 6
		end
		-- fallthrough -> 2
	end
	-- [2] OP_93 (0, 6, nil) consumes=1
	do
		pc = 6
		pc = 7
		-- fallthrough -> 3
	end
	-- [3] OP_148 (1, 0, "Character") consumes=1
	do
		R[1] = R[0]["Character"]
		-- fallthrough -> 4
	end
	-- [4] OP_84 (1, 6, 0) consumes=1
	do
		if R[1] then
		else
			pc = 6
		end
		-- fallthrough -> 5
	end
	-- [5] OP_93 (0, 6, nil) consumes=1
	do
		pc = 6
		pc = 7
		-- fallthrough -> 6
	end
	-- [6] OP_93 (0, 8, nil) consumes=1
	do
		pc = 8
		pc = 9
		-- fallthrough -> 7
	end
	-- [7] OP_268 (1, 0, 0) consumes=1
	do
		R[1] = false
		-- fallthrough -> 8
	end
	-- [8] OP_47 (1, 2, 0) consumes=1
	do
		-- RETURN R[1]
		-- fallthrough -> 9
	end
	-- [9] OP_246 (1, "game", nil) consumes=1
	do
		R[1] = UP["game"]
		-- fallthrough -> 10
	end
	-- [10] OP_148 (1, 1, "Players") consumes=1
	do
		R[1] = R[1]["Players"]
		-- fallthrough -> 11
	end
	-- [11] OP_148 (1, 1, "LocalPlayer") consumes=1
	do
		R[1] = R[1]["LocalPlayer"]
		-- fallthrough -> 12
	end
	-- [12] OP_148 (2, 1, "Character") consumes=1
	do
		R[2] = R[1]["Character"]
		-- fallthrough -> 13
	end
	-- [13] OP_84 (2, 15, 0) consumes=1
	do
		if R[2] then
		else
			pc = 15
		end
		-- fallthrough -> 14
	end
	-- [14] OP_93 (0, 15, nil) consumes=1
	do
		pc = 15
		pc = 16
		-- fallthrough -> 15
	end
	-- [15] OP_93 (0, 17, nil) consumes=1
	do
		pc = 17
		pc = 18
		-- fallthrough -> 16
	end
	-- [16] OP_268 (3, 0, 0) consumes=1
	do
		R[3] = false
		-- fallthrough -> 17
	end
	-- [17] OP_47 (3, 2, 0) consumes=1
	do
		-- RETURN R[3]
		-- fallthrough -> 18
	end
	-- [18] OP_207 (3, 0, 0) consumes=1
	do
		R[3] = ENV[0]
		-- fallthrough -> 19
	end
	-- [19] OP_356 (3, 1, 2) consumes=1
	do
		R[3] = R[3]()
		-- fallthrough -> 20
	end
	-- [20] OP_321 (3, 23, 1) consumes=1
	do
		if not R[3] then
		else
			pc = 23
		end
		-- fallthrough -> 21
	end
	-- [21] OP_93 (0, 23, nil) consumes=1
	do
		pc = 23
		pc = 24
		-- fallthrough -> 22
	end
	-- [22] OP_268 (3, 0, 0) consumes=1
	do
		R[3] = false
		-- fallthrough -> 23
	end
	-- [23] OP_47 (3, 2, 0) consumes=1
	do
		-- RETURN R[3]
		-- fallthrough -> 24
	end
	-- [24] OP_207 (3, 1, 0) consumes=1
	do
		R[3] = ENV[1]
		-- fallthrough -> 25
	end
	-- [25] OP_356 (3, 1, 2) consumes=1
	do
		R[3] = R[3]()
		-- fallthrough -> 26
	end
	-- [26] OP_84 (3, 32, 0) consumes=1
	do
		if R[3] then
		else
			pc = 32
		end
		-- fallthrough -> 27
	end
	-- [27] OP_93 (0, 32, nil) consumes=1
	do
		pc = 32
		pc = 33
		-- fallthrough -> 28
	end
	-- [28] OP_270 (4, 3, "FindFirstChild") consumes=1
	do
		R[5] = R[3]
		R[4] = R[3]["FindFirstChild"]
		-- fallthrough -> 29
	end
	-- [29] OP_249 (6, "RemoteEvent", nil) consumes=1
	do
		R[6] = "RemoteEvent"
		-- fallthrough -> 30
	end
	-- [30] OP_107 (4, 6, 2) consumes=1
	do
		R[4] = R[4](UNPACKREG(R, 5, 6))
		-- fallthrough -> 31
	end
	-- [31] OP_321 (4, 34, 1) consumes=1
	do
		if not R[4] then
		else
			pc = 34
		end
		-- fallthrough -> 32
	end
	-- [32] OP_93 (0, 34, nil) consumes=1
	do
		pc = 34
		pc = 35
		-- fallthrough -> 33
	end
	-- [33] OP_268 (4, 0, 0) consumes=1
	do
		R[4] = false
		-- fallthrough -> 34
	end
	-- [34] OP_47 (4, 2, 0) consumes=1
	do
		-- RETURN R[4]
		-- fallthrough -> 35
	end
	-- [35] OP_148 (4, 0, "Character") consumes=1
	do
		R[4] = R[0]["Character"]
		-- fallthrough -> 36
	end
	-- [36] OP_270 (4, 4, "FindFirstChild") consumes=1
	do
		R[5] = R[4]
		R[4] = R[4]["FindFirstChild"]
		-- fallthrough -> 37
	end
	-- [37] OP_249 (6, "RightUpperArm", nil) consumes=1
	do
		R[6] = "RightUpperArm"
		-- fallthrough -> 38
	end
	-- [38] OP_107 (4, 6, 2) consumes=1
	do
		R[4] = R[4](UNPACKREG(R, 5, 6))
		-- fallthrough -> 39
	end
	-- [39] OP_84 (4, 41, 0) consumes=1
	do
		if R[4] then
		else
			pc = 41
		end
		-- fallthrough -> 40
	end
	-- [40] OP_93 (0, 41, nil) consumes=1
	do
		pc = 41
		pc = 42
		-- fallthrough -> 41
	end
	-- [41] OP_93 (0, 45, nil) consumes=1
	do
		pc = 45
		pc = 46
		-- fallthrough -> 42
	end
	-- [42] OP_148 (4, 0, "Character") consumes=1
	do
		R[4] = R[0]["Character"]
		-- fallthrough -> 43
	end
	-- [43] OP_270 (4, 4, "FindFirstChild") consumes=1
	do
		R[5] = R[4]
		R[4] = R[4]["FindFirstChild"]
		-- fallthrough -> 44
	end
	-- [44] OP_249 (6, "LeftUpperArm", nil) consumes=1
	do
		R[6] = "LeftUpperArm"
		-- fallthrough -> 45
	end
	-- [45] OP_107 (4, 6, 2) consumes=1
	do
		R[4] = R[4](UNPACKREG(R, 5, 6))
		-- fallthrough -> 46
	end
	-- [46] OP_84 (4, 48, 0) consumes=1
	do
		if R[4] then
		else
			pc = 48
		end
		-- fallthrough -> 47
	end
	-- [47] OP_93 (0, 48, nil) consumes=1
	do
		pc = 48
		pc = 49
		-- fallthrough -> 48
	end
	-- [48] OP_93 (0, 50, nil) consumes=1
	do
		pc = 50
		pc = 51
		-- fallthrough -> 49
	end
	-- [49] OP_268 (5, 0, 0) consumes=1
	do
		R[5] = false
		-- fallthrough -> 50
	end
	-- [50] OP_47 (5, 2, 0) consumes=1
	do
		-- RETURN R[5]
		-- fallthrough -> 51
	end
	-- [51] OP_148 (5, 3, "RemoteEvent") consumes=1
	do
		R[5] = R[3]["RemoteEvent"]
		-- fallthrough -> 52
	end
	-- [52] OP_6 (5, 5, "FireServer") consumes=8
	do
		R[6] = R[5]
		R[5] = R[5]["FireServer"]
		R[7] = R[4]
		R[5](UNPACKREG(R, 6, 7))
		R[5] = UP["task"]
		R[5] = R[5]["wait"]
		R[6] = 0.1
		R[5](R[6])
		if R[3] then
		else
			pc = 65
		end
		-- fallthrough -> 60
	end
	-- [60] OP_93 (0, 65, nil) consumes=1
	do
		pc = 65
		pc = 66
		-- fallthrough -> 61
	end
	-- [61] OP_148 (5, 3, "Parent") consumes=1
	do
		R[5] = R[3]["Parent"]
		-- fallthrough -> 62
	end
	-- [62] OP_255 (5, 65, 2) consumes=1
	do
		if R[5] == R[2] then
		else
			pc = 65
		end
		-- fallthrough -> 63
	end
	-- [63] OP_93 (0, 65, nil) consumes=1
	do
		pc = 65
		pc = 66
		-- fallthrough -> 64
	end
	-- [64] OP_148 (5, 1, "Backpack") consumes=1
	do
		R[5] = R[1]["Backpack"]
		-- fallthrough -> 65
	end
	-- [65] OP_30 (3, "Parent", 5) consumes=1
	do
		R[3]["Parent"] = R[5]
		-- fallthrough -> 66
	end
	-- [66] OP_268 (5, 1, 0) consumes=1
	do
		R[5] = true
		-- fallthrough -> 67
	end
	-- [67] OP_47 (5, 2, 0) consumes=1
	do
		-- RETURN R[5]
		-- fallthrough -> 68
	end
	-- [68] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 69
	end
end

local function proto_root_42(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_321 (0, 3, 1) consumes=1
	do
		if not R[0] then
		else
			pc = 3
		end
		-- fallthrough -> 2
	end
	-- [2] OP_93 (0, 3, nil) consumes=1
	do
		pc = 3
		pc = 4
		-- fallthrough -> 3
	end
	-- [3] OP_93 (0, 11, nil) consumes=1
	do
		pc = 11
		pc = 12
		-- fallthrough -> 4
	end
	-- [4] OP_207 (1, 0, 0) consumes=1
	do
		R[1] = ENV[0]
		-- fallthrough -> 5
	end
	-- [5] OP_148 (1, 1, "Text") consumes=1
	do
		R[1] = R[1]["Text"]
		-- fallthrough -> 6
	end
	-- [6] OP_330 (1, 11, "") consumes=1
	do
		if R[1] ~= "" then
		else
			pc = 11
		end
		-- fallthrough -> 7
	end
	-- [7] OP_93 (0, 11, nil) consumes=1
	do
		pc = 11
		pc = 12
		-- fallthrough -> 8
	end
	-- [8] OP_207 (1, 1, 0) consumes=1
	do
		R[1] = ENV[1]
		-- fallthrough -> 9
	end
	-- [9] OP_207 (2, 0, 0) consumes=1
	do
		R[2] = ENV[0]
		-- fallthrough -> 10
	end
	-- [10] OP_148 (2, 2, "Text") consumes=1
	do
		R[2] = R[2]["Text"]
		-- fallthrough -> 11
	end
	-- [11] OP_201 (1, 2, 1) consumes=1
	do
		R[1](R[2])
		-- fallthrough -> 12
	end
	-- [12] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 13
	end
end

local function proto_root_43(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_73 (2, 0, 1) consumes=2
	do
		-- unresolved VM temporary: nil = {R, 1}
		c[(#c + 1)] = {}
		R[2] = CLOSURE(PROTO[0], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 3
	end
	-- [3] OP_304 (3, 0, "CharacterAdded") consumes=2
	do
		R[3] = R[0]["CharacterAdded"]
		R[4] = R[3]
		R[3] = R[3]["Connect"]
		-- fallthrough -> 5
	end
	-- [5] OP_350 (5, 2, 0) consumes=1
	do
		R[5] = R[2]
		-- fallthrough -> 6
	end
	-- [6] OP_262 (3, 5, 1) consumes=1
	do
		R[3](UNPACKREG(R, 4, 5))
		-- fallthrough -> 7
	end
	-- [7] OP_148 (3, 0, "Character") consumes=1
	do
		R[3] = R[0]["Character"]
		-- fallthrough -> 8
	end
	-- [8] OP_84 (3, 16, 0) consumes=1
	do
		if R[3] then
		else
			pc = 16
		end
		-- fallthrough -> 9
	end
	-- [9] OP_93 (0, 16, nil) consumes=1
	do
		pc = 16
		pc = 17
		-- fallthrough -> 10
	end
	-- [10] OP_246 (3, "coroutine", nil) consumes=1
	do
		R[3] = UP["coroutine"]
		-- fallthrough -> 11
	end
	-- [11] OP_148 (3, 3, "wrap") consumes=1
	do
		R[3] = R[3]["wrap"]
		-- fallthrough -> 12
	end
	-- [12] OP_73 (4, 1, 2) consumes=3
	do
		-- unresolved VM temporary: nil = {R, 2}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 0}
		c[(#c + 1)] = {}
		R[4] = CLOSURE(PROTO[1], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 15
	end
	-- [15] OP_202 (3, 2, 2) consumes=1
	do
		R[3] = R[3](R[4])
		-- fallthrough -> 16
	end
	-- [16] OP_158 (3, 1, 1) consumes=1
	do
		R[3]()
		-- fallthrough -> 17
	end
	-- [17] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 18
	end
end

local function proto_root_43_0(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_3 (1, 0, "WaitForChild") consumes=6
	do
		R[2] = R[0]
		R[1] = R[0]["WaitForChild"]
		R[3] = "Humanoid"
		R[1] = R[1](UNPACKREG(R, 2, 3))
		R[2] = ENV[0]
		R[3] = R[0]
		R[4] = R[1]
		-- fallthrough -> 7
	end
	-- [7] OP_191 (2, 4, 1) consumes=3
	do
		R[2](UNPACKREG(R, 3, 4))
		R[2] = R[1]["Died"]
		R[3] = R[2]
		R[2] = R[2]["Connect"]
		-- fallthrough -> 10
	end
	-- [10] OP_73 (4, 0, 3) consumes=4
	do
		-- unresolved VM temporary: nil = {R, 0}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {ENV, 0}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 1}
		c[(#c + 1)] = {}
		R[4] = CLOSURE(PROTO[0], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 14
	end
	-- [14] OP_262 (2, 4, 1) consumes=1
	do
		R[2](UNPACKREG(R, 3, 4))
		-- fallthrough -> 15
	end
	-- [15] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 16
	end
end

local function proto_root_43_0_0(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_317 (0, 0, 0) consumes=8
	do
		R[0] = ENV[0]
		R[1] = R[0]
		R[0] = R[0]["WaitForChild"]
		R[2] = "Humanoid"
		R[0](UNPACKREG(R, 1, 2))
		R[0] = ENV[1]
		R[1] = ENV[0]
		R[2] = ENV[2]
		R[0](UNPACKREG(R, 1, 2))
		-- RETURN
		-- fallthrough -> 9
	end
	-- [9] OP_22 (0, 1, 0) consumes=1
	do
		R[0] = R[0]()
		-- fallthrough -> 10
	end
end

local function proto_root_43_1(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_267 (0, 0, 0) consumes=4
	do
		R[0] = ENV[0]
		R[1] = ENV[1]
		R[1] = R[1]["Character"]
		R[0](R[1])
		-- RETURN
		-- fallthrough -> 5
	end
	-- [5] OP_5 (0, 1, 0) consumes=10
	do
		R[0] = UP[1]
		R[I_1.A] = R[I_1.B][I_1.C]
		R[I_2.A] = R[I_2.B][I_2.C]
		R[I_3.A] = R[I_3.B][I_3.C]
		R[I_4.A] = (R[I_4.B] * I_4.C)
		R[I_5.A] = (R[I_5.B] + R[I_5.C])
		R[I_6.A] = R[I_6.B][I_6.C]
		R[I_7.A] = R[I_7.B][I_7.C]
		R[I_8.A] = (R[I_8.B] * I_8.C)
		R[I_9.A] = (R[I_9.B] + R[I_9.C])
		-- fallthrough -> 15
	end
end

local function proto_root_44(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_246 (1, "pairs", nil) consumes=1
	do
		R[1] = UP["pairs"]
		-- fallthrough -> 2
	end
	-- [2] OP_207 (2, 0, 0) consumes=1
	do
		R[2] = ENV[0]
		-- fallthrough -> 3
	end
	-- [3] OP_209 (1, 2, 3) consumes=1
	do
		R[1] = R[1](R[2])
		R[2] = nil
		R[3] = nil
		-- fallthrough -> 4
	end
	-- [4] OP_93 (0, 6, nil) consumes=1
	do
		pc = 6
		pc = 7
		-- fallthrough -> 5
	end
	-- [5] OP_270 (6, 5, "Disconnect") consumes=1
	do
		R[7] = R[5]
		R[6] = R[5]["Disconnect"]
		-- fallthrough -> 6
	end
	-- [6] OP_201 (6, 2, 1) consumes=1
	do
		R[6](R[7])
		-- fallthrough -> 7
	end
	-- [7] OP_175 (1, 4, 2) consumes=1
	do
		R[4] = R[1](R[2], R[3])
		R[5] = nil
		if R[1](R[2], R[3]) then
			R[3] = R[1](R[2], R[3])
			pc = 4
		else
		end
		-- fallthrough -> 8
	end
	-- [8] OP_93 (0, 4, nil) consumes=1
	do
		pc = 4
		pc = 5
		-- fallthrough -> 9
	end
	-- [9] OP_344 (1, 0, 0) consumes=1
	do
		R[1] = {}
		-- fallthrough -> 10
	end
	-- [10] OP_58 (1, 0, 0) consumes=1
	do
		ENV[0] = R[1]
		-- fallthrough -> 11
	end
	-- [11] OP_246 (1, "workspace", nil) consumes=1
	do
		R[1] = UP["workspace"]
		-- fallthrough -> 12
	end
	-- [12] OP_148 (1, 1, "CurrentCamera") consumes=1
	do
		R[1] = R[1]["CurrentCamera"]
		-- fallthrough -> 13
	end
	-- [13] OP_73 (2, 1, 2) consumes=3
	do
		-- unresolved VM temporary: nil = {ENV, 1}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 1}
		c[(#c + 1)] = {}
		R[2] = CLOSURE(PROTO[1], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 16
	end
	-- [16] OP_148 (3, 0, "Character") consumes=1
	do
		R[3] = R[0]["Character"]
		-- fallthrough -> 17
	end
	-- [17] OP_321 (3, 19, 1) consumes=1
	do
		if not R[3] then
		else
			pc = 19
		end
		-- fallthrough -> 18
	end
	-- [18] OP_93 (0, 19, nil) consumes=1
	do
		pc = 19
		pc = 20
		-- fallthrough -> 19
	end
	-- [19] OP_93 (0, 22, nil) consumes=1
	do
		pc = 22
		pc = 23
		-- fallthrough -> 20
	end
	-- [20] OP_350 (3, 2, 0) consumes=1
	do
		R[3] = R[2]
		-- fallthrough -> 21
	end
	-- [21] OP_148 (4, 0, "Character") consumes=1
	do
		R[4] = R[0]["Character"]
		-- fallthrough -> 22
	end
	-- [22] OP_201 (3, 2, 1) consumes=1
	do
		R[3](R[4])
		-- fallthrough -> 23
	end
	-- [23] OP_246 (3, "table", nil) consumes=1
	do
		R[3] = UP["table"]
		-- fallthrough -> 24
	end
	-- [24] OP_148 (3, 3, "insert") consumes=1
	do
		R[3] = R[3]["insert"]
		-- fallthrough -> 25
	end
	-- [25] OP_207 (4, 0, 0) consumes=1
	do
		R[4] = ENV[0]
		-- fallthrough -> 26
	end
	-- [26] OP_304 (5, 0, "CharacterAdded") consumes=2
	do
		R[5] = R[0]["CharacterAdded"]
		R[6] = R[5]
		R[5] = R[5]["Connect"]
		-- fallthrough -> 28
	end
	-- [28] OP_73 (7, 2, 2) consumes=3
	do
		-- unresolved VM temporary: nil = {ENV, 1}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 2}
		c[(#c + 1)] = {}
		R[7] = CLOSURE(PROTO[2], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 31
	end
	-- [31] OP_204 (5, 7, 0) consumes=7
	do
		R[3](UNPACKREG(R, 4, 4))
		R[3] = UP["table"]
		R[3] = R[3]["insert"]
		R[4] = ENV[0]
		R[5] = R[0]["CharacterRemoving"]
		R[6] = R[5]
		R[5] = R[5]["Connect"]
		-- fallthrough -> 38
	end
	-- [38] OP_73 (7, 0, 2) consumes=3
	do
		-- unresolved VM temporary: nil = {ENV, 1}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 1}
		c[(#c + 1)] = {}
		R[7] = CLOSURE(PROTO[0], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 41
	end
	-- [41] OP_271 (5, 7, 0) consumes=1
	do
		for l = 5, ((d + 5) - 1), 1 do
			R[l] = PACK(R[5](UNPACKREG(R, 6, 7)))[1]
		end
		-- fallthrough -> 42
	end
	-- [42] OP_339 (3, 0, 1) consumes=1
	do
		R[3](UNPACKREG(R, 4, b))
		-- fallthrough -> 43
	end
	-- [43] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 44
	end
end

local function proto_root_44_0(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_207 (0, 0, 0) consumes=1
	do
		R[0] = ENV[0]
		-- fallthrough -> 2
	end
	-- [2] OP_84 (0, 10, 0) consumes=1
	do
		if R[0] then
		else
			pc = 10
		end
		-- fallthrough -> 3
	end
	-- [3] OP_93 (0, 10, nil) consumes=1
	do
		pc = 10
		pc = 11
		-- fallthrough -> 4
	end
	-- [4] OP_207 (0, 1, 0) consumes=1
	do
		R[0] = ENV[1]
		-- fallthrough -> 5
	end
	-- [5] OP_246 (1, "Enum", nil) consumes=1
	do
		R[1] = UP["Enum"]
		-- fallthrough -> 6
	end
	-- [6] OP_148 (1, 1, "CameraType") consumes=1
	do
		R[1] = R[1]["CameraType"]
		-- fallthrough -> 7
	end
	-- [7] OP_148 (1, 1, "Custom") consumes=1
	do
		R[1] = R[1]["Custom"]
		-- fallthrough -> 8
	end
	-- [8] OP_30 (0, "CameraType", 1) consumes=1
	do
		R[0]["CameraType"] = R[1]
		-- fallthrough -> 9
	end
	-- [9] OP_207 (0, 1, 0) consumes=1
	do
		R[0] = ENV[1]
		-- fallthrough -> 10
	end
	-- [10] OP_85 (0, "CameraSubject", nil) consumes=1
	do
		R[0]["CameraSubject"] = nil
		-- fallthrough -> 11
	end
	-- [11] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 12
	end
end

local function proto_root_44_1(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_321 (0, 3, 1) consumes=1
	do
		if not R[0] then
		else
			pc = 3
		end
		-- fallthrough -> 2
	end
	-- [2] OP_93 (0, 3, nil) consumes=1
	do
		pc = 3
		pc = 4
		-- fallthrough -> 3
	end
	-- [3] OP_93 (0, 21, nil) consumes=1
	do
		pc = 21
		pc = 22
		-- fallthrough -> 4
	end
	-- [4] OP_207 (1, 0, 0) consumes=1
	do
		R[1] = ENV[0]
		-- fallthrough -> 5
	end
	-- [5] OP_321 (1, 7, 1) consumes=1
	do
		if not R[1] then
		else
			pc = 7
		end
		-- fallthrough -> 6
	end
	-- [6] OP_93 (0, 7, nil) consumes=1
	do
		pc = 7
		pc = 8
		-- fallthrough -> 7
	end
	-- [7] OP_93 (0, 21, nil) consumes=1
	do
		pc = 21
		pc = 22
		-- fallthrough -> 8
	end
	-- [8] OP_270 (1, 0, "WaitForChild") consumes=1
	do
		R[2] = R[0]
		R[1] = R[0]["WaitForChild"]
		-- fallthrough -> 9
	end
	-- [9] OP_16 (3, "Humanoid", nil) consumes=2
	do
		R[3] = "Humanoid"
		R[4] = 5
		-- fallthrough -> 11
	end
	-- [11] OP_107 (1, 4, 2) consumes=1
	do
		R[1] = R[1](UNPACKREG(R, 2, 4))
		-- fallthrough -> 12
	end
	-- [12] OP_321 (1, 14, 1) consumes=1
	do
		if not R[1] then
		else
			pc = 14
		end
		-- fallthrough -> 13
	end
	-- [13] OP_93 (0, 14, nil) consumes=1
	do
		pc = 14
		pc = 15
		-- fallthrough -> 14
	end
	-- [14] OP_93 (0, 21, nil) consumes=1
	do
		pc = 21
		pc = 22
		-- fallthrough -> 15
	end
	-- [15] OP_207 (2, 1, 0) consumes=1
	do
		R[2] = ENV[1]
		-- fallthrough -> 16
	end
	-- [16] OP_60 (3, "Enum", nil) consumes=6
	do
		R[3] = UP["Enum"]
		R[3] = R[3]["CameraType"]
		R[3] = R[3]["Custom"]
		R[2]["CameraType"] = R[3]
		R[2] = ENV[1]
		R[2]["CameraSubject"] = R[1]
		-- fallthrough -> 22
	end
	-- [22] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 23
	end
end

local function proto_root_44_2(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_207 (1, 0, 0) consumes=1
	do
		R[1] = ENV[0]
		-- fallthrough -> 2
	end
	-- [2] OP_84 (1, 6, 0) consumes=1
	do
		if R[1] then
		else
			pc = 6
		end
		-- fallthrough -> 3
	end
	-- [3] OP_93 (0, 6, nil) consumes=1
	do
		pc = 6
		pc = 7
		-- fallthrough -> 4
	end
	-- [4] OP_207 (1, 1, 0) consumes=1
	do
		R[1] = ENV[1]
		-- fallthrough -> 5
	end
	-- [5] OP_350 (2, 0, 0) consumes=1
	do
		R[2] = R[0]
		-- fallthrough -> 6
	end
	-- [6] OP_201 (1, 2, 1) consumes=1
	do
		R[1](R[2])
		-- fallthrough -> 7
	end
	-- [7] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 8
	end
end

local function proto_root_45(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_207 (1, 0, 0) consumes=1
	do
		R[1] = ENV[0]
		-- fallthrough -> 2
	end
	-- [2] OP_255 (0, 9, 1) consumes=1
	do
		if R[0] == R[1] then
		else
			pc = 9
		end
		-- fallthrough -> 3
	end
	-- [3] OP_93 (0, 9, nil) consumes=1
	do
		pc = 9
		pc = 10
		-- fallthrough -> 4
	end
	-- [4] OP_207 (1, 1, 0) consumes=1
	do
		R[1] = ENV[1]
		-- fallthrough -> 5
	end
	-- [5] OP_84 (1, 9, 0) consumes=1
	do
		if R[1] then
		else
			pc = 9
		end
		-- fallthrough -> 6
	end
	-- [6] OP_93 (0, 9, nil) consumes=1
	do
		pc = 9
		pc = 10
		-- fallthrough -> 7
	end
	-- [7] OP_207 (1, 2, 0) consumes=1
	do
		R[1] = ENV[2]
		-- fallthrough -> 8
	end
	-- [8] OP_350 (2, 0, 0) consumes=1
	do
		R[2] = R[0]
		-- fallthrough -> 9
	end
	-- [9] OP_201 (1, 2, 1) consumes=1
	do
		R[1](R[2])
		-- fallthrough -> 10
	end
	-- [10] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 11
	end
end

local function proto_root_46(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_207 (0, 0, 0) consumes=1
	do
		R[0] = ENV[0]
		-- fallthrough -> 2
	end
	-- [2] OP_321 (0, 4, 1) consumes=1
	do
		if not R[0] then
		else
			pc = 4
		end
		-- fallthrough -> 3
	end
	-- [3] OP_93 (0, 4, nil) consumes=1
	do
		pc = 4
		pc = 5
		-- fallthrough -> 4
	end
	-- [4] OP_93 (0, 20, nil) consumes=1
	do
		pc = 20
		pc = 21
		-- fallthrough -> 5
	end
	-- [5] OP_207 (0, 1, 0) consumes=1
	do
		R[0] = ENV[1]
		-- fallthrough -> 6
	end
	-- [6] OP_84 (0, 20, 0) consumes=1
	do
		if R[0] then
		else
			pc = 20
		end
		-- fallthrough -> 7
	end
	-- [7] OP_93 (0, 20, nil) consumes=1
	do
		pc = 20
		pc = 21
		-- fallthrough -> 8
	end
	-- [8] OP_249 (0, "/e .ping ", nil) consumes=1
	do
		R[0] = "/e .ping "
		-- fallthrough -> 9
	end
	-- [9] OP_207 (1, 1, 0) consumes=1
	do
		R[1] = ENV[1]
		-- fallthrough -> 10
	end
	-- [10] OP_148 (1, 1, "Name") consumes=1
	do
		R[1] = R[1]["Name"]
		-- fallthrough -> 11
	end
	-- [11] OP_224 (0, 0, 1) consumes=1
	do
		R[0] = (R[0] .. R[1])
		-- fallthrough -> 12
	end
	-- [12] OP_246 (1, "pcall", nil) consumes=1
	do
		R[1] = UP["pcall"]
		-- fallthrough -> 13
	end
	-- [13] OP_73 (2, 0, 1) consumes=2
	do
		-- unresolved VM temporary: nil = {R, 0}
		c[(#c + 1)] = {}
		R[2] = CLOSURE(PROTO[0], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 15
	end
	-- [15] OP_243 (1, 2, 2) consumes=6
	do
		R[1] = R[1](R[2])
		R[2] = nil
		R[3] = UP["wait"]
		R[4] = ENV[2]
		R[3](R[4])
		for d = 1, #c, 1 do
			for d = 0, #c[d], 1 do
				if (c[d][d][1] == R) and (c[d][d][2] >= 0) then
					({})[c[d][d][2]] = c[d][d][1][c[d][d][2]]
					c[d][d][1] = {}
				end
			end
		end
		pc = 0
		pc = 1
		-- fallthrough -> 21
	end
	-- [21] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 22
	end
end

local function proto_root_46_0(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_100 (0, "game", nil) consumes=7
	do
		R[0] = UP["game"]
		R[1] = R[0]
		R[0] = R[0]["GetService"]
		R[2] = "Players"
		R[0] = R[0](UNPACKREG(R, 1, 2))
		R[1] = R[0]
		R[0] = R[0]["Chat"]
		R[2] = ENV[0]
		R[0](UNPACKREG(R, 1, 2))
		-- fallthrough -> 8
	end
	-- [8] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 9
	end
end

local function proto_root_47(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_207 (2, 0, 0) consumes=1
	do
		R[2] = ENV[0]
		-- fallthrough -> 2
	end
	-- [2] OP_246 (3, "game", nil) consumes=1
	do
		R[3] = UP["game"]
		-- fallthrough -> 3
	end
	-- [3] OP_148 (3, 3, "Players") consumes=1
	do
		R[3] = R[3]["Players"]
		-- fallthrough -> 4
	end
	-- [4] OP_148 (3, 3, "LocalPlayer") consumes=1
	do
		R[3] = R[3]["LocalPlayer"]
		-- fallthrough -> 5
	end
	-- [5] OP_73 (4, 0, 3) consumes=4
	do
		-- unresolved VM temporary: nil = {ENV, 1}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {ENV, 2}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {ENV, 3}
		c[(#c + 1)] = {}
		R[4] = CLOSURE(PROTO[0], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 9
	end
	-- [9] OP_262 (2, 4, 1) consumes=1
	do
		R[2](UNPACKREG(R, 3, 4))
		-- fallthrough -> 10
	end
	-- [10] OP_207 (2, 0, 0) consumes=1
	do
		R[2] = ENV[0]
		-- fallthrough -> 11
	end
	-- [11] OP_207 (3, 4, 0) consumes=1
	do
		R[3] = ENV[4]
		-- fallthrough -> 12
	end
	-- [12] OP_296 (4, 1, nil) consumes=1
	do
		R[4] = CLOSURE(PROTO[1], nil, UP)
		-- fallthrough -> 13
	end
	-- [13] OP_262 (2, 4, 1) consumes=1
	do
		R[2](UNPACKREG(R, 3, 4))
		-- fallthrough -> 14
	end
	-- [14] OP_207 (2, 2, 0) consumes=1
	do
		R[2] = ENV[2]
		-- fallthrough -> 15
	end
	-- [15] OP_321 (2, 17, 1) consumes=1
	do
		if not R[2] then
		else
			pc = 17
		end
		-- fallthrough -> 16
	end
	-- [16] OP_93 (0, 17, nil) consumes=1
	do
		pc = 17
		pc = 18
		-- fallthrough -> 17
	end
	-- [17] OP_93 (0, 69, nil) consumes=1
	do
		pc = 69
		pc = 70
		-- fallthrough -> 18
	end
	-- [18] OP_207 (2, 4, 0) consumes=1
	do
		R[2] = ENV[4]
		-- fallthrough -> 19
	end
	-- [19] OP_84 (2, 30, 0) consumes=1
	do
		if R[2] then
		else
			pc = 30
		end
		-- fallthrough -> 20
	end
	-- [20] OP_93 (0, 30, nil) consumes=1
	do
		pc = 30
		pc = 31
		-- fallthrough -> 21
	end
	-- [21] OP_207 (2, 4, 0) consumes=1
	do
		R[2] = ENV[4]
		-- fallthrough -> 22
	end
	-- [22] OP_148 (2, 2, "Character") consumes=1
	do
		R[2] = R[2]["Character"]
		-- fallthrough -> 23
	end
	-- [23] OP_84 (2, 30, 0) consumes=1
	do
		if R[2] then
		else
			pc = 30
		end
		-- fallthrough -> 24
	end
	-- [24] OP_93 (0, 30, nil) consumes=1
	do
		pc = 30
		pc = 31
		-- fallthrough -> 25
	end
	-- [25] OP_246 (2, "game", nil) consumes=1
	do
		R[2] = UP["game"]
		-- fallthrough -> 26
	end
	-- [26] OP_148 (2, 2, "Players") consumes=1
	do
		R[2] = R[2]["Players"]
		-- fallthrough -> 27
	end
	-- [27] OP_148 (2, 2, "LocalPlayer") consumes=1
	do
		R[2] = R[2]["LocalPlayer"]
		-- fallthrough -> 28
	end
	-- [28] OP_148 (2, 2, "Character") consumes=1
	do
		R[2] = R[2]["Character"]
		-- fallthrough -> 29
	end
	-- [29] OP_321 (2, 35, 1) consumes=1
	do
		if not R[2] then
		else
			pc = 35
		end
		-- fallthrough -> 30
	end
	-- [30] OP_93 (0, 35, nil) consumes=1
	do
		pc = 35
		pc = 36
		-- fallthrough -> 31
	end
	-- [31] OP_268 (2, 0, 0) consumes=1
	do
		R[2] = false
		-- fallthrough -> 32
	end
	-- [32] OP_58 (2, 2, 0) consumes=1
	do
		ENV[2] = R[2]
		-- fallthrough -> 33
	end
	-- [33] OP_207 (2, 5, 0) consumes=1
	do
		R[2] = ENV[5]
		-- fallthrough -> 34
	end
	-- [34] OP_85 (2, "Text", "بانج") consumes=1
	do
		R[2]["Text"] = "بانج"
		-- fallthrough -> 35
	end
	-- [35] OP_93 (0, 69, nil) consumes=1
	do
		pc = 69
		pc = 70
		-- fallthrough -> 36
	end
	-- [36] OP_246 (2, "game", nil) consumes=1
	do
		R[2] = UP["game"]
		-- fallthrough -> 37
	end
	-- [37] OP_148 (2, 2, "Players") consumes=1
	do
		R[2] = R[2]["Players"]
		-- fallthrough -> 38
	end
	-- [38] OP_148 (2, 2, "LocalPlayer") consumes=1
	do
		R[2] = R[2]["LocalPlayer"]
		-- fallthrough -> 39
	end
	-- [39] OP_304 (2, 2, "Character") consumes=2
	do
		R[2] = R[2]["Character"]
		R[3] = R[2]
		R[2] = R[2]["FindFirstChild"]
		-- fallthrough -> 41
	end
	-- [41] OP_249 (4, "HumanoidRootPart", nil) consumes=1
	do
		R[4] = "HumanoidRootPart"
		-- fallthrough -> 42
	end
	-- [42] OP_107 (2, 4, 2) consumes=1
	do
		R[2] = R[2](UNPACKREG(R, 3, 4))
		-- fallthrough -> 43
	end
	-- [43] OP_207 (3, 4, 0) consumes=1
	do
		R[3] = ENV[4]
		-- fallthrough -> 44
	end
	-- [44] OP_304 (3, 3, "Character") consumes=2
	do
		R[3] = R[3]["Character"]
		R[4] = R[3]
		R[3] = R[3]["FindFirstChild"]
		-- fallthrough -> 46
	end
	-- [46] OP_249 (5, "HumanoidRootPart", nil) consumes=1
	do
		R[5] = "HumanoidRootPart"
		-- fallthrough -> 47
	end
	-- [47] OP_107 (3, 5, 2) consumes=1
	do
		R[3] = R[3](UNPACKREG(R, 4, 5))
		-- fallthrough -> 48
	end
	-- [48] OP_84 (2, 61, 0) consumes=1
	do
		if R[2] then
		else
			pc = 61
		end
		-- fallthrough -> 49
	end
	-- [49] OP_93 (0, 61, nil) consumes=1
	do
		pc = 61
		pc = 62
		-- fallthrough -> 50
	end
	-- [50] OP_321 (3, 52, 1) consumes=1
	do
		if not R[3] then
		else
			pc = 52
		end
		-- fallthrough -> 51
	end
	-- [51] OP_93 (0, 52, nil) consumes=1
	do
		pc = 52
		pc = 53
		-- fallthrough -> 52
	end
	-- [52] OP_93 (0, 61, nil) consumes=1
	do
		pc = 61
		pc = 62
		-- fallthrough -> 53
	end
	-- [53] OP_148 (4, 3, "CFrame") consumes=1
	do
		R[4] = R[3]["CFrame"]
		-- fallthrough -> 54
	end
	-- [54] OP_246 (5, "CFrame", nil) consumes=1
	do
		R[5] = UP["CFrame"]
		-- fallthrough -> 55
	end
	-- [55] OP_148 (5, 5, "new") consumes=1
	do
		R[5] = R[5]["new"]
		-- fallthrough -> 56
	end
	-- [56] OP_16 (6, 0, nil) consumes=2
	do
		R[6] = 0
		R[7] = 0
		-- fallthrough -> 58
	end
	-- [58] OP_249 (8, 1, nil) consumes=1
	do
		R[8] = 1
		-- fallthrough -> 59
	end
	-- [59] OP_107 (5, 8, 2) consumes=1
	do
		R[5] = R[5](UNPACKREG(R, 6, 8))
		-- fallthrough -> 60
	end
	-- [60] OP_52 (4, 4, 5) consumes=1
	do
		R[4] = (R[4] * R[5])
		-- fallthrough -> 61
	end
	-- [61] OP_30 (2, "CFrame", 4) consumes=1
	do
		R[2]["CFrame"] = R[4]
		-- fallthrough -> 62
	end
	-- [62] OP_246 (4, "game", nil) consumes=1
	do
		R[4] = UP["game"]
		-- fallthrough -> 63
	end
	-- [63] OP_270 (4, 4, "GetService") consumes=1
	do
		R[5] = R[4]
		R[4] = R[4]["GetService"]
		-- fallthrough -> 64
	end
	-- [64] OP_249 (6, "RunService", nil) consumes=1
	do
		R[6] = "RunService"
		-- fallthrough -> 65
	end
	-- [65] OP_107 (4, 6, 2) consumes=1
	do
		R[4] = R[4](UNPACKREG(R, 5, 6))
		-- fallthrough -> 66
	end
	-- [66] OP_304 (4, 4, "Heartbeat") consumes=2
	do
		R[4] = R[4]["Heartbeat"]
		R[5] = R[4]
		R[4] = R[4]["Wait"]
		-- fallthrough -> 68
	end
	-- [68] OP_201 (4, 2, 1) consumes=1
	do
		R[4](R[5])
		-- fallthrough -> 69
	end
	-- [69] OP_93 (0, 13, nil) consumes=1
	do
		pc = 13
		pc = 14
		-- fallthrough -> 70
	end
	-- [70] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 71
	end
end

local function proto_root_47_0(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_207 (2, 0, 0) consumes=1
	do
		R[2] = ENV[0]
		-- fallthrough -> 2
	end
	-- [2] OP_321 (2, 4, 1) consumes=1
	do
		if not R[2] then
		else
			pc = 4
		end
		-- fallthrough -> 3
	end
	-- [3] OP_93 (0, 4, nil) consumes=1
	do
		pc = 4
		pc = 5
		-- fallthrough -> 4
	end
	-- [4] OP_93 (0, 9, nil) consumes=1
	do
		pc = 9
		pc = 10
		-- fallthrough -> 5
	end
	-- [5] OP_207 (2, 0, 0) consumes=1
	do
		R[2] = ENV[0]
		-- fallthrough -> 6
	end
	-- [6] OP_270 (2, 2, "Stop") consumes=1
	do
		R[3] = R[2]
		R[2] = R[2]["Stop"]
		-- fallthrough -> 7
	end
	-- [7] OP_201 (2, 2, 1) consumes=1
	do
		R[2](R[3])
		-- fallthrough -> 8
	end
	-- [8] OP_226 (2, 2, 0) consumes=1
	do
		R[2] = nil
		-- fallthrough -> 9
	end
	-- [9] OP_58 (2, 0, 0) consumes=1
	do
		ENV[0] = R[2]
		-- fallthrough -> 10
	end
	-- [10] OP_207 (2, 1, 0) consumes=1
	do
		R[2] = ENV[1]
		-- fallthrough -> 11
	end
	-- [11] OP_321 (2, 13, 1) consumes=1
	do
		if not R[2] then
		else
			pc = 13
		end
		-- fallthrough -> 12
	end
	-- [12] OP_93 (0, 13, nil) consumes=1
	do
		pc = 13
		pc = 14
		-- fallthrough -> 13
	end
	-- [13] OP_93 (0, 32, nil) consumes=1
	do
		pc = 32
		pc = 33
		-- fallthrough -> 14
	end
	-- [14] OP_246 (2, "Instance", nil) consumes=1
	do
		R[2] = UP["Instance"]
		-- fallthrough -> 15
	end
	-- [15] OP_141 (2, 2, "new") consumes=10
	do
		R[2] = R[2]["new"]
		R[3] = "Animation"
		R[2] = R[2](R[3])
		R[3] = "rbxassetid://"
		R[4] = ENV[2]
		R[3] = (R[3] .. R[4])
		R[2]["AnimationId"] = R[3]
		R[4] = R[1]
		R[3] = R[1]["LoadAnimation"]
		R[5] = R[2]
		R[3] = R[3](UNPACKREG(R, 4, 5))
		-- fallthrough -> 25
	end
	-- [25] OP_58 (3, 0, 0) consumes=1
	do
		ENV[0] = R[3]
		-- fallthrough -> 26
	end
	-- [26] OP_207 (3, 0, 0) consumes=1
	do
		R[3] = ENV[0]
		-- fallthrough -> 27
	end
	-- [27] OP_270 (3, 3, "Play") consumes=1
	do
		R[4] = R[3]
		R[3] = R[3]["Play"]
		-- fallthrough -> 28
	end
	-- [28] OP_201 (3, 2, 1) consumes=1
	do
		R[3](R[4])
		-- fallthrough -> 29
	end
	-- [29] OP_207 (3, 0, 0) consumes=1
	do
		R[3] = ENV[0]
		-- fallthrough -> 30
	end
	-- [30] OP_270 (3, 3, "AdjustSpeed") consumes=1
	do
		R[4] = R[3]
		R[3] = R[3]["AdjustSpeed"]
		-- fallthrough -> 31
	end
	-- [31] OP_249 (5, 3, nil) consumes=1
	do
		R[5] = 3
		-- fallthrough -> 32
	end
	-- [32] OP_262 (3, 5, 1) consumes=1
	do
		R[3](UNPACKREG(R, 4, 5))
		-- fallthrough -> 33
	end
	-- [33] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 34
	end
end

local function proto_root_47_1(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 2
	end
end

local function proto_root_48(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_124 (2, "Instance", nil) consumes=7
	do
		R[2] = UP["Instance"]
		R[2] = R[2]["new"]
		R[3] = "Frame"
		R[2] = R[2](R[3])
		R[3] = UP["UDim2"]
		R[3] = R[3]["new"]
		R[4] = 1
		-- fallthrough -> 8
	end
	-- [8] OP_72 (5, 0, nil) consumes=7
	do
		R[5] = 0
		R[6] = 1
		R[7] = 0
		R[3] = R[3](UNPACKREG(R, 4, 7))
		R[2]["Size"] = R[3]
		R[3] = UP["UDim2"]
		R[3] = R[3]["new"]
		-- fallthrough -> 15
	end
	-- [15] OP_76 (4, 0, nil) consumes=7
	do
		R[4] = 0
		R[5] = 0
		R[6] = 0
		R[7] = 0
		R[3] = R[3](UNPACKREG(R, 4, 7))
		R[2]["Position"] = R[3]
		R[3] = UP["Color3"]
		-- fallthrough -> 22
	end
	-- [22] OP_148 (3, 3, "fromRGB") consumes=1
	do
		R[3] = R[3]["fromRGB"]
		-- fallthrough -> 23
	end
	-- [23] OP_16 (4, 30, nil) consumes=2
	do
		R[4] = 30
		R[5] = 30
		-- fallthrough -> 25
	end
	-- [25] OP_249 (6, 30, nil) consumes=1
	do
		R[6] = 30
		-- fallthrough -> 26
	end
	-- [26] OP_107 (3, 6, 2) consumes=1
	do
		R[3] = R[3](UNPACKREG(R, 4, 6))
		-- fallthrough -> 27
	end
	-- [27] OP_30 (2, "BackgroundColor3", 3) consumes=1
	do
		R[2]["BackgroundColor3"] = R[3]
		-- fallthrough -> 28
	end
	-- [28] OP_85 (2, "Visible", false) consumes=1
	do
		R[2]["Visible"] = false
		-- fallthrough -> 29
	end
	-- [29] OP_260 (2, "Parent", 0) consumes=7
	do
		R[2]["Parent"] = R[0]
		R[3] = UP["Instance"]
		R[3] = R[3]["new"]
		R[4] = "TextLabel"
		R[3] = R[3](R[4])
		R[4] = UP["UDim2"]
		R[4] = R[4]["new"]
		-- fallthrough -> 36
	end
	-- [36] OP_76 (5, 0, nil) consumes=7
	do
		R[5] = 0
		R[6] = 200
		R[7] = 0
		R[8] = 10
		R[4] = R[4](UNPACKREG(R, 5, 8))
		R[3]["Size"] = R[4]
		R[4] = UP["UDim2"]
		-- fallthrough -> 43
	end
	-- [43] OP_75 (4, 4, "new") consumes=7
	do
		R[4] = R[4]["new"]
		R[5] = 0.5
		R[6] = -100
		R[7] = 0
		R[8] = 10
		R[4] = R[4](UNPACKREG(R, 5, 8))
		R[3]["Position"] = R[4]
		-- fallthrough -> 50
	end
	-- [50] OP_85 (3, "Text", "مضادات الحماية") consumes=1
	do
		R[3]["Text"] = "مضادات الحماية"
		-- fallthrough -> 51
	end
	-- [51] OP_252 (4, "Color3", nil) consumes=7
	do
		R[4] = UP["Color3"]
		R[4] = R[4]["fromRGB"]
		R[5] = 255
		R[6] = 215
		R[7] = 0
		R[4] = R[4](UNPACKREG(R, 5, 7))
		R[3]["TextColor3"] = R[4]
		-- fallthrough -> 58
	end
	-- [58] OP_85 (3, "BackgroundTransparency", 1) consumes=1
	do
		R[3]["BackgroundTransparency"] = 1
		-- fallthrough -> 59
	end
	-- [59] OP_198 (4, "Enum", nil) consumes=6
	do
		R[4] = UP["Enum"]
		R[4] = R[4]["Font"]
		R[4] = R[4]["SourceSansBold"]
		R[3]["Font"] = R[4]
		R[3]["TextSize"] = 20
		R[3]["Parent"] = R[2]
		-- fallthrough -> 65
	end
	-- [65] OP_73 (4, 4, 1) consumes=2
	do
		-- unresolved VM temporary: nil = {R, 2}
		c[(#c + 1)] = {}
		R[4] = CLOSURE(PROTO[4], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 67
	end
	-- [67] OP_350 (5, 4, 0) consumes=1
	do
		R[5] = R[4]
		-- fallthrough -> 68
	end
	-- [68] OP_16 (6, "مضاد بانج", nil) consumes=2
	do
		R[6] = "مضاد بانج"
		R[7] = 0.15
		-- fallthrough -> 70
	end
	-- [70] OP_107 (5, 7, 2) consumes=1
	do
		R[5] = R[5](UNPACKREG(R, 6, 7))
		-- fallthrough -> 71
	end
	-- [71] OP_304 (6, 5, "MouseButton1Click") consumes=2
	do
		R[6] = R[5]["MouseButton1Click"]
		R[7] = R[6]
		R[6] = R[6]["Connect"]
		-- fallthrough -> 73
	end
	-- [73] OP_296 (8, 2, nil) consumes=1
	do
		R[8] = CLOSURE(PROTO[2], nil, UP)
		-- fallthrough -> 74
	end
	-- [74] OP_33 (6, 8, 1) consumes=5
	do
		R[6](UNPACKREG(R, 7, 8))
		R[6] = false
		R[7] = {}
		R[8] = nil
		R[9] = R[4]
		-- fallthrough -> 79
	end
	-- [79] OP_16 (10, "مضاد نسخ", nil) consumes=2
	do
		R[10] = "مضاد نسخ"
		R[11] = 0.3
		-- fallthrough -> 81
	end
	-- [81] OP_107 (9, 11, 2) consumes=1
	do
		R[9] = R[9](UNPACKREG(R, 10, 11))
		-- fallthrough -> 82
	end
	-- [82] OP_304 (10, 9, "MouseButton1Click") consumes=2
	do
		R[10] = R[9]["MouseButton1Click"]
		R[11] = R[10]
		R[10] = R[10]["Connect"]
		-- fallthrough -> 84
	end
	-- [84] OP_73 (12, 3, 4) consumes=5
	do
		-- unresolved VM temporary: nil = {R, 6}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 7}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 8}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 9}
		c[(#c + 1)] = {}
		R[12] = CLOSURE(PROTO[3], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 89
	end
	-- [89] OP_33 (10, 12, 1) consumes=5
	do
		R[10](UNPACKREG(R, 11, 12))
		R[10] = false
		R[11] = {}
		R[12] = nil
		R[13] = R[4]
		-- fallthrough -> 94
	end
	-- [94] OP_16 (14, "مضاد نسخ ب100%", nil) consumes=2
	do
		R[14] = "مضاد نسخ ب100%"
		R[15] = 0.45
		-- fallthrough -> 96
	end
	-- [96] OP_107 (13, 15, 2) consumes=1
	do
		R[13] = R[13](UNPACKREG(R, 14, 15))
		-- fallthrough -> 97
	end
	-- [97] OP_304 (14, 13, "MouseButton1Click") consumes=2
	do
		R[14] = R[13]["MouseButton1Click"]
		R[15] = R[14]
		R[14] = R[14]["Connect"]
		-- fallthrough -> 99
	end
	-- [99] OP_73 (16, 0, 4) consumes=5
	do
		-- unresolved VM temporary: nil = {R, 10}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 11}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 12}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 13}
		c[(#c + 1)] = {}
		R[16] = CLOSURE(PROTO[0], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 104
	end
	-- [104] OP_262 (14, 16, 1) consumes=1
	do
		R[14](UNPACKREG(R, 15, 16))
		-- fallthrough -> 105
	end
	-- [105] OP_350 (14, 4, 0) consumes=1
	do
		R[14] = R[4]
		-- fallthrough -> 106
	end
	-- [106] OP_16 (15, "إيقاف الرقص", nil) consumes=2
	do
		R[15] = "إيقاف الرقص"
		R[16] = 0.6
		-- fallthrough -> 108
	end
	-- [108] OP_107 (14, 16, 2) consumes=1
	do
		R[14] = R[14](UNPACKREG(R, 15, 16))
		-- fallthrough -> 109
	end
	-- [109] OP_304 (15, 14, "MouseButton1Click") consumes=2
	do
		R[15] = R[14]["MouseButton1Click"]
		R[16] = R[15]
		R[15] = R[15]["Connect"]
		-- fallthrough -> 111
	end
	-- [111] OP_73 (17, 1, 1) consumes=2
	do
		-- unresolved VM temporary: nil = {R, 14}
		c[(#c + 1)] = {}
		R[17] = CLOSURE(PROTO[1], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 113
	end
	-- [113] OP_262 (15, 17, 1) consumes=1
	do
		R[15](UNPACKREG(R, 16, 17))
		-- fallthrough -> 114
	end
	-- [114] OP_350 (15, 4, 0) consumes=1
	do
		R[15] = R[4]
		-- fallthrough -> 115
	end
	-- [115] OP_16 (16, "مضاد كلبش", nil) consumes=2
	do
		R[16] = "مضاد كلبش"
		R[17] = 0.75
		-- fallthrough -> 117
	end
	-- [117] OP_107 (15, 17, 2) consumes=1
	do
		R[15] = R[15](UNPACKREG(R, 16, 17))
		-- fallthrough -> 118
	end
	-- [118] OP_268 (16, 0, 0) consumes=1
	do
		R[16] = false
		-- fallthrough -> 119
	end
	-- [119] OP_226 (17, 17, 0) consumes=1
	do
		R[17] = nil
		-- fallthrough -> 120
	end
	-- [120] OP_73 (18, 5, 3) consumes=4
	do
		-- unresolved VM temporary: nil = {R, 16}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 17}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 15}
		c[(#c + 1)] = {}
		R[18] = CLOSURE(PROTO[5], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 124
	end
	-- [124] OP_304 (19, 15, "MouseButton1Click") consumes=2
	do
		R[19] = R[15]["MouseButton1Click"]
		R[20] = R[19]
		R[19] = R[19]["Connect"]
		-- fallthrough -> 126
	end
	-- [126] OP_350 (21, 18, 0) consumes=1
	do
		R[21] = R[18]
		-- fallthrough -> 127
	end
	-- [127] OP_262 (19, 21, 1) consumes=1
	do
		R[19](UNPACKREG(R, 20, 21))
		-- fallthrough -> 128
	end
	-- [128] OP_30 (1, "مضادات", 2) consumes=1
	do
		R[1]["مضادات"] = R[2]
		-- fallthrough -> 129
	end
	-- [129] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 130
	end
end

local function proto_root_48_0(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_69 (0, 0, 0) consumes=10
	do
		R[0] = ENV[0]
		R[0] = not R[0]
		ENV[0] = R[0]
		R[0] = UP["game"]
		R[1] = R[0]
		R[0] = R[0]["GetService"]
		R[2] = "Players"
		R[0] = R[0](UNPACKREG(R, 1, 2))
		R[1] = R[0]["LocalPlayer"]
		R[2] = ENV[0]
		if R[2] then
		else
			pc = 65
		end
		-- fallthrough -> 11
	end
	-- [11] OP_93 (0, 65, nil) consumes=1
	do
		pc = 65
		pc = 66
		-- fallthrough -> 12
	end
	-- [12] OP_148 (2, 1, "Name") consumes=1
	do
		R[2] = R[1]["Name"]
		-- fallthrough -> 13
	end
	-- [13] OP_270 (3, 2, "lower") consumes=1
	do
		R[4] = R[2]
		R[3] = R[2]["lower"]
		-- fallthrough -> 14
	end
	-- [14] OP_202 (3, 2, 2) consumes=1
	do
		R[3] = R[3](R[4])
		-- fallthrough -> 15
	end
	-- [15] OP_16 (4, 0, nil) consumes=2
	do
		R[4] = 0
		R[5] = 1
		-- fallthrough -> 17
	end
	-- [17] OP_296 (6, 5, nil) consumes=1
	do
		R[6] = CLOSURE(PROTO[5], nil, UP)
		-- fallthrough -> 18
	end
	-- [18] OP_73 (7, 0, 2) consumes=3
	do
		-- unresolved VM temporary: nil = {R, 3}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 2}
		c[(#c + 1)] = {}
		R[7] = CLOSURE(PROTO[0], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 21
	end
	-- [21] OP_73 (8, 1, 2) consumes=3
	do
		-- unresolved VM temporary: nil = {R, 4}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 5}
		c[(#c + 1)] = {}
		R[8] = CLOSURE(PROTO[1], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 24
	end
	-- [24] OP_73 (9, 4, 4) consumes=5
	do
		-- unresolved VM temporary: nil = {R, 1}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 6}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 7}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 8}
		c[(#c + 1)] = {}
		R[9] = CLOSURE(PROTO[4], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 29
	end
	-- [29] OP_15 (10, "ipairs", nil) consumes=5
	do
		R[10] = UP["ipairs"]
		R[12] = R[0]
		R[11] = R[0]["GetPlayers"]
		R[10] = R[10](UNPACKREG(R, 11, 10))
		R[11] = nil
		R[12] = nil
		pc = 44
		pc = 45
		-- fallthrough -> 34
	end
	-- [34] OP_358 (14, 43, 1) consumes=1
	do
		pc = (((R[14] == R[1]) and 43) or pc + 1)
		pc = (1 + (((R[14] == R[1]) and 43) or pc + 1))
		-- fallthrough -> 35
	end
	-- [35] OP_93 (0, 43, nil) consumes=1
	do
		pc = 43
		pc = 44
		-- fallthrough -> 36
	end
	-- [36] OP_207 (15, 1, 0) consumes=1
	do
		R[15] = ENV[1]
		-- fallthrough -> 37
	end
	-- [37] OP_304 (16, 14, "Chatted") consumes=2
	do
		R[16] = R[14]["Chatted"]
		R[17] = R[16]
		R[16] = R[16]["Connect"]
		-- fallthrough -> 39
	end
	-- [39] OP_73 (18, 3, 2) consumes=3
	do
		-- unresolved VM temporary: nil = {R, 9}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 14}
		c[(#c + 1)] = {}
		R[18] = CLOSURE(PROTO[3], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 42
	end
	-- [42] OP_107 (16, 18, 2) consumes=1
	do
		R[16] = R[16](UNPACKREG(R, 17, 18))
		-- fallthrough -> 43
	end
	-- [43] OP_104 (15, 14, 16) consumes=1
	do
		R[15][R[14]] = R[16]
		-- fallthrough -> 44
	end
	-- [44] OP_44 (13, 0, 0) consumes=1
	do
		for d = 1, #c, 1 do
			for l = 0, #c[d], 1 do
				if (c[d][l][1] == R) and (c[d][l][2] >= 13) then
					({})[c[d][l][2]] = c[d][l][1][c[d][l][2]]
					c[d][l][1] = {}
				end
			end
		end
		-- fallthrough -> 45
	end
	-- [45] OP_175 (10, 33, 2) consumes=1
	do
		R[13] = R[10](R[11], R[12])
		R[14] = nil
		if R[10](R[11], R[12]) then
			R[12] = R[10](R[11], R[12])
			pc = 33
		else
		end
		-- fallthrough -> 46
	end
	-- [46] OP_93 (0, 33, nil) consumes=1
	do
		pc = 33
		pc = 34
		-- fallthrough -> 47
	end
	-- [47] OP_148 (10, 0, "PlayerAdded") consumes=1
	do
		R[10] = R[0]["PlayerAdded"]
		-- fallthrough -> 48
	end
	-- [48] OP_270 (10, 10, "Connect") consumes=1
	do
		R[11] = R[10]
		R[10] = R[10]["Connect"]
		-- fallthrough -> 49
	end
	-- [49] OP_73 (12, 2, 2) consumes=3
	do
		-- unresolved VM temporary: nil = {ENV, 1}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 9}
		c[(#c + 1)] = {}
		R[12] = CLOSURE(PROTO[2], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 52
	end
	-- [52] OP_107 (10, 12, 2) consumes=1
	do
		R[10] = R[10](UNPACKREG(R, 11, 12))
		-- fallthrough -> 53
	end
	-- [53] OP_58 (10, 2, 0) consumes=1
	do
		ENV[2] = R[10]
		-- fallthrough -> 54
	end
	-- [54] OP_207 (10, 3, 0) consumes=1
	do
		R[10] = ENV[3]
		-- fallthrough -> 55
	end
	-- [55] OP_348 (10, "Text", "إيقاف المضاد نسخ 100%") consumes=7
	do
		R[10]["Text"] = "إيقاف المضاد نسخ 100%"
		R[10] = ENV[3]
		R[11] = UP["Color3"]
		R[11] = R[11]["fromRGB"]
		R[12] = 255
		R[13] = 0
		R[14] = 0
		-- fallthrough -> 62
	end
	-- [62] OP_107 (11, 14, 2) consumes=1
	do
		R[11] = R[11](UNPACKREG(R, 12, 14))
		-- fallthrough -> 63
	end
	-- [63] OP_30 (10, "BackgroundColor3", 11) consumes=1
	do
		R[10]["BackgroundColor3"] = R[11]
		-- fallthrough -> 64
	end
	-- [64] OP_44 (2, 0, 0) consumes=1
	do
		for d = 1, #c, 1 do
			for l = 0, #c[d], 1 do
				if (c[d][l][1] == R) and (c[d][l][2] >= 2) then
					({})[c[d][l][2]] = c[d][l][1][c[d][l][2]]
					c[d][l][1] = {}
				end
			end
		end
		-- fallthrough -> 65
	end
	-- [65] OP_93 (0, 93, nil) consumes=1
	do
		pc = 93
		pc = 94
		-- fallthrough -> 66
	end
	-- [66] OP_246 (2, "pairs", nil) consumes=1
	do
		R[2] = UP["pairs"]
		-- fallthrough -> 67
	end
	-- [67] OP_207 (3, 1, 0) consumes=1
	do
		R[3] = ENV[1]
		-- fallthrough -> 68
	end
	-- [68] OP_209 (2, 2, 4) consumes=1
	do
		R[2] = R[2](R[3])
		R[3] = nil
		R[4] = nil
		-- fallthrough -> 69
	end
	-- [69] OP_93 (0, 71, nil) consumes=1
	do
		pc = 71
		pc = 72
		-- fallthrough -> 70
	end
	-- [70] OP_270 (7, 6, "Disconnect") consumes=1
	do
		R[8] = R[6]
		R[7] = R[6]["Disconnect"]
		-- fallthrough -> 71
	end
	-- [71] OP_201 (7, 2, 1) consumes=1
	do
		R[7](R[8])
		-- fallthrough -> 72
	end
	-- [72] OP_175 (2, 69, 2) consumes=1
	do
		R[5] = R[2](R[3], R[4])
		R[6] = nil
		if R[2](R[3], R[4]) then
			R[4] = R[2](R[3], R[4])
			pc = 69
		else
		end
		-- fallthrough -> 73
	end
	-- [73] OP_93 (0, 69, nil) consumes=1
	do
		pc = 69
		pc = 70
		-- fallthrough -> 74
	end
	-- [74] OP_344 (2, 0, 0) consumes=1
	do
		R[2] = {}
		-- fallthrough -> 75
	end
	-- [75] OP_58 (2, 1, 0) consumes=1
	do
		ENV[1] = R[2]
		-- fallthrough -> 76
	end
	-- [76] OP_207 (2, 2, 0) consumes=1
	do
		R[2] = ENV[2]
		-- fallthrough -> 77
	end
	-- [77] OP_84 (2, 83, 0) consumes=1
	do
		if R[2] then
		else
			pc = 83
		end
		-- fallthrough -> 78
	end
	-- [78] OP_93 (0, 83, nil) consumes=1
	do
		pc = 83
		pc = 84
		-- fallthrough -> 79
	end
	-- [79] OP_207 (2, 2, 0) consumes=1
	do
		R[2] = ENV[2]
		-- fallthrough -> 80
	end
	-- [80] OP_270 (2, 2, "Disconnect") consumes=1
	do
		R[3] = R[2]
		R[2] = R[2]["Disconnect"]
		-- fallthrough -> 81
	end
	-- [81] OP_201 (2, 2, 1) consumes=1
	do
		R[2](R[3])
		-- fallthrough -> 82
	end
	-- [82] OP_226 (2, 2, 0) consumes=1
	do
		R[2] = nil
		-- fallthrough -> 83
	end
	-- [83] OP_58 (2, 2, 0) consumes=1
	do
		ENV[2] = R[2]
		-- fallthrough -> 84
	end
	-- [84] OP_207 (2, 3, 0) consumes=1
	do
		R[2] = ENV[3]
		-- fallthrough -> 85
	end
	-- [85] OP_348 (2, "Text", "مضاد نسخ ب100%") consumes=7
	do
		R[2]["Text"] = "مضاد نسخ ب100%"
		R[2] = ENV[3]
		R[3] = UP["Color3"]
		R[3] = R[3]["fromRGB"]
		R[4] = 255
		R[5] = 215
		R[6] = 0
		-- fallthrough -> 92
	end
	-- [92] OP_107 (3, 6, 2) consumes=1
	do
		R[3] = R[3](UNPACKREG(R, 4, 6))
		-- fallthrough -> 93
	end
	-- [93] OP_30 (2, "BackgroundColor3", 3) consumes=1
	do
		R[2]["BackgroundColor3"] = R[3]
		-- fallthrough -> 94
	end
	-- [94] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 95
	end
end

local function proto_root_48_0_0(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_173 (1, 0, "lower") consumes=7
	do
		R[2] = R[0]
		R[1] = R[0]["lower"]
		R[1] = R[1](R[2])
		R[3] = R[1]
		R[2] = R[1]["find"]
		R[4] = ENV[0]
		R[5] = 1
		R[6] = true
		R[2] = R[2](UNPACKREG(R, 3, 6))
		-- fallthrough -> 8
	end
	-- [8] OP_84 (2, 11, 0) consumes=1
	do
		if R[2] then
		else
			pc = 11
		end
		-- fallthrough -> 9
	end
	-- [9] OP_93 (0, 11, nil) consumes=1
	do
		pc = 11
		pc = 12
		-- fallthrough -> 10
	end
	-- [10] OP_268 (2, 1, 0) consumes=1
	do
		R[2] = true
		-- fallthrough -> 11
	end
	-- [11] OP_47 (2, 2, 0) consumes=1
	do
		-- RETURN R[2]
		-- fallthrough -> 12
	end
	-- [12] OP_249 (2, 2, nil) consumes=1
	do
		R[2] = 2
		-- fallthrough -> 13
	end
	-- [13] OP_207 (3, 1, 0) consumes=1
	do
		R[3] = ENV[1]
		-- fallthrough -> 14
	end
	-- [14] OP_137 (3, 3, 0) consumes=1
	do
		R[3] = #R[3]
		-- fallthrough -> 15
	end
	-- [15] OP_249 (4, 1, nil) consumes=1
	do
		R[4] = 1
		-- fallthrough -> 16
	end
	-- [16] OP_179 (2, 33, nil) consumes=1
	do
		if R[4] > 0 then
			if R[2] > R[3] then
				pc = 33
			else
				R[5] = R[2]
			end
		elseif R[2] < R[3] then
			pc = 33
		else
			R[5] = R[2]
		end
		-- fallthrough -> 17
	end
	-- [17] OP_270 (6, 1, "find") consumes=1
	do
		R[7] = R[1]
		R[6] = R[1]["find"]
		-- fallthrough -> 18
	end
	-- [18] OP_298 (8, 1, 0) consumes=7
	do
		R[8] = ENV[1]
		R[9] = R[8]
		R[8] = R[8]["sub"]
		R[10] = 1
		R[11] = R[5]
		R[8] = R[8](UNPACKREG(R, 9, 11))
		R[9] = R[8]
		R[8] = R[8]["lower"]
		R[8] = R[8](R[9])
		-- fallthrough -> 25
	end
	-- [25] OP_249 (9, 1, nil) consumes=1
	do
		R[9] = 1
		-- fallthrough -> 26
	end
	-- [26] OP_268 (10, 1, 0) consumes=1
	do
		R[10] = true
		-- fallthrough -> 27
	end
	-- [27] OP_107 (6, 10, 2) consumes=1
	do
		R[6] = R[6](UNPACKREG(R, 7, 10))
		-- fallthrough -> 28
	end
	-- [28] OP_321 (6, 30, 1) consumes=1
	do
		if not R[6] then
		else
			pc = 30
		end
		-- fallthrough -> 29
	end
	-- [29] OP_93 (0, 30, nil) consumes=1
	do
		pc = 30
		pc = 31
		-- fallthrough -> 30
	end
	-- [30] OP_93 (0, 32, nil) consumes=1
	do
		pc = 32
		pc = 33
		-- fallthrough -> 31
	end
	-- [31] OP_268 (6, 1, 0) consumes=1
	do
		R[6] = true
		-- fallthrough -> 32
	end
	-- [32] OP_47 (6, 2, 0) consumes=1
	do
		-- RETURN R[6]
		-- fallthrough -> 33
	end
	-- [33] OP_308 (2, 16, nil) consumes=1
	do
		R[2] = (R[2] + R[4])
		if R[4] > 0 then
			if (R[2] + R[4]) <= R[3] then
				pc = 16
				R[5] = (R[2] + R[4])
			end
		elseif (R[2] + R[4]) >= R[3] then
			pc = 16
			R[5] = (R[2] + R[4])
		end
		-- fallthrough -> 34
	end
	-- [34] OP_268 (2, 0, 0) consumes=1
	do
		R[2] = false
		-- fallthrough -> 35
	end
	-- [35] OP_47 (2, 2, 0) consumes=1
	do
		-- RETURN R[2]
		-- fallthrough -> 36
	end
	-- [36] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 37
	end
end

local function proto_root_48_0_1(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_346 (1, "tick", nil) consumes=6
	do
		R[1] = UP["tick"]
		R[1] = R[1]()
		R[2] = ENV[0]
		R[2] = (R[1] - R[2])
		R[3] = ENV[1]
		if R[2] < R[3] then
		else
			pc = 8
		end
		-- fallthrough -> 7
	end
	-- [7] OP_93 (0, 8, nil) consumes=1
	do
		pc = 8
		pc = 9
		-- fallthrough -> 8
	end
	-- [8] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 9
	end
	-- [9] OP_246 (2, "pcall", nil) consumes=1
	do
		R[2] = UP["pcall"]
		-- fallthrough -> 10
	end
	-- [10] OP_296 (3, 0, nil) consumes=1
	do
		R[3] = CLOSURE(PROTO[0], nil, UP)
		-- fallthrough -> 11
	end
	-- [11] OP_201 (2, 2, 1) consumes=1
	do
		R[2](R[3])
		-- fallthrough -> 12
	end
	-- [12] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 13
	end
end

local function proto_root_48_0_1_0(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_327 (0, "game", nil) consumes=5
	do
		R[0] = UP["game"]
		R[1] = R[0]
		R[0] = R[0]["GetService"]
		R[2] = "ReplicatedStorage"
		R[0] = R[0](UNPACKREG(R, 1, 2))
		R[0] = R[0]["PrivateCommands"]
		-- fallthrough -> 6
	end
	-- [6] OP_304 (0, 0, "Char") consumes=2
	do
		R[0] = R[0]["Char"]
		R[1] = R[0]
		R[0] = R[0]["FireServer"]
		-- fallthrough -> 8
	end
	-- [8] OP_351 (2, 4592243049, nil) consumes=7
	do
		R[2] = 4592243049
		R[0](UNPACKREG(R, 1, 2))
		R[0] = UP["game"]
		R[1] = R[0]
		R[0] = R[0]["GetService"]
		R[2] = "ReplicatedStorage"
		R[0] = R[0](UNPACKREG(R, 1, 2))
		R[0] = R[0]["PrivateCommands"]
		-- fallthrough -> 15
	end
	-- [15] OP_304 (0, 0, "Char") consumes=2
	do
		R[0] = R[0]["Char"]
		R[1] = R[0]
		R[0] = R[0]["FireServer"]
		-- fallthrough -> 17
	end
	-- [17] OP_249 (2, "No", nil) consumes=1
	do
		R[2] = "No"
		-- fallthrough -> 18
	end
	-- [18] OP_262 (0, 2, 1) consumes=1
	do
		R[0](UNPACKREG(R, 1, 2))
		-- fallthrough -> 19
	end
	-- [19] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 20
	end
end

local function proto_root_48_0_2(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_207 (1, 0, 0) consumes=1
	do
		R[1] = ENV[0]
		-- fallthrough -> 2
	end
	-- [2] OP_304 (2, 0, "Chatted") consumes=2
	do
		R[2] = R[0]["Chatted"]
		R[3] = R[2]
		R[2] = R[2]["Connect"]
		-- fallthrough -> 4
	end
	-- [4] OP_73 (4, 0, 2) consumes=3
	do
		-- unresolved VM temporary: nil = {ENV, 1}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 0}
		c[(#c + 1)] = {}
		R[4] = CLOSURE(PROTO[0], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 7
	end
	-- [7] OP_107 (2, 4, 2) consumes=1
	do
		R[2] = R[2](UNPACKREG(R, 3, 4))
		-- fallthrough -> 8
	end
	-- [8] OP_104 (1, 0, 2) consumes=1
	do
		R[1][R[0]] = R[2]
		-- fallthrough -> 9
	end
	-- [9] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 10
	end
end

local function proto_root_48_0_2_0(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_354 (1, 0, 0) consumes=4
	do
		R[1] = ENV[0]
		R[2] = ENV[1]
		R[3] = R[0]
		R[1](UNPACKREG(R, 2, 3))
		-- RETURN
		-- fallthrough -> 5
	end
	-- [5] OP_12 (0, 1, 0) consumes=5
	do
		R[0] = ENV[1]
		R[I_1.A] = not R[I_1.B]
		ENV[I_2.B] = R[I_2.A]
		R[I_3.A] = ENV[I_3.B]
		if R[I_4.A] then
		else
			pc = I_4.B
		end
		-- fallthrough -> 10
	end
end

local function proto_root_48_0_3(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_354 (1, 0, 0) consumes=4
	do
		R[1] = ENV[0]
		R[2] = ENV[1]
		R[3] = R[0]
		R[1](UNPACKREG(R, 2, 3))
		-- RETURN
		-- fallthrough -> 5
	end
	-- [5] OP_9 (0, 1, 0) consumes=1
	do
		R[0] = ENV[1]
		-- fallthrough -> 6
	end
end

local function proto_root_48_0_4(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_207 (2, 0, 0) consumes=1
	do
		R[2] = ENV[0]
		-- fallthrough -> 2
	end
	-- [2] OP_358 (0, 4, 2) consumes=1
	do
		pc = (((R[0] == R[2]) and 4) or pc + 1)
		pc = (1 + (((R[0] == R[2]) and 4) or pc + 1))
		-- fallthrough -> 3
	end
	-- [3] OP_93 (0, 4, nil) consumes=1
	do
		pc = 4
		pc = 5
		-- fallthrough -> 4
	end
	-- [4] OP_93 (0, 5, nil) consumes=1
	do
		pc = 5
		pc = 6
		-- fallthrough -> 5
	end
	-- [5] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 6
	end
	-- [6] OP_207 (2, 1, 0) consumes=1
	do
		R[2] = ENV[1]
		-- fallthrough -> 7
	end
	-- [7] OP_350 (3, 1, 0) consumes=1
	do
		R[3] = R[1]
		-- fallthrough -> 8
	end
	-- [8] OP_202 (2, 2, 2) consumes=1
	do
		R[2] = R[2](R[3])
		-- fallthrough -> 9
	end
	-- [9] OP_321 (2, 16, 1) consumes=1
	do
		if not R[2] then
		else
			pc = 16
		end
		-- fallthrough -> 10
	end
	-- [10] OP_93 (0, 16, nil) consumes=1
	do
		pc = 16
		pc = 17
		-- fallthrough -> 11
	end
	-- [11] OP_207 (2, 2, 0) consumes=1
	do
		R[2] = ENV[2]
		-- fallthrough -> 12
	end
	-- [12] OP_350 (3, 1, 0) consumes=1
	do
		R[3] = R[1]
		-- fallthrough -> 13
	end
	-- [13] OP_202 (2, 2, 2) consumes=1
	do
		R[2] = R[2](R[3])
		-- fallthrough -> 14
	end
	-- [14] OP_321 (2, 16, 1) consumes=1
	do
		if not R[2] then
		else
			pc = 16
		end
		-- fallthrough -> 15
	end
	-- [15] OP_93 (0, 16, nil) consumes=1
	do
		pc = 16
		pc = 17
		-- fallthrough -> 16
	end
	-- [16] OP_93 (0, 19, nil) consumes=1
	do
		pc = 19
		pc = 20
		-- fallthrough -> 17
	end
	-- [17] OP_207 (2, 3, 0) consumes=1
	do
		R[2] = ENV[3]
		-- fallthrough -> 18
	end
	-- [18] OP_148 (3, 0, "Name") consumes=1
	do
		R[3] = R[0]["Name"]
		-- fallthrough -> 19
	end
	-- [19] OP_201 (2, 2, 1) consumes=1
	do
		R[2](R[3])
		-- fallthrough -> 20
	end
	-- [20] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 21
	end
end

local function proto_root_48_0_5(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_270 (1, 0, "find") consumes=1
	do
		R[2] = R[0]
		R[1] = R[0]["find"]
		-- fallthrough -> 2
	end
	-- [2] OP_249 (3, "#", nil) consumes=1
	do
		R[3] = "#"
		-- fallthrough -> 3
	end
	-- [3] OP_107 (1, 3, 2) consumes=1
	do
		R[1] = R[1](UNPACKREG(R, 2, 3))
		-- fallthrough -> 4
	end
	-- [4] OP_330 (1, 6, nil) consumes=1
	do
		if R[1] ~= nil then
		else
			pc = 6
		end
		-- fallthrough -> 5
	end
	-- [5] OP_93 (0, 6, nil) consumes=1
	do
		pc = 6
		pc = 7
		-- fallthrough -> 6
	end
	-- [6] OP_93 (0, 7, nil) consumes=1
	do
		pc = 7
		pc = 8
		-- fallthrough -> 7
	end
	-- [7] OP_329 (1, 0, 0) consumes=1
	do
		R[1] = false
		-- fallthrough -> 8
	end
	-- [8] OP_268 (1, 1, 0) consumes=1
	do
		R[1] = true
		-- fallthrough -> 9
	end
	-- [9] OP_47 (1, 2, 0) consumes=1
	do
		-- RETURN R[1]
		-- fallthrough -> 10
	end
	-- [10] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 11
	end
end

local function proto_root_48_1(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_286 (0, "game", nil) consumes=10
	do
		R[0] = UP["game"]
		R[1] = R[0]
		R[0] = R[0]["GetService"]
		R[2] = "Players"
		R[0] = R[0](UNPACKREG(R, 1, 2))
		R[1] = R[0]
		R[0] = R[0]["Chat"]
		R[2] = "/e .unhotDance"
		R[0](UNPACKREG(R, 1, 2))
		R[0] = UP["game"]
		R[1] = R[0]
		R[0] = R[0]["GetService"]
		R[2] = "Players"
		-- fallthrough -> 11
	end
	-- [11] OP_107 (0, 2, 2) consumes=1
	do
		R[0] = R[0](UNPACKREG(R, 1, 2))
		-- fallthrough -> 12
	end
	-- [12] OP_25 (0, 0, "Chat") consumes=10
	do
		R[1] = R[0]
		R[0] = R[0]["Chat"]
		R[2] = "/e .untouchDance"
		R[0](UNPACKREG(R, 1, 2))
		R[0] = UP["game"]
		R[1] = R[0]
		R[0] = R[0]["GetService"]
		R[2] = "Players"
		R[0] = R[0](UNPACKREG(R, 1, 2))
		R[1] = R[0]
		R[0] = R[0]["Chat"]
		R[2] = "/e .unfeetDance"
		R[0](UNPACKREG(R, 1, 2))
		-- fallthrough -> 22
	end
	-- [22] OP_207 (0, 0, 0) consumes=1
	do
		R[0] = ENV[0]
		-- fallthrough -> 23
	end
	-- [23] OP_252 (1, "Color3", nil) consumes=7
	do
		R[1] = UP["Color3"]
		R[1] = R[1]["fromRGB"]
		R[2] = 0
		R[3] = 255
		R[4] = 0
		R[1] = R[1](UNPACKREG(R, 2, 4))
		R[0]["BackgroundColor3"] = R[1]
		-- fallthrough -> 30
	end
	-- [30] OP_332 (0, "task", nil) consumes=5
	do
		R[0] = UP["task"]
		R[0] = R[0]["wait"]
		R[1] = 0.5
		R[0](R[1])
		R[0] = ENV[0]
		-- fallthrough -> 35
	end
	-- [35] OP_252 (1, "Color3", nil) consumes=7
	do
		R[1] = UP["Color3"]
		R[1] = R[1]["fromRGB"]
		R[2] = 255
		R[3] = 215
		R[4] = 0
		R[1] = R[1](UNPACKREG(R, 2, 4))
		R[0]["BackgroundColor3"] = R[1]
		-- fallthrough -> 42
	end
	-- [42] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 43
	end
end

local function proto_root_48_2(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_312 (0, "game", nil) consumes=5
	do
		R[0] = UP["game"]
		R[0] = R[0]["Players"]
		R[0] = R[0]["LocalPlayer"]
		R[1] = R[0]["Character"]
		if not R[1] then
		else
			pc = 9
		end
		-- fallthrough -> 6
	end
	-- [6] OP_93 (0, 9, nil) consumes=1
	do
		pc = 9
		pc = 10
		-- fallthrough -> 7
	end
	-- [7] OP_148 (1, 0, "CharacterAdded") consumes=1
	do
		R[1] = R[0]["CharacterAdded"]
		-- fallthrough -> 8
	end
	-- [8] OP_270 (1, 1, "Wait") consumes=1
	do
		R[2] = R[1]
		R[1] = R[1]["Wait"]
		-- fallthrough -> 9
	end
	-- [9] OP_202 (1, 2, 2) consumes=1
	do
		R[1] = R[1](R[2])
		-- fallthrough -> 10
	end
	-- [10] OP_270 (2, 1, "WaitForChild") consumes=1
	do
		R[3] = R[1]
		R[2] = R[1]["WaitForChild"]
		-- fallthrough -> 11
	end
	-- [11] OP_27 (4, "HumanoidRootPart", nil) consumes=10
	do
		R[4] = "HumanoidRootPart"
		R[2] = R[2](UNPACKREG(R, 3, 4))
		R[3] = UP["game"]
		R[3] = R[3]["Workspace"]
		R[3] = R[3]["FallenPartsDestroyHeight"]
		R[4] = UP["game"]
		R[4] = R[4]["Workspace"]
		R[4]["FallenPartsDestroyHeight"] = -10000
		R[4] = R[2]["Position"]
		R[5] = UP["CFrame"]
		-- fallthrough -> 21
	end
	-- [21] OP_148 (5, 5, "new") consumes=1
	do
		R[5] = R[5]["new"]
		-- fallthrough -> 22
	end
	-- [22] OP_246 (6, "Vector3", nil) consumes=1
	do
		R[6] = UP["Vector3"]
		-- fallthrough -> 23
	end
	-- [23] OP_148 (6, 6, "new") consumes=1
	do
		R[6] = R[6]["new"]
		-- fallthrough -> 24
	end
	-- [24] OP_16 (7, 0, nil) consumes=2
	do
		R[7] = 0
		R[8] = -8000
		-- fallthrough -> 26
	end
	-- [26] OP_249 (9, 0, nil) consumes=1
	do
		R[9] = 0
		-- fallthrough -> 27
	end
	-- [27] OP_276 (6, 9, 0) consumes=7
	do
		R[5] = R[5](UNPACKREG(R, 6, 5))
		R[2]["CFrame"] = R[5]
		R[5] = UP["task"]
		R[5] = R[5]["wait"]
		R[6] = 0.1
		R[5](R[6])
		-- fallthrough -> 34
	end
	-- [34] OP_197 (5, "CFrame", nil) consumes=8
	do
		R[5] = UP["CFrame"]
		R[5] = R[5]["new"]
		R[6] = R[4]
		R[5] = R[5](R[6])
		R[2]["CFrame"] = R[5]
		R[5] = UP["game"]
		R[5] = R[5]["Workspace"]
		R[5]["FallenPartsDestroyHeight"] = R[3]
		-- RETURN
		-- fallthrough -> 42
	end
	-- [42] OP_4 (0, 1, 0) consumes=1
	do
		R[0] = (R[1] * 0)
		-- fallthrough -> 43
	end
end

local function proto_root_48_3(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_275 (0, 0, 0) consumes=10
	do
		R[0] = ENV[0]
		R[0] = not R[0]
		ENV[0] = R[0]
		R[0] = UP["game"]
		R[1] = R[0]
		R[0] = R[0]["GetService"]
		R[2] = "Players"
		R[0] = R[0](UNPACKREG(R, 1, 2))
		R[1] = R[0]["LocalPlayer"]
		R[2] = ENV[0]
		if not R[2] then
		else
			pc = 12
		end
		-- fallthrough -> 11
	end
	-- [11] OP_93 (0, 12, nil) consumes=1
	do
		pc = 12
		pc = 13
		-- fallthrough -> 12
	end
	-- [12] OP_93 (0, 64, nil) consumes=1
	do
		pc = 64
		pc = 65
		-- fallthrough -> 13
	end
	-- [13] OP_148 (2, 1, "Name") consumes=1
	do
		R[2] = R[1]["Name"]
		-- fallthrough -> 14
	end
	-- [14] OP_270 (3, 2, "lower") consumes=1
	do
		R[4] = R[2]
		R[3] = R[2]["lower"]
		-- fallthrough -> 15
	end
	-- [15] OP_202 (3, 2, 2) consumes=1
	do
		R[3] = R[3](R[4])
		-- fallthrough -> 16
	end
	-- [16] OP_16 (4, 0, nil) consumes=2
	do
		R[4] = 0
		R[5] = 1
		-- fallthrough -> 18
	end
	-- [18] OP_73 (6, 0, 2) consumes=3
	do
		-- unresolved VM temporary: nil = {R, 3}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 2}
		c[(#c + 1)] = {}
		R[6] = CLOSURE(PROTO[0], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 21
	end
	-- [21] OP_73 (7, 3, 2) consumes=3
	do
		-- unresolved VM temporary: nil = {R, 4}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 5}
		c[(#c + 1)] = {}
		R[7] = CLOSURE(PROTO[3], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 24
	end
	-- [24] OP_73 (8, 1, 3) consumes=4
	do
		-- unresolved VM temporary: nil = {R, 1}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 6}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 7}
		c[(#c + 1)] = {}
		R[8] = CLOSURE(PROTO[1], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 28
	end
	-- [28] OP_15 (9, "ipairs", nil) consumes=5
	do
		R[9] = UP["ipairs"]
		R[11] = R[0]
		R[10] = R[0]["GetPlayers"]
		R[9] = R[9](UNPACKREG(R, 10, 9))
		R[10] = nil
		R[11] = nil
		pc = 43
		pc = 44
		-- fallthrough -> 33
	end
	-- [33] OP_358 (13, 42, 1) consumes=1
	do
		pc = (((R[13] == R[1]) and 42) or pc + 1)
		pc = (1 + (((R[13] == R[1]) and 42) or pc + 1))
		-- fallthrough -> 34
	end
	-- [34] OP_93 (0, 42, nil) consumes=1
	do
		pc = 42
		pc = 43
		-- fallthrough -> 35
	end
	-- [35] OP_207 (14, 1, 0) consumes=1
	do
		R[14] = ENV[1]
		-- fallthrough -> 36
	end
	-- [36] OP_304 (15, 13, "Chatted") consumes=2
	do
		R[15] = R[13]["Chatted"]
		R[16] = R[15]
		R[15] = R[15]["Connect"]
		-- fallthrough -> 38
	end
	-- [38] OP_73 (17, 2, 2) consumes=3
	do
		-- unresolved VM temporary: nil = {R, 8}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 13}
		c[(#c + 1)] = {}
		R[17] = CLOSURE(PROTO[2], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 41
	end
	-- [41] OP_107 (15, 17, 2) consumes=1
	do
		R[15] = R[15](UNPACKREG(R, 16, 17))
		-- fallthrough -> 42
	end
	-- [42] OP_104 (14, 13, 15) consumes=1
	do
		R[14][R[13]] = R[15]
		-- fallthrough -> 43
	end
	-- [43] OP_44 (12, 0, 0) consumes=1
	do
		for d = 1, #c, 1 do
			for l = 0, #c[d], 1 do
				if (c[d][l][1] == R) and (c[d][l][2] >= 12) then
					({})[c[d][l][2]] = c[d][l][1][c[d][l][2]]
					c[d][l][1] = {}
				end
			end
		end
		-- fallthrough -> 44
	end
	-- [44] OP_175 (9, 32, 2) consumes=1
	do
		R[12] = R[9](R[10], R[11])
		R[13] = nil
		if R[9](R[10], R[11]) then
			R[11] = R[9](R[10], R[11])
			pc = 32
		else
		end
		-- fallthrough -> 45
	end
	-- [45] OP_93 (0, 32, nil) consumes=1
	do
		pc = 32
		pc = 33
		-- fallthrough -> 46
	end
	-- [46] OP_148 (9, 0, "PlayerAdded") consumes=1
	do
		R[9] = R[0]["PlayerAdded"]
		-- fallthrough -> 47
	end
	-- [47] OP_270 (9, 9, "Connect") consumes=1
	do
		R[10] = R[9]
		R[9] = R[9]["Connect"]
		-- fallthrough -> 48
	end
	-- [48] OP_73 (11, 4, 2) consumes=3
	do
		-- unresolved VM temporary: nil = {ENV, 1}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 8}
		c[(#c + 1)] = {}
		R[11] = CLOSURE(PROTO[4], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 51
	end
	-- [51] OP_107 (9, 11, 2) consumes=1
	do
		R[9] = R[9](UNPACKREG(R, 10, 11))
		-- fallthrough -> 52
	end
	-- [52] OP_58 (9, 2, 0) consumes=1
	do
		ENV[2] = R[9]
		-- fallthrough -> 53
	end
	-- [53] OP_207 (9, 3, 0) consumes=1
	do
		R[9] = ENV[3]
		-- fallthrough -> 54
	end
	-- [54] OP_348 (9, "Text", "إيقاف مضاد النسخ") consumes=7
	do
		R[9]["Text"] = "إيقاف مضاد النسخ"
		R[9] = ENV[3]
		R[10] = UP["Color3"]
		R[10] = R[10]["fromRGB"]
		R[11] = 255
		R[12] = 0
		R[13] = 0
		-- fallthrough -> 61
	end
	-- [61] OP_107 (10, 13, 2) consumes=1
	do
		R[10] = R[10](UNPACKREG(R, 11, 13))
		-- fallthrough -> 62
	end
	-- [62] OP_30 (9, "BackgroundColor3", 10) consumes=1
	do
		R[9]["BackgroundColor3"] = R[10]
		-- fallthrough -> 63
	end
	-- [63] OP_44 (2, 0, 0) consumes=1
	do
		for d = 1, #c, 1 do
			for l = 0, #c[d], 1 do
				if (c[d][l][1] == R) and (c[d][l][2] >= 2) then
					({})[c[d][l][2]] = c[d][l][1][c[d][l][2]]
					c[d][l][1] = {}
				end
			end
		end
		-- fallthrough -> 64
	end
	-- [64] OP_93 (0, 92, nil) consumes=1
	do
		pc = 92
		pc = 93
		-- fallthrough -> 65
	end
	-- [65] OP_246 (2, "pairs", nil) consumes=1
	do
		R[2] = UP["pairs"]
		-- fallthrough -> 66
	end
	-- [66] OP_207 (3, 1, 0) consumes=1
	do
		R[3] = ENV[1]
		-- fallthrough -> 67
	end
	-- [67] OP_209 (2, 2, 4) consumes=1
	do
		R[2] = R[2](R[3])
		R[3] = nil
		R[4] = nil
		-- fallthrough -> 68
	end
	-- [68] OP_93 (0, 70, nil) consumes=1
	do
		pc = 70
		pc = 71
		-- fallthrough -> 69
	end
	-- [69] OP_270 (7, 6, "Disconnect") consumes=1
	do
		R[8] = R[6]
		R[7] = R[6]["Disconnect"]
		-- fallthrough -> 70
	end
	-- [70] OP_201 (7, 2, 1) consumes=1
	do
		R[7](R[8])
		-- fallthrough -> 71
	end
	-- [71] OP_175 (2, 68, 2) consumes=1
	do
		R[5] = R[2](R[3], R[4])
		R[6] = nil
		if R[2](R[3], R[4]) then
			R[4] = R[2](R[3], R[4])
			pc = 68
		else
		end
		-- fallthrough -> 72
	end
	-- [72] OP_93 (0, 68, nil) consumes=1
	do
		pc = 68
		pc = 69
		-- fallthrough -> 73
	end
	-- [73] OP_344 (2, 0, 0) consumes=1
	do
		R[2] = {}
		-- fallthrough -> 74
	end
	-- [74] OP_58 (2, 1, 0) consumes=1
	do
		ENV[1] = R[2]
		-- fallthrough -> 75
	end
	-- [75] OP_207 (2, 2, 0) consumes=1
	do
		R[2] = ENV[2]
		-- fallthrough -> 76
	end
	-- [76] OP_84 (2, 82, 0) consumes=1
	do
		if R[2] then
		else
			pc = 82
		end
		-- fallthrough -> 77
	end
	-- [77] OP_93 (0, 82, nil) consumes=1
	do
		pc = 82
		pc = 83
		-- fallthrough -> 78
	end
	-- [78] OP_207 (2, 2, 0) consumes=1
	do
		R[2] = ENV[2]
		-- fallthrough -> 79
	end
	-- [79] OP_270 (2, 2, "Disconnect") consumes=1
	do
		R[3] = R[2]
		R[2] = R[2]["Disconnect"]
		-- fallthrough -> 80
	end
	-- [80] OP_201 (2, 2, 1) consumes=1
	do
		R[2](R[3])
		-- fallthrough -> 81
	end
	-- [81] OP_226 (2, 2, 0) consumes=1
	do
		R[2] = nil
		-- fallthrough -> 82
	end
	-- [82] OP_58 (2, 2, 0) consumes=1
	do
		ENV[2] = R[2]
		-- fallthrough -> 83
	end
	-- [83] OP_207 (2, 3, 0) consumes=1
	do
		R[2] = ENV[3]
		-- fallthrough -> 84
	end
	-- [84] OP_348 (2, "Text", "مضاد نسخ") consumes=7
	do
		R[2]["Text"] = "مضاد نسخ"
		R[2] = ENV[3]
		R[3] = UP["Color3"]
		R[3] = R[3]["fromRGB"]
		R[4] = 255
		R[5] = 215
		R[6] = 0
		-- fallthrough -> 91
	end
	-- [91] OP_107 (3, 6, 2) consumes=1
	do
		R[3] = R[3](UNPACKREG(R, 4, 6))
		-- fallthrough -> 92
	end
	-- [92] OP_30 (2, "BackgroundColor3", 3) consumes=1
	do
		R[2]["BackgroundColor3"] = R[3]
		-- fallthrough -> 93
	end
	-- [93] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 94
	end
end

local function proto_root_48_3_0(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_173 (1, 0, "lower") consumes=7
	do
		R[2] = R[0]
		R[1] = R[0]["lower"]
		R[1] = R[1](R[2])
		R[3] = R[1]
		R[2] = R[1]["find"]
		R[4] = ENV[0]
		R[5] = 1
		R[6] = true
		R[2] = R[2](UNPACKREG(R, 3, 6))
		-- fallthrough -> 8
	end
	-- [8] OP_321 (2, 10, 1) consumes=1
	do
		if not R[2] then
		else
			pc = 10
		end
		-- fallthrough -> 9
	end
	-- [9] OP_93 (0, 10, nil) consumes=1
	do
		pc = 10
		pc = 11
		-- fallthrough -> 10
	end
	-- [10] OP_93 (0, 12, nil) consumes=1
	do
		pc = 12
		pc = 13
		-- fallthrough -> 11
	end
	-- [11] OP_268 (2, 1, 0) consumes=1
	do
		R[2] = true
		-- fallthrough -> 12
	end
	-- [12] OP_47 (2, 2, 0) consumes=1
	do
		-- RETURN R[2]
		-- fallthrough -> 13
	end
	-- [13] OP_249 (2, 2, nil) consumes=1
	do
		R[2] = 2
		-- fallthrough -> 14
	end
	-- [14] OP_207 (3, 1, 0) consumes=1
	do
		R[3] = ENV[1]
		-- fallthrough -> 15
	end
	-- [15] OP_137 (3, 3, 0) consumes=1
	do
		R[3] = #R[3]
		-- fallthrough -> 16
	end
	-- [16] OP_249 (4, 1, nil) consumes=1
	do
		R[4] = 1
		-- fallthrough -> 17
	end
	-- [17] OP_179 (2, 33, nil) consumes=1
	do
		if R[4] > 0 then
			if R[2] > R[3] then
				pc = 33
			else
				R[5] = R[2]
			end
		elseif R[2] < R[3] then
			pc = 33
		else
			R[5] = R[2]
		end
		-- fallthrough -> 18
	end
	-- [18] OP_270 (6, 1, "find") consumes=1
	do
		R[7] = R[1]
		R[6] = R[1]["find"]
		-- fallthrough -> 19
	end
	-- [19] OP_298 (8, 1, 0) consumes=7
	do
		R[8] = ENV[1]
		R[9] = R[8]
		R[8] = R[8]["sub"]
		R[10] = 1
		R[11] = R[5]
		R[8] = R[8](UNPACKREG(R, 9, 11))
		R[9] = R[8]
		R[8] = R[8]["lower"]
		R[8] = R[8](R[9])
		-- fallthrough -> 26
	end
	-- [26] OP_249 (9, 1, nil) consumes=1
	do
		R[9] = 1
		-- fallthrough -> 27
	end
	-- [27] OP_268 (10, 1, 0) consumes=1
	do
		R[10] = true
		-- fallthrough -> 28
	end
	-- [28] OP_107 (6, 10, 2) consumes=1
	do
		R[6] = R[6](UNPACKREG(R, 7, 10))
		-- fallthrough -> 29
	end
	-- [29] OP_84 (6, 32, 0) consumes=1
	do
		if R[6] then
		else
			pc = 32
		end
		-- fallthrough -> 30
	end
	-- [30] OP_93 (0, 32, nil) consumes=1
	do
		pc = 32
		pc = 33
		-- fallthrough -> 31
	end
	-- [31] OP_268 (6, 1, 0) consumes=1
	do
		R[6] = true
		-- fallthrough -> 32
	end
	-- [32] OP_47 (6, 2, 0) consumes=1
	do
		-- RETURN R[6]
		-- fallthrough -> 33
	end
	-- [33] OP_308 (2, 17, nil) consumes=1
	do
		R[2] = (R[2] + R[4])
		if R[4] > 0 then
			if (R[2] + R[4]) <= R[3] then
				pc = 17
				R[5] = (R[2] + R[4])
			end
		elseif (R[2] + R[4]) >= R[3] then
			pc = 17
			R[5] = (R[2] + R[4])
		end
		-- fallthrough -> 34
	end
	-- [34] OP_268 (2, 0, 0) consumes=1
	do
		R[2] = false
		-- fallthrough -> 35
	end
	-- [35] OP_47 (2, 2, 0) consumes=1
	do
		-- RETURN R[2]
		-- fallthrough -> 36
	end
	-- [36] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 37
	end
end

local function proto_root_48_3_1(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_207 (2, 0, 0) consumes=1
	do
		R[2] = ENV[0]
		-- fallthrough -> 2
	end
	-- [2] OP_255 (0, 4, 2) consumes=1
	do
		if R[0] == R[2] then
		else
			pc = 4
		end
		-- fallthrough -> 3
	end
	-- [3] OP_93 (0, 4, nil) consumes=1
	do
		pc = 4
		pc = 5
		-- fallthrough -> 4
	end
	-- [4] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 5
	end
	-- [5] OP_207 (2, 1, 0) consumes=1
	do
		R[2] = ENV[1]
		-- fallthrough -> 6
	end
	-- [6] OP_350 (3, 1, 0) consumes=1
	do
		R[3] = R[1]
		-- fallthrough -> 7
	end
	-- [7] OP_202 (2, 2, 2) consumes=1
	do
		R[2] = R[2](R[3])
		-- fallthrough -> 8
	end
	-- [8] OP_84 (2, 12, 0) consumes=1
	do
		if R[2] then
		else
			pc = 12
		end
		-- fallthrough -> 9
	end
	-- [9] OP_93 (0, 12, nil) consumes=1
	do
		pc = 12
		pc = 13
		-- fallthrough -> 10
	end
	-- [10] OP_207 (2, 2, 0) consumes=1
	do
		R[2] = ENV[2]
		-- fallthrough -> 11
	end
	-- [11] OP_148 (3, 0, "Name") consumes=1
	do
		R[3] = R[0]["Name"]
		-- fallthrough -> 12
	end
	-- [12] OP_201 (2, 2, 1) consumes=1
	do
		R[2](R[3])
		-- fallthrough -> 13
	end
	-- [13] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 14
	end
end

local function proto_root_48_3_2(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_354 (1, 0, 0) consumes=4
	do
		R[1] = ENV[0]
		R[2] = ENV[1]
		R[3] = R[0]
		R[1](UNPACKREG(R, 2, 3))
		-- RETURN
		-- fallthrough -> 5
	end
	-- [5] OP_9 (0, 1, 0) consumes=1
	do
		R[0] = ENV[1]
		-- fallthrough -> 6
	end
end

local function proto_root_48_3_3(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_156 (1, "tick", nil) consumes=6
	do
		R[1] = UP["tick"]
		R[1] = R[1]()
		R[2] = ENV[0]
		R[2] = (R[1] - R[2])
		R[3] = ENV[1]
		if R[2] < R[3] then
			pc = 8
		else
		end
		-- fallthrough -> 7
	end
	-- [7] OP_93 (0, 8, nil) consumes=1
	do
		pc = 8
		pc = 9
		-- fallthrough -> 8
	end
	-- [8] OP_93 (0, 9, nil) consumes=1
	do
		pc = 9
		pc = 10
		-- fallthrough -> 9
	end
	-- [9] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 10
	end
	-- [10] OP_246 (2, "pcall", nil) consumes=1
	do
		R[2] = UP["pcall"]
		-- fallthrough -> 11
	end
	-- [11] OP_296 (3, 0, nil) consumes=1
	do
		R[3] = CLOSURE(PROTO[0], nil, UP)
		-- fallthrough -> 12
	end
	-- [12] OP_291 (2, 2, 1) consumes=6
	do
		R[2](R[3])
		R[2] = "/e .size "
		R[3] = R[0]
		R[4] = " 0"
		R[2] = ((R[2] .. R[3]) .. R[4])
		R[3] = UP["pcall"]
		-- fallthrough -> 18
	end
	-- [18] OP_73 (4, 1, 1) consumes=2
	do
		-- unresolved VM temporary: nil = {R, 2}
		c[(#c + 1)] = {}
		R[4] = CLOSURE(PROTO[1], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 20
	end
	-- [20] OP_202 (3, 2, 2) consumes=1
	do
		R[3] = R[3](R[4])
		-- fallthrough -> 21
	end
	-- [21] OP_84 (3, 23, 0) consumes=1
	do
		if R[3] then
		else
			pc = 23
		end
		-- fallthrough -> 22
	end
	-- [22] OP_93 (0, 23, nil) consumes=1
	do
		pc = 23
		pc = 24
		-- fallthrough -> 23
	end
	-- [23] OP_58 (1, 0, 0) consumes=1
	do
		ENV[0] = R[1]
		-- fallthrough -> 24
	end
	-- [24] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 25
	end
end

local function proto_root_48_3_3_0(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_327 (0, "game", nil) consumes=5
	do
		R[0] = UP["game"]
		R[1] = R[0]
		R[0] = R[0]["GetService"]
		R[2] = "ReplicatedStorage"
		R[0] = R[0](UNPACKREG(R, 1, 2))
		R[0] = R[0]["PrivateCommands"]
		-- fallthrough -> 6
	end
	-- [6] OP_304 (0, 0, "Char") consumes=2
	do
		R[0] = R[0]["Char"]
		R[1] = R[0]
		R[0] = R[0]["FireServer"]
		-- fallthrough -> 8
	end
	-- [8] OP_351 (2, 4592243049, nil) consumes=7
	do
		R[2] = 4592243049
		R[0](UNPACKREG(R, 1, 2))
		R[0] = UP["game"]
		R[1] = R[0]
		R[0] = R[0]["GetService"]
		R[2] = "ReplicatedStorage"
		R[0] = R[0](UNPACKREG(R, 1, 2))
		R[0] = R[0]["PrivateCommands"]
		-- fallthrough -> 15
	end
	-- [15] OP_304 (0, 0, "Char") consumes=2
	do
		R[0] = R[0]["Char"]
		R[1] = R[0]
		R[0] = R[0]["FireServer"]
		-- fallthrough -> 17
	end
	-- [17] OP_249 (2, "No", nil) consumes=1
	do
		R[2] = "No"
		-- fallthrough -> 18
	end
	-- [18] OP_262 (0, 2, 1) consumes=1
	do
		R[0](UNPACKREG(R, 1, 2))
		-- fallthrough -> 19
	end
	-- [19] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 20
	end
end

local function proto_root_48_3_3_1(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_100 (0, "game", nil) consumes=7
	do
		R[0] = UP["game"]
		R[1] = R[0]
		R[0] = R[0]["GetService"]
		R[2] = "Players"
		R[0] = R[0](UNPACKREG(R, 1, 2))
		R[1] = R[0]
		R[0] = R[0]["Chat"]
		R[2] = ENV[0]
		R[0](UNPACKREG(R, 1, 2))
		-- fallthrough -> 8
	end
	-- [8] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 9
	end
end

local function proto_root_48_3_4(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_207 (1, 0, 0) consumes=1
	do
		R[1] = ENV[0]
		-- fallthrough -> 2
	end
	-- [2] OP_304 (2, 0, "Chatted") consumes=2
	do
		R[2] = R[0]["Chatted"]
		R[3] = R[2]
		R[2] = R[2]["Connect"]
		-- fallthrough -> 4
	end
	-- [4] OP_73 (4, 0, 2) consumes=3
	do
		-- unresolved VM temporary: nil = {ENV, 1}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 0}
		c[(#c + 1)] = {}
		R[4] = CLOSURE(PROTO[0], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 7
	end
	-- [7] OP_107 (2, 4, 2) consumes=1
	do
		R[2] = R[2](UNPACKREG(R, 3, 4))
		-- fallthrough -> 8
	end
	-- [8] OP_104 (1, 0, 2) consumes=1
	do
		R[1][R[0]] = R[2]
		-- fallthrough -> 9
	end
	-- [9] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 10
	end
end

local function proto_root_48_3_4_0(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_354 (1, 0, 0) consumes=4
	do
		R[1] = ENV[0]
		R[2] = ENV[1]
		R[3] = R[0]
		R[1](UNPACKREG(R, 2, 3))
		-- RETURN
		-- fallthrough -> 5
	end
	-- [5] OP_18 (0, 1, 0) consumes=10
	do
		R[0] = R[1][0]
		for d = (I_1.B + 1), I_1.C, 1 do
		end
		R[I_1.A] = R[I_1.B]
		R[I_2.A](UNPACKREG(R, (I_2.A + 1), I_2.B))
		R[I_3.A] = ENV[I_3.B]
		R[I_4.A] = R[I_4.B][I_4.C]
		R[I_5.A] = UP[I_5.B]
		R[I_6.A] = R[I_6.B][I_6.C]
		R[I_7.A] = R[I_7.B]
		R[I_8.A] = R[I_8.A](R[(I_8.A + 1)])
		R[I_9.A][I_9.B] = R[I_9.C]
		-- fallthrough -> 15
	end
end

local function proto_root_48_4(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_124 (2, "Instance", nil) consumes=7
	do
		R[2] = UP["Instance"]
		R[2] = R[2]["new"]
		R[3] = "TextButton"
		R[2] = R[2](R[3])
		R[3] = UP["UDim2"]
		R[3] = R[3]["new"]
		R[4] = 0.8
		-- fallthrough -> 8
	end
	-- [8] OP_72 (5, 0, nil) consumes=7
	do
		R[5] = 0
		R[6] = 0.13
		R[7] = 0
		R[3] = R[3](UNPACKREG(R, 4, 7))
		R[2]["Size"] = R[3]
		R[3] = UP["UDim2"]
		R[3] = R[3]["new"]
		-- fallthrough -> 15
	end
	-- [15] OP_16 (4, 0.1, nil) consumes=2
	do
		R[4] = 0.1
		R[5] = 0
		-- fallthrough -> 17
	end
	-- [17] OP_350 (6, 1, 0) consumes=1
	do
		R[6] = R[1]
		-- fallthrough -> 18
	end
	-- [18] OP_249 (7, 0, nil) consumes=1
	do
		R[7] = 0
		-- fallthrough -> 19
	end
	-- [19] OP_107 (3, 7, 2) consumes=1
	do
		R[3] = R[3](UNPACKREG(R, 4, 7))
		-- fallthrough -> 20
	end
	-- [20] OP_30 (2, "Position", 3) consumes=1
	do
		R[2]["Position"] = R[3]
		-- fallthrough -> 21
	end
	-- [21] OP_345 (2, "Text", 0) consumes=7
	do
		R[2]["Text"] = R[0]
		R[3] = UP["Color3"]
		R[3] = R[3]["fromRGB"]
		R[4] = 255
		R[5] = 215
		R[6] = 0
		R[3] = R[3](UNPACKREG(R, 4, 6))
		-- fallthrough -> 28
	end
	-- [28] OP_345 (2, "BackgroundColor3", 3) consumes=7
	do
		R[2]["BackgroundColor3"] = R[3]
		R[3] = UP["Color3"]
		R[3] = R[3]["new"]
		R[4] = 0
		R[5] = 0
		R[6] = 0
		R[3] = R[3](UNPACKREG(R, 4, 6))
		-- fallthrough -> 35
	end
	-- [35] OP_30 (2, "TextColor3", 3) consumes=1
	do
		R[2]["TextColor3"] = R[3]
		-- fallthrough -> 36
	end
	-- [36] OP_246 (3, "Enum", nil) consumes=1
	do
		R[3] = UP["Enum"]
		-- fallthrough -> 37
	end
	-- [37] OP_250 (3, 3, "Font") consumes=7
	do
		R[3] = R[3]["Font"]
		R[3] = R[3]["SourceSansBold"]
		R[2]["Font"] = R[3]
		R[2]["TextSize"] = 14
		R[3] = ENV[0]
		R[2]["Parent"] = R[3]
		R[3] = UP["Instance"]
		-- fallthrough -> 44
	end
	-- [44] OP_248 (3, 3, "new") consumes=7
	do
		R[3] = R[3]["new"]
		R[4] = "UICorner"
		R[3] = R[3](R[4])
		R[4] = UP["UDim"]
		R[4] = R[4]["new"]
		R[5] = 0.2
		R[6] = 0
		-- fallthrough -> 51
	end
	-- [51] OP_157 (4, 6, 2) consumes=7
	do
		R[4] = R[4](UNPACKREG(R, 5, 6))
		R[3]["CornerRadius"] = R[4]
		R[3]["Parent"] = R[2]
		R[4] = UP["Instance"]
		R[4] = R[4]["new"]
		R[5] = "UIGradient"
		R[4] = R[4](R[5])
		-- fallthrough -> 58
	end
	-- [58] OP_182 (5, "ColorSequence", nil) consumes=8
	do
		R[5] = UP["ColorSequence"]
		R[5] = R[5]["new"]
		R[6] = {}
		R[7] = UP["ColorSequenceKeypoint"]
		R[7] = R[7]["new"]
		R[8] = 0
		R[9] = UP["Color3"]
		R[9] = R[9]["fromRGB"]
		-- fallthrough -> 66
	end
	-- [66] OP_16 (10, 255, nil) consumes=2
	do
		R[10] = 255
		R[11] = 255
		-- fallthrough -> 68
	end
	-- [68] OP_74 (12, 150, nil) consumes=8
	do
		R[12] = 150
		R[7] = R[7](UNPACKREG(R, 8, 8))
		R[8] = UP["ColorSequenceKeypoint"]
		R[8] = R[8]["new"]
		R[9] = 1
		R[10] = UP["Color3"]
		R[10] = R[10]["fromRGB"]
		-- fallthrough -> 76
	end
	-- [76] OP_16 (11, 255, nil) consumes=2
	do
		R[11] = 255
		R[12] = 50
		-- fallthrough -> 78
	end
	-- [78] OP_249 (13, 0, nil) consumes=1
	do
		R[13] = 0
		-- fallthrough -> 79
	end
	-- [79] OP_271 (10, 13, 0) consumes=1
	do
		for l = 10, ((d + 10) - 1), 1 do
			R[l] = PACK(R[10](UNPACKREG(R, 11, 13)))[1]
		end
		-- fallthrough -> 80
	end
	-- [80] OP_7 (8, 0, 0) consumes=1
	do
		for d = 8, ((l + 8) - 1), 1 do
			R[d] = PACK(R[8](UNPACKREG(R, 9, b)))[1]
		end
		-- fallthrough -> 81
	end
	-- [81] OP_337 (6, 0, 1) consumes=1
	do
		for d = 7, b, 1 do
			S.kUqtKEKt(R[6], R[d])
		end
		-- fallthrough -> 82
	end
	-- [82] OP_202 (5, 2, 2) consumes=1
	do
		R[5] = R[5](R[6])
		-- fallthrough -> 83
	end
	-- [83] OP_17 (4, "Color", 5) consumes=4
	do
		R[4]["Color"] = R[5]
		R[4]["Rotation"] = 90
		R[4]["Parent"] = R[2]
		-- RETURN R[2]
		-- fallthrough -> 87
	end
	-- [87] OP_14 (0, 1, 0) consumes=5
	do
		R[0] = R[1][0]
		R[I_1.A] = UP[I_1.B]
		R[I_2.A] = R[I_2.B][I_2.C]
		R[I_3.A] = R[I_3.B][I_3.C]
		if R[I_4.A] == R[I_4.C] then
		else
			pc = I_4.B
		end
		-- fallthrough -> 92
	end
end

local function proto_root_48_5(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_327 (0, "game", nil) consumes=5
	do
		R[0] = UP["game"]
		R[1] = R[0]
		R[0] = R[0]["GetService"]
		R[2] = "Players"
		R[0] = R[0](UNPACKREG(R, 1, 2))
		R[0] = R[0]["LocalPlayer"]
		-- fallthrough -> 6
	end
	-- [6] OP_148 (1, 0, "Character") consumes=1
	do
		R[1] = R[0]["Character"]
		-- fallthrough -> 7
	end
	-- [7] OP_84 (1, 9, 0) consumes=1
	do
		if R[1] then
		else
			pc = 9
		end
		-- fallthrough -> 8
	end
	-- [8] OP_93 (0, 9, nil) consumes=1
	do
		pc = 9
		pc = 10
		-- fallthrough -> 9
	end
	-- [9] OP_93 (0, 12, nil) consumes=1
	do
		pc = 12
		pc = 13
		-- fallthrough -> 10
	end
	-- [10] OP_148 (1, 0, "CharacterAdded") consumes=1
	do
		R[1] = R[0]["CharacterAdded"]
		-- fallthrough -> 11
	end
	-- [11] OP_270 (1, 1, "Wait") consumes=1
	do
		R[2] = R[1]
		R[1] = R[1]["Wait"]
		-- fallthrough -> 12
	end
	-- [12] OP_202 (1, 2, 2) consumes=1
	do
		R[1] = R[1](R[2])
		-- fallthrough -> 13
	end
	-- [13] OP_270 (2, 1, "WaitForChild") consumes=1
	do
		R[3] = R[1]
		R[2] = R[1]["WaitForChild"]
		-- fallthrough -> 14
	end
	-- [14] OP_249 (4, "Humanoid", nil) consumes=1
	do
		R[4] = "Humanoid"
		-- fallthrough -> 15
	end
	-- [15] OP_107 (2, 4, 2) consumes=1
	do
		R[2] = R[2](UNPACKREG(R, 3, 4))
		-- fallthrough -> 16
	end
	-- [16] OP_270 (3, 1, "WaitForChild") consumes=1
	do
		R[4] = R[1]
		R[3] = R[1]["WaitForChild"]
		-- fallthrough -> 17
	end
	-- [17] OP_249 (5, "HumanoidRootPart", nil) consumes=1
	do
		R[5] = "HumanoidRootPart"
		-- fallthrough -> 18
	end
	-- [18] OP_107 (3, 5, 2) consumes=1
	do
		R[3] = R[3](UNPACKREG(R, 4, 5))
		-- fallthrough -> 19
	end
	-- [19] OP_206 (4, 0, 0) consumes=5
	do
		R[4] = ENV[0]
		R[4] = not R[4]
		ENV[0] = R[4]
		R[4] = ENV[0]
		if not R[4] then
		else
			pc = 25
		end
		-- fallthrough -> 24
	end
	-- [24] OP_93 (0, 25, nil) consumes=1
	do
		pc = 25
		pc = 26
		-- fallthrough -> 25
	end
	-- [25] OP_93 (0, 66, nil) consumes=1
	do
		pc = 66
		pc = 67
		-- fallthrough -> 26
	end
	-- [26] OP_85 (2, "Sit", true) consumes=1
	do
		R[2]["Sit"] = true
		-- fallthrough -> 27
	end
	-- [27] OP_174 (4, 2, "SetStateEnabled") consumes=7
	do
		R[5] = R[2]
		R[4] = R[2]["SetStateEnabled"]
		R[6] = UP["Enum"]
		R[6] = R[6]["HumanoidStateType"]
		R[6] = R[6]["Seated"]
		R[7] = false
		R[4](UNPACKREG(R, 5, 7))
		R[5] = R[2]
		R[4] = R[2]["SetStateEnabled"]
		-- fallthrough -> 34
	end
	-- [34] OP_246 (6, "Enum", nil) consumes=1
	do
		R[6] = UP["Enum"]
		-- fallthrough -> 35
	end
	-- [35] OP_247 (6, 6, "HumanoidStateType") consumes=7
	do
		R[6] = R[6]["HumanoidStateType"]
		R[6] = R[6]["Physics"]
		R[7] = false
		R[4](UNPACKREG(R, 5, 7))
		R[4] = UP["game"]
		R[5] = R[4]
		R[4] = R[4]["GetService"]
		R[6] = "RunService"
		-- fallthrough -> 42
	end
	-- [42] OP_107 (4, 6, 2) consumes=1
	do
		R[4] = R[4](UNPACKREG(R, 5, 6))
		-- fallthrough -> 43
	end
	-- [43] OP_304 (4, 4, "Heartbeat") consumes=2
	do
		R[4] = R[4]["Heartbeat"]
		R[5] = R[4]
		R[4] = R[4]["Connect"]
		-- fallthrough -> 45
	end
	-- [45] OP_73 (6, 1, 2) consumes=3
	do
		-- unresolved VM temporary: nil = {R, 2}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 3}
		c[(#c + 1)] = {}
		R[6] = CLOSURE(PROTO[1], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 48
	end
	-- [48] OP_107 (4, 6, 2) consumes=1
	do
		R[4] = R[4](UNPACKREG(R, 5, 6))
		-- fallthrough -> 49
	end
	-- [49] OP_58 (4, 1, 0) consumes=1
	do
		ENV[1] = R[4]
		-- fallthrough -> 50
	end
	-- [50] OP_207 (4, 2, 0) consumes=1
	do
		R[4] = ENV[2]
		-- fallthrough -> 51
	end
	-- [51] OP_348 (4, "Text", "إيقاف المضاد") consumes=7
	do
		R[4]["Text"] = "إيقاف المضاد"
		R[4] = ENV[2]
		R[5] = UP["Color3"]
		R[5] = R[5]["fromRGB"]
		R[6] = 255
		R[7] = 0
		R[8] = 0
		-- fallthrough -> 58
	end
	-- [58] OP_107 (5, 8, 2) consumes=1
	do
		R[5] = R[5](UNPACKREG(R, 6, 8))
		-- fallthrough -> 59
	end
	-- [59] OP_30 (4, "BackgroundColor3", 5) consumes=1
	do
		R[4]["BackgroundColor3"] = R[5]
		-- fallthrough -> 60
	end
	-- [60] OP_304 (4, 0, "CharacterAdded") consumes=2
	do
		R[4] = R[0]["CharacterAdded"]
		R[5] = R[4]
		R[4] = R[4]["Connect"]
		-- fallthrough -> 62
	end
	-- [62] OP_73 (6, 0, 2) consumes=3
	do
		-- unresolved VM temporary: nil = {ENV, 0}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {ENV, 1}
		c[(#c + 1)] = {}
		R[6] = CLOSURE(PROTO[0], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 65
	end
	-- [65] OP_262 (4, 6, 1) consumes=1
	do
		R[4](UNPACKREG(R, 5, 6))
		-- fallthrough -> 66
	end
	-- [66] OP_93 (0, 97, nil) consumes=1
	do
		pc = 97
		pc = 98
		-- fallthrough -> 67
	end
	-- [67] OP_85 (2, "Sit", false) consumes=1
	do
		R[2]["Sit"] = false
		-- fallthrough -> 68
	end
	-- [68] OP_174 (4, 2, "SetStateEnabled") consumes=7
	do
		R[5] = R[2]
		R[4] = R[2]["SetStateEnabled"]
		R[6] = UP["Enum"]
		R[6] = R[6]["HumanoidStateType"]
		R[6] = R[6]["Seated"]
		R[7] = true
		R[4](UNPACKREG(R, 5, 7))
		R[5] = R[2]
		R[4] = R[2]["SetStateEnabled"]
		-- fallthrough -> 75
	end
	-- [75] OP_24 (6, "Enum", nil) consumes=7
	do
		R[6] = UP["Enum"]
		R[6] = R[6]["HumanoidStateType"]
		R[6] = R[6]["Physics"]
		R[7] = true
		R[4](UNPACKREG(R, 5, 7))
		R[4] = ENV[1]
		if R[4] then
		else
			pc = 87
		end
		-- fallthrough -> 82
	end
	-- [82] OP_93 (0, 87, nil) consumes=1
	do
		pc = 87
		pc = 88
		-- fallthrough -> 83
	end
	-- [83] OP_207 (4, 1, 0) consumes=1
	do
		R[4] = ENV[1]
		-- fallthrough -> 84
	end
	-- [84] OP_270 (4, 4, "Disconnect") consumes=1
	do
		R[5] = R[4]
		R[4] = R[4]["Disconnect"]
		-- fallthrough -> 85
	end
	-- [85] OP_201 (4, 2, 1) consumes=1
	do
		R[4](R[5])
		-- fallthrough -> 86
	end
	-- [86] OP_226 (4, 4, 0) consumes=1
	do
		R[4] = nil
		-- fallthrough -> 87
	end
	-- [87] OP_58 (4, 1, 0) consumes=1
	do
		ENV[1] = R[4]
		-- fallthrough -> 88
	end
	-- [88] OP_207 (4, 2, 0) consumes=1
	do
		R[4] = ENV[2]
		-- fallthrough -> 89
	end
	-- [89] OP_348 (4, "Text", "مضاد كلبش") consumes=7
	do
		R[4]["Text"] = "مضاد كلبش"
		R[4] = ENV[2]
		R[5] = UP["Color3"]
		R[5] = R[5]["fromRGB"]
		R[6] = 255
		R[7] = 215
		R[8] = 0
		-- fallthrough -> 96
	end
	-- [96] OP_107 (5, 8, 2) consumes=1
	do
		R[5] = R[5](UNPACKREG(R, 6, 8))
		-- fallthrough -> 97
	end
	-- [97] OP_30 (4, "BackgroundColor3", 5) consumes=1
	do
		R[4]["BackgroundColor3"] = R[5]
		-- fallthrough -> 98
	end
	-- [98] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 99
	end
end

local function proto_root_48_5_0(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_207 (1, 0, 0) consumes=1
	do
		R[1] = ENV[0]
		-- fallthrough -> 2
	end
	-- [2] OP_321 (1, 4, 1) consumes=1
	do
		if not R[1] then
		else
			pc = 4
		end
		-- fallthrough -> 3
	end
	-- [3] OP_93 (0, 4, nil) consumes=1
	do
		pc = 4
		pc = 5
		-- fallthrough -> 4
	end
	-- [4] OP_93 (0, 41, nil) consumes=1
	do
		pc = 41
		pc = 42
		-- fallthrough -> 5
	end
	-- [5] OP_270 (1, 0, "WaitForChild") consumes=1
	do
		R[2] = R[0]
		R[1] = R[0]["WaitForChild"]
		-- fallthrough -> 6
	end
	-- [6] OP_249 (3, "Humanoid", nil) consumes=1
	do
		R[3] = "Humanoid"
		-- fallthrough -> 7
	end
	-- [7] OP_107 (1, 3, 2) consumes=1
	do
		R[1] = R[1](UNPACKREG(R, 2, 3))
		-- fallthrough -> 8
	end
	-- [8] OP_270 (2, 0, "WaitForChild") consumes=1
	do
		R[3] = R[0]
		R[2] = R[0]["WaitForChild"]
		-- fallthrough -> 9
	end
	-- [9] OP_249 (4, "HumanoidRootPart", nil) consumes=1
	do
		R[4] = "HumanoidRootPart"
		-- fallthrough -> 10
	end
	-- [10] OP_107 (2, 4, 2) consumes=1
	do
		R[2] = R[2](UNPACKREG(R, 3, 4))
		-- fallthrough -> 11
	end
	-- [11] OP_85 (1, "Sit", true) consumes=1
	do
		R[1]["Sit"] = true
		-- fallthrough -> 12
	end
	-- [12] OP_174 (3, 1, "SetStateEnabled") consumes=7
	do
		R[4] = R[1]
		R[3] = R[1]["SetStateEnabled"]
		R[5] = UP["Enum"]
		R[5] = R[5]["HumanoidStateType"]
		R[5] = R[5]["Seated"]
		R[6] = false
		R[3](UNPACKREG(R, 4, 6))
		R[4] = R[1]
		R[3] = R[1]["SetStateEnabled"]
		-- fallthrough -> 19
	end
	-- [19] OP_24 (5, "Enum", nil) consumes=7
	do
		R[5] = UP["Enum"]
		R[5] = R[5]["HumanoidStateType"]
		R[5] = R[5]["Physics"]
		R[6] = false
		R[3](UNPACKREG(R, 4, 6))
		R[3] = ENV[1]
		if R[3] then
		else
			pc = 29
		end
		-- fallthrough -> 26
	end
	-- [26] OP_93 (0, 29, nil) consumes=1
	do
		pc = 29
		pc = 30
		-- fallthrough -> 27
	end
	-- [27] OP_207 (3, 1, 0) consumes=1
	do
		R[3] = ENV[1]
		-- fallthrough -> 28
	end
	-- [28] OP_270 (3, 3, "Disconnect") consumes=1
	do
		R[4] = R[3]
		R[3] = R[3]["Disconnect"]
		-- fallthrough -> 29
	end
	-- [29] OP_201 (3, 2, 1) consumes=1
	do
		R[3](R[4])
		-- fallthrough -> 30
	end
	-- [30] OP_246 (3, "game", nil) consumes=1
	do
		R[3] = UP["game"]
		-- fallthrough -> 31
	end
	-- [31] OP_270 (3, 3, "GetService") consumes=1
	do
		R[4] = R[3]
		R[3] = R[3]["GetService"]
		-- fallthrough -> 32
	end
	-- [32] OP_249 (5, "RunService", nil) consumes=1
	do
		R[5] = "RunService"
		-- fallthrough -> 33
	end
	-- [33] OP_107 (3, 5, 2) consumes=1
	do
		R[3] = R[3](UNPACKREG(R, 4, 5))
		-- fallthrough -> 34
	end
	-- [34] OP_304 (3, 3, "Heartbeat") consumes=2
	do
		R[3] = R[3]["Heartbeat"]
		R[4] = R[3]
		R[3] = R[3]["Connect"]
		-- fallthrough -> 36
	end
	-- [36] OP_73 (5, 0, 2) consumes=3
	do
		-- unresolved VM temporary: nil = {R, 1}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 2}
		c[(#c + 1)] = {}
		R[5] = CLOSURE(PROTO[0], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 39
	end
	-- [39] OP_107 (3, 5, 2) consumes=1
	do
		R[3] = R[3](UNPACKREG(R, 4, 5))
		-- fallthrough -> 40
	end
	-- [40] OP_58 (3, 1, 0) consumes=1
	do
		ENV[1] = R[3]
		-- fallthrough -> 41
	end
	-- [41] OP_44 (1, 0, 0) consumes=1
	do
		for d = 1, #c, 1 do
			for l = 0, #c[d], 1 do
				if (c[d][l][1] == R) and (c[d][l][2] >= 1) then
					({})[c[d][l][2]] = c[d][l][1][c[d][l][2]]
					c[d][l][1] = {}
				end
			end
		end
		-- fallthrough -> 42
	end
	-- [42] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 43
	end
end

local function proto_root_48_5_0_0(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_207 (0, 0, 0) consumes=1
	do
		R[0] = ENV[0]
		-- fallthrough -> 2
	end
	-- [2] OP_148 (0, 0, "MoveDirection") consumes=1
	do
		R[0] = R[0]["MoveDirection"]
		-- fallthrough -> 3
	end
	-- [3] OP_148 (0, 0, "Magnitude") consumes=1
	do
		R[0] = R[0]["Magnitude"]
		-- fallthrough -> 4
	end
	-- [4] OP_35 (0, 6, 0) consumes=1
	do
		if 0 < R[0] then
			pc = 6
		else
		end
		-- fallthrough -> 5
	end
	-- [5] OP_93 (0, 6, nil) consumes=1
	do
		pc = 6
		pc = 7
		-- fallthrough -> 6
	end
	-- [6] OP_93 (0, 20, nil) consumes=1
	do
		pc = 20
		pc = 21
		-- fallthrough -> 7
	end
	-- [7] OP_207 (0, 0, 0) consumes=1
	do
		R[0] = ENV[0]
		-- fallthrough -> 8
	end
	-- [8] OP_138 (0, 0, "MoveDirection") consumes=10
	do
		R[0] = R[0]["MoveDirection"]
		R[1] = ENV[1]
		R[2] = UP["Vector3"]
		R[2] = R[2]["new"]
		R[3] = R[0]["X"]
		R[3] = (R[3] * 16)
		R[4] = ENV[1]
		R[4] = R[4]["Velocity"]
		R[4] = R[4]["Y"]
		R[5] = R[0]["Z"]
		-- fallthrough -> 18
	end
	-- [18] OP_4 (5, 5, 16) consumes=1
	do
		R[5] = (R[5] * 16)
		-- fallthrough -> 19
	end
	-- [19] OP_107 (2, 5, 2) consumes=1
	do
		R[2] = R[2](UNPACKREG(R, 3, 5))
		-- fallthrough -> 20
	end
	-- [20] OP_30 (1, "Velocity", 2) consumes=1
	do
		R[1]["Velocity"] = R[2]
		-- fallthrough -> 21
	end
	-- [21] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 22
	end
end

local function proto_root_48_5_1(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_207 (0, 0, 0) consumes=1
	do
		R[0] = ENV[0]
		-- fallthrough -> 2
	end
	-- [2] OP_148 (0, 0, "MoveDirection") consumes=1
	do
		R[0] = R[0]["MoveDirection"]
		-- fallthrough -> 3
	end
	-- [3] OP_148 (0, 0, "Magnitude") consumes=1
	do
		R[0] = R[0]["Magnitude"]
		-- fallthrough -> 4
	end
	-- [4] OP_245 (0, 19, 0) consumes=1
	do
		if 0 < R[0] then
		else
			pc = 19
		end
		-- fallthrough -> 5
	end
	-- [5] OP_93 (0, 19, nil) consumes=1
	do
		pc = 19
		pc = 20
		-- fallthrough -> 6
	end
	-- [6] OP_207 (0, 0, 0) consumes=1
	do
		R[0] = ENV[0]
		-- fallthrough -> 7
	end
	-- [7] OP_138 (0, 0, "MoveDirection") consumes=10
	do
		R[0] = R[0]["MoveDirection"]
		R[1] = ENV[1]
		R[2] = UP["Vector3"]
		R[2] = R[2]["new"]
		R[3] = R[0]["X"]
		R[3] = (R[3] * 16)
		R[4] = ENV[1]
		R[4] = R[4]["Velocity"]
		R[4] = R[4]["Y"]
		R[5] = R[0]["Z"]
		-- fallthrough -> 17
	end
	-- [17] OP_4 (5, 5, 16) consumes=1
	do
		R[5] = (R[5] * 16)
		-- fallthrough -> 18
	end
	-- [18] OP_107 (2, 5, 2) consumes=1
	do
		R[2] = R[2](UNPACKREG(R, 3, 5))
		-- fallthrough -> 19
	end
	-- [19] OP_30 (1, "Velocity", 2) consumes=1
	do
		R[1]["Velocity"] = R[2]
		-- fallthrough -> 20
	end
	-- [20] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 21
	end
end

local function proto_root_49(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_303 (1, 0, "UserInputType") consumes=5
	do
		R[1] = R[0]["UserInputType"]
		R[2] = UP["Enum"]
		R[2] = R[2]["UserInputType"]
		R[2] = R[2]["MouseMovement"]
		if R[1] == R[2] then
		else
			pc = 7
		end
		-- fallthrough -> 6
	end
	-- [6] OP_93 (0, 7, nil) consumes=1
	do
		pc = 7
		pc = 8
		-- fallthrough -> 7
	end
	-- [7] OP_93 (0, 14, nil) consumes=1
	do
		pc = 14
		pc = 15
		-- fallthrough -> 8
	end
	-- [8] OP_148 (1, 0, "UserInputType") consumes=1
	do
		R[1] = R[0]["UserInputType"]
		-- fallthrough -> 9
	end
	-- [9] OP_246 (2, "Enum", nil) consumes=1
	do
		R[2] = UP["Enum"]
		-- fallthrough -> 10
	end
	-- [10] OP_148 (2, 2, "UserInputType") consumes=1
	do
		R[2] = R[2]["UserInputType"]
		-- fallthrough -> 11
	end
	-- [11] OP_148 (2, 2, "Touch") consumes=1
	do
		R[2] = R[2]["Touch"]
		-- fallthrough -> 12
	end
	-- [12] OP_358 (1, 14, 2) consumes=1
	do
		pc = (((R[1] == R[2]) and 14) or pc + 1)
		pc = (1 + (((R[1] == R[2]) and 14) or pc + 1))
		-- fallthrough -> 13
	end
	-- [13] OP_93 (0, 14, nil) consumes=1
	do
		pc = 14
		pc = 15
		-- fallthrough -> 14
	end
	-- [14] OP_93 (0, 15, nil) consumes=1
	do
		pc = 15
		pc = 16
		-- fallthrough -> 15
	end
	-- [15] OP_58 (0, 0, 0) consumes=1
	do
		ENV[0] = R[0]
		-- fallthrough -> 16
	end
	-- [16] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 17
	end
end

local function proto_root_50(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_79 (0, 0, 0) consumes=6
	do
		R[0] = ENV[0]
		R[0] = not R[0]
		ENV[0] = R[0]
		R[0] = ENV[1]
		R[1] = ENV[0]
		if not R[1] then
		else
			pc = 8
		end
		-- fallthrough -> 7
	end
	-- [7] OP_93 (0, 8, nil) consumes=1
	do
		pc = 8
		pc = 9
		-- fallthrough -> 8
	end
	-- [8] OP_93 (0, 12, nil) consumes=1
	do
		pc = 12
		pc = 13
		-- fallthrough -> 9
	end
	-- [9] OP_249 (1, "إيقاف تغيير السكن سريع", nil) consumes=1
	do
		R[1] = "إيقاف تغيير السكن سريع"
		-- fallthrough -> 10
	end
	-- [10] OP_84 (1, 12, 0) consumes=1
	do
		if R[1] then
		else
			pc = 12
		end
		-- fallthrough -> 11
	end
	-- [11] OP_93 (0, 12, nil) consumes=1
	do
		pc = 12
		pc = 13
		-- fallthrough -> 12
	end
	-- [12] OP_93 (0, 13, nil) consumes=1
	do
		pc = 13
		pc = 14
		-- fallthrough -> 13
	end
	-- [13] OP_249 (1, "تغيير السكن سريع", nil) consumes=1
	do
		R[1] = "تغيير السكن سريع"
		-- fallthrough -> 14
	end
	-- [14] OP_30 (0, "Text", 1) consumes=1
	do
		R[0]["Text"] = R[1]
		-- fallthrough -> 15
	end
	-- [15] OP_207 (0, 0, 0) consumes=1
	do
		R[0] = ENV[0]
		-- fallthrough -> 16
	end
	-- [16] OP_84 (0, 25, 0) consumes=1
	do
		if R[0] then
		else
			pc = 25
		end
		-- fallthrough -> 17
	end
	-- [17] OP_93 (0, 25, nil) consumes=1
	do
		pc = 25
		pc = 26
		-- fallthrough -> 18
	end
	-- [18] OP_246 (0, "coroutine", nil) consumes=1
	do
		R[0] = UP["coroutine"]
		-- fallthrough -> 19
	end
	-- [19] OP_148 (0, 0, "wrap") consumes=1
	do
		R[0] = R[0]["wrap"]
		-- fallthrough -> 20
	end
	-- [20] OP_73 (1, 0, 3) consumes=4
	do
		-- unresolved VM temporary: nil = {ENV, 0}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {ENV, 2}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {ENV, 3}
		c[(#c + 1)] = {}
		R[1] = CLOSURE(PROTO[0], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 24
	end
	-- [24] OP_202 (0, 2, 2) consumes=1
	do
		R[0] = R[0](R[1])
		-- fallthrough -> 25
	end
	-- [25] OP_158 (0, 1, 1) consumes=1
	do
		R[0]()
		-- fallthrough -> 26
	end
	-- [26] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 27
	end
end

local function proto_root_50_0(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_207 (0, 0, 0) consumes=1
	do
		R[0] = ENV[0]
		-- fallthrough -> 2
	end
	-- [2] OP_84 (0, 26, 0) consumes=1
	do
		if R[0] then
		else
			pc = 26
		end
		-- fallthrough -> 3
	end
	-- [3] OP_93 (0, 26, nil) consumes=1
	do
		pc = 26
		pc = 27
		-- fallthrough -> 4
	end
	-- [4] OP_246 (0, "ipairs", nil) consumes=1
	do
		R[0] = UP["ipairs"]
		-- fallthrough -> 5
	end
	-- [5] OP_207 (1, 1, 0) consumes=1
	do
		R[1] = ENV[1]
		-- fallthrough -> 6
	end
	-- [6] OP_209 (0, 2, 2) consumes=1
	do
		R[0] = R[0](R[1])
		R[1] = nil
		R[2] = nil
		-- fallthrough -> 7
	end
	-- [7] OP_93 (0, 19, nil) consumes=1
	do
		pc = 19
		pc = 20
		-- fallthrough -> 8
	end
	-- [8] OP_207 (5, 0, 0) consumes=1
	do
		R[5] = ENV[0]
		-- fallthrough -> 9
	end
	-- [9] OP_321 (5, 11, 1) consumes=1
	do
		if not R[5] then
		else
			pc = 11
		end
		-- fallthrough -> 10
	end
	-- [10] OP_93 (0, 11, nil) consumes=1
	do
		pc = 11
		pc = 12
		-- fallthrough -> 11
	end
	-- [11] OP_93 (0, 21, nil) consumes=1
	do
		pc = 21
		pc = 22
		-- fallthrough -> 12
	end
	-- [12] OP_207 (5, 2, 0) consumes=1
	do
		R[5] = ENV[2]
		-- fallthrough -> 13
	end
	-- [13] OP_19 (6, 4, 0) consumes=7
	do
		R[6] = R[4]
		R[7] = "Char"
		R[5](UNPACKREG(R, 6, 7))
		R[5] = UP["task"]
		R[5] = R[5]["wait"]
		R[6] = 0.2
		R[5](R[6])
		-- fallthrough -> 20
	end
	-- [20] OP_175 (0, 7, 2) consumes=1
	do
		R[3] = R[0](R[1], R[2])
		R[4] = nil
		if R[0](R[1], R[2]) then
			R[2] = R[0](R[1], R[2])
			pc = 7
		else
		end
		-- fallthrough -> 21
	end
	-- [21] OP_93 (0, 7, nil) consumes=1
	do
		pc = 7
		pc = 8
		-- fallthrough -> 22
	end
	-- [22] OP_246 (0, "task", nil) consumes=1
	do
		R[0] = UP["task"]
		-- fallthrough -> 23
	end
	-- [23] OP_148 (0, 0, "wait") consumes=1
	do
		R[0] = R[0]["wait"]
		-- fallthrough -> 24
	end
	-- [24] OP_249 (1, 1, nil) consumes=1
	do
		R[1] = 1
		-- fallthrough -> 25
	end
	-- [25] OP_201 (0, 2, 1) consumes=1
	do
		R[0](R[1])
		-- fallthrough -> 26
	end
	-- [26] OP_93 (0, 0, nil) consumes=1
	do
		pc = 0
		pc = 1
		-- fallthrough -> 27
	end
	-- [27] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 28
	end
end

local function proto_root_51(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_123 (1, "tostring", nil) consumes=10
	do
		R[1] = UP["tostring"]
		R[2] = R[0]
		R[1] = R[1](R[2])
		R[0] = R[1]
		R[1] = ENV[0]
		R[1] = R[1]["ChatVersion"]
		R[2] = UP["Enum"]
		R[2] = R[2]["ChatVersion"]
		R[2] = R[2]["TextChatService"]
		if R[1] ~= R[2] then
		else
			pc = 12
		end
		-- fallthrough -> 11
	end
	-- [11] OP_93 (0, 12, nil) consumes=1
	do
		pc = 12
		pc = 13
		-- fallthrough -> 12
	end
	-- [12] OP_93 (0, 19, nil) consumes=1
	do
		pc = 19
		pc = 20
		-- fallthrough -> 13
	end
	-- [13] OP_207 (1, 0, 0) consumes=1
	do
		R[1] = ENV[0]
		-- fallthrough -> 14
	end
	-- [14] OP_148 (1, 1, "TextChannels") consumes=1
	do
		R[1] = R[1]["TextChannels"]
		-- fallthrough -> 15
	end
	-- [15] OP_304 (1, 1, "RBXGeneral") consumes=2
	do
		R[1] = R[1]["RBXGeneral"]
		R[2] = R[1]
		R[1] = R[1]["SendAsync"]
		-- fallthrough -> 17
	end
	-- [17] OP_350 (3, 0, 0) consumes=1
	do
		R[3] = R[0]
		-- fallthrough -> 18
	end
	-- [18] OP_262 (1, 3, 1) consumes=1
	do
		R[1](UNPACKREG(R, 2, 3))
		-- fallthrough -> 19
	end
	-- [19] OP_93 (0, 26, nil) consumes=1
	do
		pc = 26
		pc = 27
		-- fallthrough -> 20
	end
	-- [20] OP_207 (1, 1, 0) consumes=1
	do
		R[1] = ENV[1]
		-- fallthrough -> 21
	end
	-- [21] OP_148 (1, 1, "DefaultChatSystemChatEvents") consumes=1
	do
		R[1] = R[1]["DefaultChatSystemChatEvents"]
		-- fallthrough -> 22
	end
	-- [22] OP_304 (1, 1, "SayMessageRequest") consumes=2
	do
		R[1] = R[1]["SayMessageRequest"]
		R[2] = R[1]
		R[1] = R[1]["FireServer"]
		-- fallthrough -> 24
	end
	-- [24] OP_350 (3, 0, 0) consumes=1
	do
		R[3] = R[0]
		-- fallthrough -> 25
	end
	-- [25] OP_249 (4, "All", nil) consumes=1
	do
		R[4] = "All"
		-- fallthrough -> 26
	end
	-- [26] OP_262 (1, 4, 1) consumes=1
	do
		R[1](UNPACKREG(R, 2, 4))
		-- fallthrough -> 27
	end
	-- [27] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 28
	end
end

local function proto_root_52(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_58 (1, 0, 0) consumes=1
	do
		ENV[0] = R[1]
		-- fallthrough -> 2
	end
	-- [2] OP_344 (1, 0, 0) consumes=1
	do
		R[1] = {}
		-- fallthrough -> 3
	end
	-- [3] OP_137 (2, 0, 0) consumes=1
	do
		R[2] = #R[0]
		-- fallthrough -> 4
	end
	-- [4] OP_245 (4, 6, 2) consumes=1
	do
		if 4 < R[2] then
		else
			pc = 6
		end
		-- fallthrough -> 5
	end
	-- [5] OP_93 (0, 6, nil) consumes=1
	do
		pc = 6
		pc = 7
		-- fallthrough -> 6
	end
	-- [6] OP_93 (0, 7, nil) consumes=1
	do
		pc = 7
		pc = 8
		-- fallthrough -> 7
	end
	-- [7] OP_329 (2, 0, 0) consumes=1
	do
		R[2] = false
		-- fallthrough -> 8
	end
	-- [8] OP_268 (2, 1, 0) consumes=1
	do
		R[2] = true
		-- fallthrough -> 9
	end
	-- [9] OP_246 (3, "pairs", nil) consumes=1
	do
		R[3] = UP["pairs"]
		-- fallthrough -> 10
	end
	-- [10] OP_246 (4, "game", nil) consumes=1
	do
		R[4] = UP["game"]
		-- fallthrough -> 11
	end
	-- [11] OP_304 (4, 4, "Players") consumes=2
	do
		R[4] = R[4]["Players"]
		R[5] = R[4]
		R[4] = R[4]["GetPlayers"]
		-- fallthrough -> 13
	end
	-- [13] OP_125 (4, 5, 0) consumes=1
	do
		for d = 4, ((l + 4) - 1), 1 do
			R[d] = PACK(R[4](R[5]))[1]
		end
		-- fallthrough -> 14
	end
	-- [14] OP_36 (3, 0, 5) consumes=1
	do
		R[3] = R[3](UNPACKREG(R, 4, b))
		R[4] = nil
		R[5] = nil
		-- fallthrough -> 15
	end
	-- [15] OP_93 (0, 74, nil) consumes=1
	do
		pc = 74
		pc = 75
		-- fallthrough -> 16
	end
	-- [16] OP_84 (2, 42, 0) consumes=1
	do
		if R[2] then
		else
			pc = 42
		end
		-- fallthrough -> 17
	end
	-- [17] OP_93 (0, 42, nil) consumes=1
	do
		pc = 42
		pc = 43
		-- fallthrough -> 18
	end
	-- [18] OP_148 (8, 7, "Name") consumes=1
	do
		R[8] = R[7]["Name"]
		-- fallthrough -> 19
	end
	-- [19] OP_270 (8, 8, "lower") consumes=1
	do
		R[9] = R[8]
		R[8] = R[8]["lower"]
		-- fallthrough -> 20
	end
	-- [20] OP_202 (8, 2, 2) consumes=1
	do
		R[8] = R[8](R[9])
		-- fallthrough -> 21
	end
	-- [21] OP_270 (9, 0, "lower") consumes=1
	do
		R[10] = R[0]
		R[9] = R[0]["lower"]
		-- fallthrough -> 22
	end
	-- [22] OP_202 (9, 2, 2) consumes=1
	do
		R[9] = R[9](R[10])
		-- fallthrough -> 23
	end
	-- [23] OP_255 (8, 25, 9) consumes=1
	do
		if R[8] == R[9] then
		else
			pc = 25
		end
		-- fallthrough -> 24
	end
	-- [24] OP_93 (0, 25, nil) consumes=1
	do
		pc = 25
		pc = 26
		-- fallthrough -> 25
	end
	-- [25] OP_93 (0, 36, nil) consumes=1
	do
		pc = 36
		pc = 37
		-- fallthrough -> 26
	end
	-- [26] OP_148 (8, 7, "DisplayName") consumes=1
	do
		R[8] = R[7]["DisplayName"]
		-- fallthrough -> 27
	end
	-- [27] OP_84 (8, 74, 0) consumes=1
	do
		if R[8] then
		else
			pc = 74
		end
		-- fallthrough -> 28
	end
	-- [28] OP_93 (0, 74, nil) consumes=1
	do
		pc = 74
		pc = 75
		-- fallthrough -> 29
	end
	-- [29] OP_148 (8, 7, "DisplayName") consumes=1
	do
		R[8] = R[7]["DisplayName"]
		-- fallthrough -> 30
	end
	-- [30] OP_270 (8, 8, "lower") consumes=1
	do
		R[9] = R[8]
		R[8] = R[8]["lower"]
		-- fallthrough -> 31
	end
	-- [31] OP_202 (8, 2, 2) consumes=1
	do
		R[8] = R[8](R[9])
		-- fallthrough -> 32
	end
	-- [32] OP_270 (9, 0, "lower") consumes=1
	do
		R[10] = R[0]
		R[9] = R[0]["lower"]
		-- fallthrough -> 33
	end
	-- [33] OP_202 (9, 2, 2) consumes=1
	do
		R[9] = R[9](R[10])
		-- fallthrough -> 34
	end
	-- [34] OP_358 (8, 36, 9) consumes=1
	do
		pc = (((R[8] == R[9]) and 36) or pc + 1)
		pc = (1 + (((R[8] == R[9]) and 36) or pc + 1))
		-- fallthrough -> 35
	end
	-- [35] OP_93 (0, 36, nil) consumes=1
	do
		pc = 36
		pc = 37
		-- fallthrough -> 36
	end
	-- [36] OP_93 (0, 74, nil) consumes=1
	do
		pc = 74
		pc = 75
		-- fallthrough -> 37
	end
	-- [37] OP_246 (8, "table", nil) consumes=1
	do
		R[8] = UP["table"]
		-- fallthrough -> 38
	end
	-- [38] OP_272 (8, 8, "insert") consumes=5
	do
		R[8] = R[8]["insert"]
		R[9] = R[1]
		R[10] = R[7]
		R[8](UNPACKREG(R, 9, 10))
		pc = 74
		pc = 75
		-- fallthrough -> 43
	end
	-- [43] OP_148 (8, 7, "Name") consumes=1
	do
		R[8] = R[7]["Name"]
		-- fallthrough -> 44
	end
	-- [44] OP_172 (8, 8, "lower") consumes=7
	do
		R[9] = R[8]
		R[8] = R[8]["lower"]
		R[8] = R[8](R[9])
		R[9] = R[8]
		R[8] = R[8]["find"]
		R[11] = R[0]
		R[10] = R[0]["lower"]
		R[10] = R[10](R[11])
		R[11] = 1
		R[12] = true
		-- fallthrough -> 51
	end
	-- [51] OP_107 (8, 12, 2) consumes=1
	do
		R[8] = R[8](UNPACKREG(R, 9, 12))
		-- fallthrough -> 52
	end
	-- [52] OP_84 (8, 54, 0) consumes=1
	do
		if R[8] then
		else
			pc = 54
		end
		-- fallthrough -> 53
	end
	-- [53] OP_93 (0, 54, nil) consumes=1
	do
		pc = 54
		pc = 55
		-- fallthrough -> 54
	end
	-- [54] OP_93 (0, 69, nil) consumes=1
	do
		pc = 69
		pc = 70
		-- fallthrough -> 55
	end
	-- [55] OP_148 (8, 7, "DisplayName") consumes=1
	do
		R[8] = R[7]["DisplayName"]
		-- fallthrough -> 56
	end
	-- [56] OP_321 (8, 58, 1) consumes=1
	do
		if not R[8] then
		else
			pc = 58
		end
		-- fallthrough -> 57
	end
	-- [57] OP_93 (0, 58, nil) consumes=1
	do
		pc = 58
		pc = 59
		-- fallthrough -> 58
	end
	-- [58] OP_93 (0, 74, nil) consumes=1
	do
		pc = 74
		pc = 75
		-- fallthrough -> 59
	end
	-- [59] OP_148 (8, 7, "DisplayName") consumes=1
	do
		R[8] = R[7]["DisplayName"]
		-- fallthrough -> 60
	end
	-- [60] OP_172 (8, 8, "lower") consumes=7
	do
		R[9] = R[8]
		R[8] = R[8]["lower"]
		R[8] = R[8](R[9])
		R[9] = R[8]
		R[8] = R[8]["find"]
		R[11] = R[0]
		R[10] = R[0]["lower"]
		R[10] = R[10](R[11])
		R[11] = 1
		R[12] = true
		-- fallthrough -> 67
	end
	-- [67] OP_107 (8, 12, 2) consumes=1
	do
		R[8] = R[8](UNPACKREG(R, 9, 12))
		-- fallthrough -> 68
	end
	-- [68] OP_84 (8, 74, 0) consumes=1
	do
		if R[8] then
		else
			pc = 74
		end
		-- fallthrough -> 69
	end
	-- [69] OP_93 (0, 74, nil) consumes=1
	do
		pc = 74
		pc = 75
		-- fallthrough -> 70
	end
	-- [70] OP_246 (8, "table", nil) consumes=1
	do
		R[8] = UP["table"]
		-- fallthrough -> 71
	end
	-- [71] OP_148 (8, 8, "insert") consumes=1
	do
		R[8] = R[8]["insert"]
		-- fallthrough -> 72
	end
	-- [72] OP_350 (9, 1, 0) consumes=1
	do
		R[9] = R[1]
		-- fallthrough -> 73
	end
	-- [73] OP_350 (10, 7, 0) consumes=1
	do
		R[10] = R[7]
		-- fallthrough -> 74
	end
	-- [74] OP_262 (8, 10, 1) consumes=1
	do
		R[8](UNPACKREG(R, 9, 10))
		-- fallthrough -> 75
	end
	-- [75] OP_175 (3, 15, 2) consumes=1
	do
		R[6] = R[3](R[4], R[5])
		R[7] = nil
		if R[3](R[4], R[5]) then
			R[5] = R[3](R[4], R[5])
			pc = 15
		else
		end
		-- fallthrough -> 76
	end
	-- [76] OP_93 (0, 15, nil) consumes=1
	do
		pc = 15
		pc = 16
		-- fallthrough -> 77
	end
	-- [77] OP_137 (3, 1, 0) consumes=1
	do
		R[3] = #R[1]
		-- fallthrough -> 78
	end
	-- [78] OP_231 (3, 136, 1) consumes=1
	do
		if R[3] == 1 then
		else
			pc = 136
		end
		-- fallthrough -> 79
	end
	-- [79] OP_93 (0, 136, nil) consumes=1
	do
		pc = 136
		pc = 137
		-- fallthrough -> 80
	end
	-- [80] OP_148 (3, 1, 1) consumes=1
	do
		R[3] = R[1][1]
		-- fallthrough -> 81
	end
	-- [81] OP_58 (3, 0, 0) consumes=1
	do
		ENV[0] = R[3]
		-- fallthrough -> 82
	end
	-- [82] OP_207 (3, 1, 0) consumes=1
	do
		R[3] = ENV[1]
		-- fallthrough -> 83
	end
	-- [83] OP_249 (4, "https://www.roblox.com/headshot-thumbnail/image?userId=", nil) consumes=1
	do
		R[4] = "https://www.roblox.com/headshot-thumbnail/image?userId="
		-- fallthrough -> 84
	end
	-- [84] OP_207 (5, 0, 0) consumes=1
	do
		R[5] = ENV[0]
		-- fallthrough -> 85
	end
	-- [85] OP_148 (5, 5, "UserId") consumes=1
	do
		R[5] = R[5]["UserId"]
		-- fallthrough -> 86
	end
	-- [86] OP_249 (6, "&width=420&height=420&format=png", nil) consumes=1
	do
		R[6] = "&width=420&height=420&format=png"
		-- fallthrough -> 87
	end
	-- [87] OP_224 (4, 4, 6) consumes=1
	do
		R[4] = ((R[4] .. R[5]) .. R[6])
		-- fallthrough -> 88
	end
	-- [88] OP_30 (3, "Image", 4) consumes=1
	do
		R[3]["Image"] = R[4]
		-- fallthrough -> 89
	end
	-- [89] OP_207 (3, 2, 0) consumes=1
	do
		R[3] = ENV[2]
		-- fallthrough -> 90
	end
	-- [90] OP_249 (4, "اسم: ", nil) consumes=1
	do
		R[4] = "اسم: "
		-- fallthrough -> 91
	end
	-- [91] OP_207 (5, 0, 0) consumes=1
	do
		R[5] = ENV[0]
		-- fallthrough -> 92
	end
	-- [92] OP_133 (5, 5, "Name") consumes=10
	do
		R[5] = R[5]["Name"]
		R[6] = "\n"
		R[4] = ((R[4] .. R[5]) .. R[6])
		R[3]["Text"] = R[4]
		R[3] = ENV[2]
		R[4] = ENV[2]
		R[4] = R[4]["Text"]
		R[5] = "اللقب: "
		R[6] = ENV[0]
		R[6] = R[6]["DisplayName"]
		-- fallthrough -> 102
	end
	-- [102] OP_321 (6, 104, 1) consumes=1
	do
		if not R[6] then
		else
			pc = 104
		end
		-- fallthrough -> 103
	end
	-- [103] OP_93 (0, 104, nil) consumes=1
	do
		pc = 104
		pc = 105
		-- fallthrough -> 104
	end
	-- [104] OP_249 (6, "بدون لقب", nil) consumes=1
	do
		R[6] = "بدون لقب"
		-- fallthrough -> 105
	end
	-- [105] OP_249 (7, "\n", nil) consumes=1
	do
		R[7] = "\n"
		-- fallthrough -> 106
	end
	-- [106] OP_359 (4, 4, 7) consumes=8
	do
		R[4] = (((R[4] .. R[5]) .. R[6]) .. R[7])
		R[3]["Text"] = R[4]
		R[3] = ENV[2]
		R[4] = ENV[2]
		R[4] = R[4]["Text"]
		R[5] = "عمر الحساب: "
		R[6] = ENV[0]
		R[6] = R[6]["AccountAge"]
		-- fallthrough -> 114
	end
	-- [114] OP_41 (7, " يوم\n", nil) consumes=7
	do
		R[7] = " يوم\n"
		R[4] = (((R[4] .. R[5]) .. R[6]) .. R[7])
		R[3]["Text"] = R[4]
		R[3] = UP["pairs"]
		R[4] = ENV[0]
		R[4] = R[4]["Backpack"]
		R[5] = R[4]
		R[4] = R[4]["GetChildren"]
		-- fallthrough -> 121
	end
	-- [121] OP_125 (4, 5, 0) consumes=1
	do
		for d = 4, ((l + 4) - 1), 1 do
			R[d] = PACK(R[4](R[5]))[1]
		end
		-- fallthrough -> 122
	end
	-- [122] OP_36 (3, 0, 5) consumes=1
	do
		R[3] = R[3](UNPACKREG(R, 4, b))
		R[4] = nil
		R[5] = nil
		-- fallthrough -> 123
	end
	-- [123] OP_93 (0, 131, nil) consumes=1
	do
		pc = 131
		pc = 132
		-- fallthrough -> 124
	end
	-- [124] OP_207 (8, 2, 0) consumes=1
	do
		R[8] = ENV[2]
		-- fallthrough -> 125
	end
	-- [125] OP_207 (9, 2, 0) consumes=1
	do
		R[9] = ENV[2]
		-- fallthrough -> 126
	end
	-- [126] OP_148 (9, 9, "Text") consumes=1
	do
		R[9] = R[9]["Text"]
		-- fallthrough -> 127
	end
	-- [127] OP_249 (10, "- ", nil) consumes=1
	do
		R[10] = "- "
		-- fallthrough -> 128
	end
	-- [128] OP_148 (11, 7, "Name") consumes=1
	do
		R[11] = R[7]["Name"]
		-- fallthrough -> 129
	end
	-- [129] OP_249 (12, "\n", nil) consumes=1
	do
		R[12] = "\n"
		-- fallthrough -> 130
	end
	-- [130] OP_224 (9, 9, 12) consumes=1
	do
		R[9] = (((R[9] .. R[10]) .. R[11]) .. R[12])
		-- fallthrough -> 131
	end
	-- [131] OP_30 (8, "Text", 9) consumes=1
	do
		R[8]["Text"] = R[9]
		-- fallthrough -> 132
	end
	-- [132] OP_175 (3, 123, 2) consumes=1
	do
		R[6] = R[3](R[4], R[5])
		R[7] = nil
		if R[3](R[4], R[5]) then
			R[5] = R[3](R[4], R[5])
			pc = 123
		else
		end
		-- fallthrough -> 133
	end
	-- [133] OP_93 (0, 123, nil) consumes=1
	do
		pc = 123
		pc = 124
		-- fallthrough -> 134
	end
	-- [134] OP_207 (3, 3, 0) consumes=1
	do
		R[3] = ENV[3]
		-- fallthrough -> 135
	end
	-- [135] OP_85 (3, "Visible", true) consumes=1
	do
		R[3]["Visible"] = true
		-- fallthrough -> 136
	end
	-- [136] OP_93 (0, 153, nil) consumes=1
	do
		pc = 153
		pc = 154
		-- fallthrough -> 137
	end
	-- [137] OP_137 (3, 1, 0) consumes=1
	do
		R[3] = #R[1]
		-- fallthrough -> 138
	end
	-- [138] OP_35 (1, 140, 3) consumes=1
	do
		if 1 < R[3] then
			pc = 140
		else
		end
		-- fallthrough -> 139
	end
	-- [139] OP_93 (0, 140, nil) consumes=1
	do
		pc = 140
		pc = 141
		-- fallthrough -> 140
	end
	-- [140] OP_93 (0, 147, nil) consumes=1
	do
		pc = 147
		pc = 148
		-- fallthrough -> 141
	end
	-- [141] OP_207 (3, 1, 0) consumes=1
	do
		R[3] = ENV[1]
		-- fallthrough -> 142
	end
	-- [142] OP_37 (3, "Image", "") consumes=6
	do
		R[3]["Image"] = ""
		R[3] = ENV[2]
		R[3]["Text"] =
			"⚠️ يوجد أكثر من لاعب بنفس الاسم!\n الرجاء إدخال اسم الاعب كاملا."
		R[3] = ENV[3]
		R[3]["Visible"] = true
		pc = 153
		pc = 154
		-- fallthrough -> 148
	end
	-- [148] OP_207 (3, 1, 0) consumes=1
	do
		R[3] = ENV[1]
		-- fallthrough -> 149
	end
	-- [149] OP_67 (3, "Image", "") consumes=5
	do
		R[3]["Image"] = ""
		R[3] = ENV[2]
		R[3]["Text"] = "لم يتم العثور على لاعب"
		R[3] = ENV[3]
		R[3]["Visible"] = false
		-- fallthrough -> 154
	end
	-- [154] OP_207 (3, 0, 0) consumes=1
	do
		R[3] = ENV[0]
		-- fallthrough -> 155
	end
	-- [155] OP_47 (3, 2, 0) consumes=1
	do
		-- RETURN R[3]
		-- fallthrough -> 156
	end
	-- [156] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 157
	end
end

local function proto_root_53(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_16 (1, "u{000D}", nil) consumes=2
	do
		R[1] = "u{000D}"
		R[2] = "㉿_1st_㉿ℭ§¹"
		-- fallthrough -> 3
	end
	-- [3] OP_350 (3, 1, 0) consumes=1
	do
		R[3] = R[1]
		-- fallthrough -> 4
	end
	-- [4] OP_224 (2, 2, 3) consumes=1
	do
		R[2] = (R[2] .. R[3])
		-- fallthrough -> 5
	end
	-- [5] OP_16 (3, 1, nil) consumes=2
	do
		R[3] = 1
		R[4] = 70
		-- fallthrough -> 7
	end
	-- [7] OP_249 (5, 1, nil) consumes=1
	do
		R[5] = 1
		-- fallthrough -> 8
	end
	-- [8] OP_179 (3, 13, nil) consumes=1
	do
		if R[5] > 0 then
			if R[3] > R[4] then
				pc = 13
			else
				R[6] = R[3]
			end
		elseif R[3] < R[4] then
			pc = 13
		else
			R[6] = R[3]
		end
		-- fallthrough -> 9
	end
	-- [9] OP_350 (7, 2, 0) consumes=1
	do
		R[7] = R[2]
		-- fallthrough -> 10
	end
	-- [10] OP_249 (8, "", nil) consumes=1
	do
		R[8] = ""
		-- fallthrough -> 11
	end
	-- [11] OP_350 (9, 1, 0) consumes=1
	do
		R[9] = R[1]
		-- fallthrough -> 12
	end
	-- [12] OP_224 (2, 7, 9) consumes=1
	do
		R[2] = ((R[7] .. R[8]) .. R[9])
		-- fallthrough -> 13
	end
	-- [13] OP_308 (3, 8, nil) consumes=1
	do
		R[3] = (R[3] + R[5])
		if R[5] > 0 then
			if (R[3] + R[5]) <= R[4] then
				pc = 8
				R[6] = (R[3] + R[5])
			end
		elseif (R[3] + R[5]) >= R[4] then
			pc = 8
			R[6] = (R[3] + R[5])
		end
		-- fallthrough -> 14
	end
	-- [14] OP_350 (3, 2, 0) consumes=1
	do
		R[3] = R[2]
		-- fallthrough -> 15
	end
	-- [15] OP_350 (4, 0, 0) consumes=1
	do
		R[4] = R[0]
		-- fallthrough -> 16
	end
	-- [16] OP_224 (2, 3, 4) consumes=1
	do
		R[2] = (R[3] .. R[4])
		-- fallthrough -> 17
	end
	-- [17] OP_207 (3, 0, 0) consumes=1
	do
		R[3] = ENV[0]
		-- fallthrough -> 18
	end
	-- [18] OP_350 (4, 2, 0) consumes=1
	do
		R[4] = R[2]
		-- fallthrough -> 19
	end
	-- [19] OP_201 (3, 2, 1) consumes=1
	do
		R[3](R[4])
		-- fallthrough -> 20
	end
	-- [20] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 21
	end
end

local function proto_root_54(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_207 (0, 0, 0) consumes=1
	do
		R[0] = ENV[0]
		-- fallthrough -> 2
	end
	-- [2] OP_321 (0, 4, 1) consumes=1
	do
		if not R[0] then
		else
			pc = 4
		end
		-- fallthrough -> 3
	end
	-- [3] OP_93 (0, 4, nil) consumes=1
	do
		pc = 4
		pc = 5
		-- fallthrough -> 4
	end
	-- [4] OP_93 (0, 30, nil) consumes=1
	do
		pc = 30
		pc = 31
		-- fallthrough -> 5
	end
	-- [5] OP_226 (0, 0, 0) consumes=1
	do
		R[0] = nil
		-- fallthrough -> 6
	end
	-- [6] OP_246 (1, "math", nil) consumes=1
	do
		R[1] = UP["math"]
		-- fallthrough -> 7
	end
	-- [7] OP_316 (1, 1, "random") consumes=8
	do
		R[1] = R[1]["random"]
		R[2] = 1
		R[3] = ENV[1]
		R[3] = #R[3]
		R[1] = R[1](UNPACKREG(R, 2, 3))
		R[0] = R[1]
		R[1] = ENV[2]
		if R[0] == R[1] then
		else
			pc = 16
		end
		-- fallthrough -> 15
	end
	-- [15] OP_93 (0, 16, nil) consumes=1
	do
		pc = 16
		pc = 17
		-- fallthrough -> 16
	end
	-- [16] OP_93 (0, 5, nil) consumes=1
	do
		pc = 5
		pc = 6
		-- fallthrough -> 17
	end
	-- [17] OP_58 (0, 2, 0) consumes=1
	do
		ENV[2] = R[0]
		-- fallthrough -> 18
	end
	-- [18] OP_207 (1, 1, 0) consumes=1
	do
		R[1] = ENV[1]
		-- fallthrough -> 19
	end
	-- [19] OP_222 (1, 1, 0) consumes=1
	do
		R[1] = R[1][R[0]]
		-- fallthrough -> 20
	end
	-- [20] OP_249 (2, "/e .char ", nil) consumes=1
	do
		R[2] = "/e .char "
		-- fallthrough -> 21
	end
	-- [21] OP_207 (3, 0, 0) consumes=1
	do
		R[3] = ENV[0]
		-- fallthrough -> 22
	end
	-- [22] OP_148 (3, 3, "Name") consumes=1
	do
		R[3] = R[3]["Name"]
		-- fallthrough -> 23
	end
	-- [23] OP_249 (4, " ", nil) consumes=1
	do
		R[4] = " "
		-- fallthrough -> 24
	end
	-- [24] OP_350 (5, 1, 0) consumes=1
	do
		R[5] = R[1]
		-- fallthrough -> 25
	end
	-- [25] OP_224 (2, 2, 5) consumes=1
	do
		R[2] = (((R[2] .. R[3]) .. R[4]) .. R[5])
		-- fallthrough -> 26
	end
	-- [26] OP_246 (3, "pcall", nil) consumes=1
	do
		R[3] = UP["pcall"]
		-- fallthrough -> 27
	end
	-- [27] OP_73 (4, 0, 1) consumes=2
	do
		-- unresolved VM temporary: nil = {R, 2}
		c[(#c + 1)] = {}
		R[4] = CLOSURE(PROTO[0], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 29
	end
	-- [29] OP_202 (3, 2, 2) consumes=1
	do
		R[3] = R[3](R[4])
		-- fallthrough -> 30
	end
	-- [30] OP_44 (0, 0, 0) consumes=1
	do
		for d = 1, #c, 1 do
			for l = 0, #c[d], 1 do
				if (c[d][l][1] == R) and (c[d][l][2] >= 0) then
					({})[c[d][l][2]] = c[d][l][1][c[d][l][2]]
					c[d][l][1] = {}
				end
			end
		end
		-- fallthrough -> 31
	end
	-- [31] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 32
	end
end

local function proto_root_54_0(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_100 (0, "game", nil) consumes=7
	do
		R[0] = UP["game"]
		R[1] = R[0]
		R[0] = R[0]["GetService"]
		R[2] = "Players"
		R[0] = R[0](UNPACKREG(R, 1, 2))
		R[1] = R[0]
		R[0] = R[0]["Chat"]
		R[2] = ENV[0]
		R[0](UNPACKREG(R, 1, 2))
		-- fallthrough -> 8
	end
	-- [8] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 9
	end
end

local function proto_root_55(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_207 (0, 0, 0) consumes=1
	do
		R[0] = ENV[0]
		-- fallthrough -> 2
	end
	-- [2] OP_249 (1, "/e ABC", nil) consumes=1
	do
		R[1] = "/e ABC"
		-- fallthrough -> 3
	end
	-- [3] OP_201 (0, 2, 1) consumes=1
	do
		R[0](R[1])
		-- fallthrough -> 4
	end
	-- [4] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 5
	end
end

local function proto_root_56(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_16 (0, 1, nil) consumes=2
	do
		R[0] = 1
		R[1] = 1
		-- fallthrough -> 3
	end
	-- [3] OP_207 (2, 0, 0) consumes=1
	do
		R[2] = ENV[0]
		-- fallthrough -> 4
	end
	-- [4] OP_321 (2, 6, 1) consumes=1
	do
		if not R[2] then
		else
			pc = 6
		end
		-- fallthrough -> 5
	end
	-- [5] OP_93 (0, 6, nil) consumes=1
	do
		pc = 6
		pc = 7
		-- fallthrough -> 6
	end
	-- [6] OP_93 (0, 36, nil) consumes=1
	do
		pc = 36
		pc = 37
		-- fallthrough -> 7
	end
	-- [7] OP_207 (2, 1, 0) consumes=1
	do
		R[2] = ENV[1]
		-- fallthrough -> 8
	end
	-- [8] OP_222 (2, 2, 0) consumes=1
	do
		R[2] = R[2][R[0]]
		-- fallthrough -> 9
	end
	-- [9] OP_207 (3, 2, 0) consumes=1
	do
		R[3] = ENV[2]
		-- fallthrough -> 10
	end
	-- [10] OP_195 (3, 3, 1) consumes=7
	do
		R[3] = R[3][R[1]]
		R[4] = {}
		R[4][1] = R[3]
		R[4][2] = R[2]
		R[5] = UP["game"]
		R[6] = R[5]
		R[5] = R[5]["GetService"]
		R[7] = "ReplicatedStorage"
		-- fallthrough -> 17
	end
	-- [17] OP_107 (5, 7, 2) consumes=1
	do
		R[5] = R[5](UNPACKREG(R, 6, 7))
		-- fallthrough -> 18
	end
	-- [18] OP_148 (5, 5, "PrivateCommands") consumes=1
	do
		R[5] = R[5]["PrivateCommands"]
		-- fallthrough -> 19
	end
	-- [19] OP_304 (5, 5, "Title") consumes=2
	do
		R[5] = R[5]["Title"]
		R[6] = R[5]
		R[5] = R[5]["FireServer"]
		-- fallthrough -> 21
	end
	-- [21] OP_98 (7, "unpack", nil) consumes=10
	do
		R[7] = UP["unpack"]
		R[8] = R[4]
		R[5](UNPACKREG(R, 6, 6))
		R[5] = ENV[1]
		R[5] = #R[5]
		R[5] = (R[0] % R[5])
		R[0] = (R[5] + 1)
		R[5] = ENV[2]
		R[5] = #R[5]
		-- fallthrough -> 31
	end
	-- [31] OP_232 (5, 1, 5) consumes=1
	do
		R[5] = (R[1] % R[5])
		-- fallthrough -> 32
	end
	-- [32] OP_32 (1, 5, 1) consumes=5
	do
		R[1] = (R[5] + 1)
		R[5] = UP["wait"]
		R[6] = 0
		R[5](R[6])
		pc = 2
		pc = 3
		-- fallthrough -> 37
	end
	-- [37] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 38
	end
end

local function proto_root_57(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_180 (0, 0, 0) consumes=6
	do
		R[0] = ENV[0]
		R[0] = not R[0]
		ENV[0] = R[0]
		R[0] = ENV[1]
		R[1] = ENV[0]
		if R[1] then
		else
			pc = 10
		end
		-- fallthrough -> 7
	end
	-- [7] OP_93 (0, 10, nil) consumes=1
	do
		pc = 10
		pc = 11
		-- fallthrough -> 8
	end
	-- [8] OP_249 (1, "إيقاف", nil) consumes=1
	do
		R[1] = "إيقاف"
		-- fallthrough -> 9
	end
	-- [9] OP_321 (1, 11, 1) consumes=1
	do
		if not R[1] then
		else
			pc = 11
		end
		-- fallthrough -> 10
	end
	-- [10] OP_93 (0, 11, nil) consumes=1
	do
		pc = 11
		pc = 12
		-- fallthrough -> 11
	end
	-- [11] OP_249 (1, "تشغيل", nil) consumes=1
	do
		R[1] = "تشغيل"
		-- fallthrough -> 12
	end
	-- [12] OP_30 (0, "Text", 1) consumes=1
	do
		R[0]["Text"] = R[1]
		-- fallthrough -> 13
	end
	-- [13] OP_207 (0, 0, 0) consumes=1
	do
		R[0] = ENV[0]
		-- fallthrough -> 14
	end
	-- [14] OP_321 (0, 16, 1) consumes=1
	do
		if not R[0] then
		else
			pc = 16
		end
		-- fallthrough -> 15
	end
	-- [15] OP_93 (0, 16, nil) consumes=1
	do
		pc = 16
		pc = 17
		-- fallthrough -> 16
	end
	-- [16] OP_93 (0, 18, nil) consumes=1
	do
		pc = 18
		pc = 19
		-- fallthrough -> 17
	end
	-- [17] OP_207 (0, 2, 0) consumes=1
	do
		R[0] = ENV[2]
		-- fallthrough -> 18
	end
	-- [18] OP_158 (0, 1, 1) consumes=1
	do
		R[0]()
		-- fallthrough -> 19
	end
	-- [19] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 20
	end
end

local function proto_root_58(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_207 (0, 0, 0) consumes=1
	do
		R[0] = ENV[0]
		-- fallthrough -> 2
	end
	-- [2] OP_270 (0, 0, "Destroy") consumes=1
	do
		R[1] = R[0]
		R[0] = R[0]["Destroy"]
		-- fallthrough -> 3
	end
	-- [3] OP_201 (0, 2, 1) consumes=1
	do
		R[0](R[1])
		-- fallthrough -> 4
	end
	-- [4] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 5
	end
end

local function proto_root_59(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_12 (0, 0, 0) consumes=5
	do
		R[0] = ENV[0]
		R[0] = not R[0]
		ENV[0] = R[0]
		R[0] = ENV[0]
		if R[0] then
		else
			pc = 14
		end
		-- fallthrough -> 6
	end
	-- [6] OP_93 (0, 14, nil) consumes=1
	do
		pc = 14
		pc = 15
		-- fallthrough -> 7
	end
	-- [7] OP_207 (0, 1, 0) consumes=1
	do
		R[0] = ENV[1]
		-- fallthrough -> 8
	end
	-- [8] OP_95 (1, 2, 0) consumes=6
	do
		R[1] = ENV[2]
		R[0]["Size"] = R[1]
		R[0] = ENV[3]
		R[0]["Visible"] = false
		R[0] = ENV[4]
		R[0]["Visible"] = false
		-- fallthrough -> 14
	end
	-- [14] OP_93 (0, 21, nil) consumes=1
	do
		pc = 21
		pc = 22
		-- fallthrough -> 15
	end
	-- [15] OP_207 (0, 1, 0) consumes=1
	do
		R[0] = ENV[1]
		-- fallthrough -> 16
	end
	-- [16] OP_95 (1, 5, 0) consumes=6
	do
		R[1] = ENV[5]
		R[0]["Size"] = R[1]
		R[0] = ENV[3]
		R[0]["Visible"] = true
		R[0] = ENV[4]
		R[0]["Visible"] = true
		-- fallthrough -> 22
	end
	-- [22] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 23
	end
end

local function proto_root_60(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_180 (0, 0, 0) consumes=6
	do
		R[0] = ENV[0]
		R[0] = not R[0]
		ENV[0] = R[0]
		R[0] = ENV[1]
		R[1] = ENV[0]
		if R[1] then
		else
			pc = 10
		end
		-- fallthrough -> 7
	end
	-- [7] OP_93 (0, 10, nil) consumes=1
	do
		pc = 10
		pc = 11
		-- fallthrough -> 8
	end
	-- [8] OP_249 (1, "إيقاف بانج", nil) consumes=1
	do
		R[1] = "إيقاف بانج"
		-- fallthrough -> 9
	end
	-- [9] OP_321 (1, 11, 1) consumes=1
	do
		if not R[1] then
		else
			pc = 11
		end
		-- fallthrough -> 10
	end
	-- [10] OP_93 (0, 11, nil) consumes=1
	do
		pc = 11
		pc = 12
		-- fallthrough -> 11
	end
	-- [11] OP_249 (1, "بانج", nil) consumes=1
	do
		R[1] = "بانج"
		-- fallthrough -> 12
	end
	-- [12] OP_30 (0, "Text", 1) consumes=1
	do
		R[0]["Text"] = R[1]
		-- fallthrough -> 13
	end
	-- [13] OP_207 (0, 0, 0) consumes=1
	do
		R[0] = ENV[0]
		-- fallthrough -> 14
	end
	-- [14] OP_321 (0, 16, 1) consumes=1
	do
		if not R[0] then
		else
			pc = 16
		end
		-- fallthrough -> 15
	end
	-- [15] OP_93 (0, 16, nil) consumes=1
	do
		pc = 16
		pc = 17
		-- fallthrough -> 16
	end
	-- [16] OP_93 (0, 34, nil) consumes=1
	do
		pc = 34
		pc = 35
		-- fallthrough -> 17
	end
	-- [17] OP_207 (0, 2, 0) consumes=1
	do
		R[0] = ENV[2]
		-- fallthrough -> 18
	end
	-- [18] OP_84 (0, 29, 0) consumes=1
	do
		if R[0] then
		else
			pc = 29
		end
		-- fallthrough -> 19
	end
	-- [19] OP_93 (0, 29, nil) consumes=1
	do
		pc = 29
		pc = 30
		-- fallthrough -> 20
	end
	-- [20] OP_207 (0, 2, 0) consumes=1
	do
		R[0] = ENV[2]
		-- fallthrough -> 21
	end
	-- [21] OP_148 (0, 0, "Character") consumes=1
	do
		R[0] = R[0]["Character"]
		-- fallthrough -> 22
	end
	-- [22] OP_84 (0, 29, 0) consumes=1
	do
		if R[0] then
		else
			pc = 29
		end
		-- fallthrough -> 23
	end
	-- [23] OP_93 (0, 29, nil) consumes=1
	do
		pc = 29
		pc = 30
		-- fallthrough -> 24
	end
	-- [24] OP_246 (0, "coroutine", nil) consumes=1
	do
		R[0] = UP["coroutine"]
		-- fallthrough -> 25
	end
	-- [25] OP_315 (0, 0, "wrap") consumes=5
	do
		R[0] = R[0]["wrap"]
		R[1] = ENV[3]
		R[0] = R[0](R[1])
		R[0]()
		pc = 41
		pc = 42
		-- fallthrough -> 30
	end
	-- [30] OP_268 (0, 0, 0) consumes=1
	do
		R[0] = false
		-- fallthrough -> 31
	end
	-- [31] OP_58 (0, 0, 0) consumes=1
	do
		ENV[0] = R[0]
		-- fallthrough -> 32
	end
	-- [32] OP_207 (0, 1, 0) consumes=1
	do
		R[0] = ENV[1]
		-- fallthrough -> 33
	end
	-- [33] OP_85 (0, "Text", "بانج") consumes=1
	do
		R[0]["Text"] = "بانج"
		-- fallthrough -> 34
	end
	-- [34] OP_93 (0, 41, nil) consumes=1
	do
		pc = 41
		pc = 42
		-- fallthrough -> 35
	end
	-- [35] OP_207 (0, 4, 0) consumes=1
	do
		R[0] = ENV[4]
		-- fallthrough -> 36
	end
	-- [36] OP_321 (0, 38, 1) consumes=1
	do
		if not R[0] then
		else
			pc = 38
		end
		-- fallthrough -> 37
	end
	-- [37] OP_93 (0, 38, nil) consumes=1
	do
		pc = 38
		pc = 39
		-- fallthrough -> 38
	end
	-- [38] OP_93 (0, 41, nil) consumes=1
	do
		pc = 41
		pc = 42
		-- fallthrough -> 39
	end
	-- [39] OP_207 (0, 4, 0) consumes=1
	do
		R[0] = ENV[4]
		-- fallthrough -> 40
	end
	-- [40] OP_270 (0, 0, "Stop") consumes=1
	do
		R[1] = R[0]
		R[0] = R[0]["Stop"]
		-- fallthrough -> 41
	end
	-- [41] OP_201 (0, 2, 1) consumes=1
	do
		R[0](R[1])
		-- fallthrough -> 42
	end
	-- [42] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 43
	end
end

local function proto_root_61(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_122 (1, 0, "UserInputType") consumes=5
	do
		R[1] = R[0]["UserInputType"]
		R[2] = UP["Enum"]
		R[2] = R[2]["UserInputType"]
		R[2] = R[2]["MouseButton1"]
		if R[1] ~= R[2] then
		else
			pc = 13
		end
		-- fallthrough -> 6
	end
	-- [6] OP_93 (0, 13, nil) consumes=1
	do
		pc = 13
		pc = 14
		-- fallthrough -> 7
	end
	-- [7] OP_148 (1, 0, "UserInputType") consumes=1
	do
		R[1] = R[0]["UserInputType"]
		-- fallthrough -> 8
	end
	-- [8] OP_246 (2, "Enum", nil) consumes=1
	do
		R[2] = UP["Enum"]
		-- fallthrough -> 9
	end
	-- [9] OP_148 (2, 2, "UserInputType") consumes=1
	do
		R[2] = R[2]["UserInputType"]
		-- fallthrough -> 10
	end
	-- [10] OP_148 (2, 2, "Touch") consumes=1
	do
		R[2] = R[2]["Touch"]
		-- fallthrough -> 11
	end
	-- [11] OP_358 (1, 13, 2) consumes=1
	do
		pc = (((R[1] == R[2]) and 13) or pc + 1)
		pc = (1 + (((R[1] == R[2]) and 13) or pc + 1))
		-- fallthrough -> 12
	end
	-- [12] OP_93 (0, 13, nil) consumes=1
	do
		pc = 13
		pc = 14
		-- fallthrough -> 13
	end
	-- [13] OP_93 (0, 26, nil) consumes=1
	do
		pc = 26
		pc = 27
		-- fallthrough -> 14
	end
	-- [14] OP_268 (1, 1, 0) consumes=1
	do
		R[1] = true
		-- fallthrough -> 15
	end
	-- [15] OP_319 (1, 0, 0) consumes=6
	do
		ENV[0] = R[1]
		R[1] = R[0]["Position"]
		ENV[1] = R[1]
		R[1] = ENV[3]
		R[1] = R[1]["Position"]
		ENV[2] = R[1]
		-- fallthrough -> 21
	end
	-- [21] OP_304 (1, 0, "Changed") consumes=2
	do
		R[1] = R[0]["Changed"]
		R[2] = R[1]
		R[1] = R[1]["Connect"]
		-- fallthrough -> 23
	end
	-- [23] OP_73 (3, 0, 2) consumes=3
	do
		-- unresolved VM temporary: nil = {R, 0}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {ENV, 0}
		c[(#c + 1)] = {}
		R[3] = CLOSURE(PROTO[0], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 26
	end
	-- [26] OP_262 (1, 3, 1) consumes=1
	do
		R[1](UNPACKREG(R, 2, 3))
		-- fallthrough -> 27
	end
	-- [27] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 28
	end
end

local function proto_root_61_0(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_310 (0, 0, 0) consumes=6
	do
		R[0] = ENV[0]
		R[0] = R[0]["UserInputState"]
		R[1] = UP["Enum"]
		R[1] = R[1]["UserInputState"]
		R[1] = R[1]["End"]
		if R[0] == R[1] then
		else
			pc = 9
		end
		-- fallthrough -> 7
	end
	-- [7] OP_93 (0, 9, nil) consumes=1
	do
		pc = 9
		pc = 10
		-- fallthrough -> 8
	end
	-- [8] OP_268 (0, 0, 0) consumes=1
	do
		R[0] = false
		-- fallthrough -> 9
	end
	-- [9] OP_58 (0, 1, 0) consumes=1
	do
		ENV[1] = R[0]
		-- fallthrough -> 10
	end
	-- [10] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 11
	end
end

local function proto_root_62(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_180 (0, 0, 0) consumes=6
	do
		R[0] = ENV[0]
		R[0] = not R[0]
		ENV[0] = R[0]
		R[0] = ENV[1]
		R[1] = ENV[0]
		if R[1] then
		else
			pc = 10
		end
		-- fallthrough -> 7
	end
	-- [7] OP_93 (0, 10, nil) consumes=1
	do
		pc = 10
		pc = 11
		-- fallthrough -> 8
	end
	-- [8] OP_249 (1, "إيقاف إصبع", nil) consumes=1
	do
		R[1] = "إيقاف إصبع"
		-- fallthrough -> 9
	end
	-- [9] OP_321 (1, 11, 1) consumes=1
	do
		if not R[1] then
		else
			pc = 11
		end
		-- fallthrough -> 10
	end
	-- [10] OP_93 (0, 11, nil) consumes=1
	do
		pc = 11
		pc = 12
		-- fallthrough -> 11
	end
	-- [11] OP_249 (1, "إصبع", nil) consumes=1
	do
		R[1] = "إصبع"
		-- fallthrough -> 12
	end
	-- [12] OP_30 (0, "Text", 1) consumes=1
	do
		R[0]["Text"] = R[1]
		-- fallthrough -> 13
	end
	-- [13] OP_207 (0, 0, 0) consumes=1
	do
		R[0] = ENV[0]
		-- fallthrough -> 14
	end
	-- [14] OP_321 (0, 16, 1) consumes=1
	do
		if not R[0] then
		else
			pc = 16
		end
		-- fallthrough -> 15
	end
	-- [15] OP_93 (0, 16, nil) consumes=1
	do
		pc = 16
		pc = 17
		-- fallthrough -> 16
	end
	-- [16] OP_93 (0, 23, nil) consumes=1
	do
		pc = 23
		pc = 24
		-- fallthrough -> 17
	end
	-- [17] OP_207 (0, 2, 0) consumes=1
	do
		R[0] = ENV[2]
		-- fallthrough -> 18
	end
	-- [18] OP_207 (1, 3, 0) consumes=1
	do
		R[1] = ENV[3]
		-- fallthrough -> 19
	end
	-- [19] OP_207 (2, 4, 0) consumes=1
	do
		R[2] = ENV[4]
		-- fallthrough -> 20
	end
	-- [20] OP_249 (3, 1, nil) consumes=1
	do
		R[3] = 1
		-- fallthrough -> 21
	end
	-- [21] OP_73 (4, 0, 1) consumes=2
	do
		-- unresolved VM temporary: nil = {ENV, 0}
		c[(#c + 1)] = {}
		R[4] = CLOSURE(PROTO[0], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 23
	end
	-- [23] OP_262 (0, 4, 1) consumes=1
	do
		R[0](UNPACKREG(R, 1, 4))
		-- fallthrough -> 24
	end
	-- [24] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 25
	end
end

local function proto_root_62_0(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_207 (0, 0, 0) consumes=1
	do
		R[0] = ENV[0]
		-- fallthrough -> 2
	end
	-- [2] OP_47 (0, 2, 0) consumes=1
	do
		-- RETURN R[0]
		-- fallthrough -> 3
	end
	-- [3] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 4
	end
end

local function proto_root_63(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_207 (0, 0, 0) consumes=1
	do
		R[0] = ENV[0]
		-- fallthrough -> 2
	end
	-- [2] OP_148 (0, 0, "Text") consumes=1
	do
		R[0] = R[0]["Text"]
		-- fallthrough -> 3
	end
	-- [3] OP_330 (0, 10, "") consumes=1
	do
		if R[0] ~= "" then
		else
			pc = 10
		end
		-- fallthrough -> 4
	end
	-- [4] OP_93 (0, 10, nil) consumes=1
	do
		pc = 10
		pc = 11
		-- fallthrough -> 5
	end
	-- [5] OP_207 (0, 1, 0) consumes=1
	do
		R[0] = ENV[1]
		-- fallthrough -> 6
	end
	-- [6] OP_207 (1, 0, 0) consumes=1
	do
		R[1] = ENV[0]
		-- fallthrough -> 7
	end
	-- [7] OP_148 (1, 1, "Text") consumes=1
	do
		R[1] = R[1]["Text"]
		-- fallthrough -> 8
	end
	-- [8] OP_201 (0, 2, 1) consumes=1
	do
		R[0](R[1])
		-- fallthrough -> 9
	end
	-- [9] OP_207 (0, 0, 0) consumes=1
	do
		R[0] = ENV[0]
		-- fallthrough -> 10
	end
	-- [10] OP_85 (0, "Text", "") consumes=1
	do
		R[0]["Text"] = ""
		-- fallthrough -> 11
	end
	-- [11] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 12
	end
end

local function proto_root_64(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_48 (0, "setclipboard", nil) consumes=7
	do
		R[0] = UP["setclipboard"]
		R[1] = "https://discord.gg/Znugc2zwvu"
		R[0](R[1])
		R[0] = ENV[0]
		R[0]["Text"] = "تم النسخ!"
		R[0] = UP["wait"]
		R[1] = 1
		-- fallthrough -> 8
	end
	-- [8] OP_201 (0, 2, 1) consumes=1
	do
		R[0](R[1])
		-- fallthrough -> 9
	end
	-- [9] OP_207 (0, 0, 0) consumes=1
	do
		R[0] = ENV[0]
		-- fallthrough -> 10
	end
	-- [10] OP_85 (0, "Text", "نسخ رابط الديسكورد") consumes=1
	do
		R[0]["Text"] = "نسخ رابط الديسكورد"
		-- fallthrough -> 11
	end
	-- [11] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 12
	end
end

local function proto_root_65(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_207 (0, 0, 0) consumes=1
	do
		R[0] = ENV[0]
		-- fallthrough -> 2
	end
	-- [2] OP_84 (0, 7, 0) consumes=1
	do
		if R[0] then
		else
			pc = 7
		end
		-- fallthrough -> 3
	end
	-- [3] OP_93 (0, 7, nil) consumes=1
	do
		pc = 7
		pc = 8
		-- fallthrough -> 4
	end
	-- [4] OP_246 (0, "pcall", nil) consumes=1
	do
		R[0] = UP["pcall"]
		-- fallthrough -> 5
	end
	-- [5] OP_207 (1, 1, 0) consumes=1
	do
		R[1] = ENV[1]
		-- fallthrough -> 6
	end
	-- [6] OP_207 (2, 0, 0) consumes=1
	do
		R[2] = ENV[0]
		-- fallthrough -> 7
	end
	-- [7] OP_262 (0, 2, 1) consumes=1
	do
		R[0](UNPACKREG(R, 1, 2))
		-- fallthrough -> 8
	end
	-- [8] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 9
	end
end

local function proto_root_66(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_206 (0, 0, 0) consumes=5
	do
		R[0] = ENV[0]
		R[0] = not R[0]
		ENV[0] = R[0]
		R[0] = ENV[0]
		if not R[0] then
		else
			pc = 7
		end
		-- fallthrough -> 6
	end
	-- [6] OP_93 (0, 7, nil) consumes=1
	do
		pc = 7
		pc = 8
		-- fallthrough -> 7
	end
	-- [7] OP_93 (0, 80, nil) consumes=1
	do
		pc = 80
		pc = 81
		-- fallthrough -> 8
	end
	-- [8] OP_207 (0, 1, 0) consumes=1
	do
		R[0] = ENV[1]
		-- fallthrough -> 9
	end
	-- [9] OP_252 (1, "Color3", nil) consumes=7
	do
		R[1] = UP["Color3"]
		R[1] = R[1]["fromRGB"]
		R[2] = 100
		R[3] = 255
		R[4] = 100
		R[1] = R[1](UNPACKREG(R, 2, 4))
		R[0]["BackgroundColor3"] = R[1]
		-- fallthrough -> 16
	end
	-- [16] OP_207 (0, 1, 0) consumes=1
	do
		R[0] = ENV[1]
		-- fallthrough -> 17
	end
	-- [17] OP_85 (0, "Text", "اختر لاعباً...") consumes=1
	do
		R[0]["Text"] = "اختر لاعباً..."
		-- fallthrough -> 18
	end
	-- [18] OP_278 (0, "Instance", nil) consumes=7
	do
		R[0] = UP["Instance"]
		R[0] = R[0]["new"]
		R[1] = "Part"
		R[0] = R[0](R[1])
		R[0]["Name"] = "FingerRay"
		R[1] = UP["Vector3"]
		R[1] = R[1]["new"]
		-- fallthrough -> 25
	end
	-- [25] OP_16 (2, 0.1, nil) consumes=2
	do
		R[2] = 0.1
		R[3] = 0.1
		-- fallthrough -> 27
	end
	-- [27] OP_205 (4, 100, nil) consumes=7
	do
		R[4] = 100
		R[1] = R[1](UNPACKREG(R, 2, 4))
		R[0]["Size"] = R[1]
		R[0]["Transparency"] = 0.7
		R[1] = UP["Color3"]
		R[1] = R[1]["fromRGB"]
		R[2] = 255
		-- fallthrough -> 34
	end
	-- [34] OP_264 (3, 255, nil) consumes=7
	do
		R[3] = 255
		R[4] = 0
		R[1] = R[1](UNPACKREG(R, 2, 4))
		R[0]["Color"] = R[1]
		R[0]["Anchored"] = true
		R[0]["CanCollide"] = false
		R[1] = UP["workspace"]
		-- fallthrough -> 41
	end
	-- [41] OP_30 (0, "Parent", 1) consumes=1
	do
		R[0]["Parent"] = R[1]
		-- fallthrough -> 42
	end
	-- [42] OP_226 (1, 1, 0) consumes=1
	do
		R[1] = nil
		-- fallthrough -> 43
	end
	-- [43] OP_246 (2, "game", nil) consumes=1
	do
		R[2] = UP["game"]
		-- fallthrough -> 44
	end
	-- [44] OP_270 (2, 2, "GetService") consumes=1
	do
		R[3] = R[2]
		R[2] = R[2]["GetService"]
		-- fallthrough -> 45
	end
	-- [45] OP_249 (4, "UserInputService", nil) consumes=1
	do
		R[4] = "UserInputService"
		-- fallthrough -> 46
	end
	-- [46] OP_107 (2, 4, 2) consumes=1
	do
		R[2] = R[2](UNPACKREG(R, 3, 4))
		-- fallthrough -> 47
	end
	-- [47] OP_304 (2, 2, "InputBegan") consumes=2
	do
		R[2] = R[2]["InputBegan"]
		R[3] = R[2]
		R[2] = R[2]["Connect"]
		-- fallthrough -> 49
	end
	-- [49] OP_73 (4, 2, 6) consumes=7
	do
		-- unresolved VM temporary: nil = {ENV, 2}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {ENV, 3}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {ENV, 0}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {ENV, 1}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 1}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 0}
		c[(#c + 1)] = {}
		R[4] = CLOSURE(PROTO[2], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 56
	end
	-- [56] OP_302 (2, 4, 2) consumes=7
	do
		R[2] = R[2](UNPACKREG(R, 3, 4))
		R[1] = R[2]
		R[2] = nil
		R[3] = UP["game"]
		R[4] = R[3]
		R[3] = R[3]["GetService"]
		R[5] = "RunService"
		R[3] = R[3](UNPACKREG(R, 4, 5))
		-- fallthrough -> 63
	end
	-- [63] OP_304 (3, 3, "RenderStepped") consumes=2
	do
		R[3] = R[3]["RenderStepped"]
		R[4] = R[3]
		R[3] = R[3]["Connect"]
		-- fallthrough -> 65
	end
	-- [65] OP_73 (5, 0, 1) consumes=2
	do
		-- unresolved VM temporary: nil = {R, 0}
		c[(#c + 1)] = {}
		R[5] = CLOSURE(PROTO[0], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 67
	end
	-- [67] OP_107 (3, 5, 2) consumes=1
	do
		R[3] = R[3](UNPACKREG(R, 4, 5))
		-- fallthrough -> 68
	end
	-- [68] OP_350 (2, 3, 0) consumes=1
	do
		R[2] = R[3]
		-- fallthrough -> 69
	end
	-- [69] OP_207 (3, 1, 0) consumes=1
	do
		R[3] = ENV[1]
		-- fallthrough -> 70
	end
	-- [70] OP_304 (3, 3, "MouseButton1Click") consumes=2
	do
		R[3] = R[3]["MouseButton1Click"]
		R[4] = R[3]
		R[3] = R[3]["Connect"]
		-- fallthrough -> 72
	end
	-- [72] OP_73 (5, 1, 5) consumes=6
	do
		-- unresolved VM temporary: nil = {ENV, 0}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {ENV, 1}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 1}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 2}
		c[(#c + 1)] = {}
		-- unresolved VM temporary: nil = {R, 0}
		c[(#c + 1)] = {}
		R[5] = CLOSURE(PROTO[1], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 78
	end
	-- [78] OP_262 (3, 5, 1) consumes=1
	do
		R[3](UNPACKREG(R, 4, 5))
		-- fallthrough -> 79
	end
	-- [79] OP_44 (0, 0, 0) consumes=1
	do
		for d = 1, #c, 1 do
			for l = 0, #c[d], 1 do
				if (c[d][l][1] == R) and (c[d][l][2] >= 0) then
					({})[c[d][l][2]] = c[d][l][1][c[d][l][2]]
					c[d][l][1] = {}
				end
			end
		end
		-- fallthrough -> 80
	end
	-- [80] OP_93 (0, 90, nil) consumes=1
	do
		pc = 90
		pc = 91
		-- fallthrough -> 81
	end
	-- [81] OP_207 (0, 1, 0) consumes=1
	do
		R[0] = ENV[1]
		-- fallthrough -> 82
	end
	-- [82] OP_252 (1, "Color3", nil) consumes=7
	do
		R[1] = UP["Color3"]
		R[1] = R[1]["fromRGB"]
		R[2] = 255
		R[3] = 100
		R[4] = 100
		R[1] = R[1](UNPACKREG(R, 2, 4))
		R[0]["BackgroundColor3"] = R[1]
		-- fallthrough -> 89
	end
	-- [89] OP_207 (0, 1, 0) consumes=1
	do
		R[0] = ENV[1]
		-- fallthrough -> 90
	end
	-- [90] OP_85 (0, "Text", "الإصبع") consumes=1
	do
		R[0]["Text"] = "الإصبع"
		-- fallthrough -> 91
	end
	-- [91] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 92
	end
end

local function proto_root_66_0(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_246 (0, "game", nil) consumes=1
	do
		R[0] = UP["game"]
		-- fallthrough -> 2
	end
	-- [2] OP_148 (0, 0, "Players") consumes=1
	do
		R[0] = R[0]["Players"]
		-- fallthrough -> 3
	end
	-- [3] OP_304 (0, 0, "LocalPlayer") consumes=2
	do
		R[0] = R[0]["LocalPlayer"]
		R[1] = R[0]
		R[0] = R[0]["GetMouse"]
		-- fallthrough -> 5
	end
	-- [5] OP_202 (0, 2, 2) consumes=1
	do
		R[0] = R[0](R[1])
		-- fallthrough -> 6
	end
	-- [6] OP_246 (1, "Ray", nil) consumes=1
	do
		R[1] = UP["Ray"]
		-- fallthrough -> 7
	end
	-- [7] OP_148 (1, 1, "new") consumes=1
	do
		R[1] = R[1]["new"]
		-- fallthrough -> 8
	end
	-- [8] OP_148 (2, 0, "UnitRay") consumes=1
	do
		R[2] = R[0]["UnitRay"]
		-- fallthrough -> 9
	end
	-- [9] OP_148 (2, 2, "Origin") consumes=1
	do
		R[2] = R[2]["Origin"]
		-- fallthrough -> 10
	end
	-- [10] OP_148 (3, 0, "UnitRay") consumes=1
	do
		R[3] = R[0]["UnitRay"]
		-- fallthrough -> 11
	end
	-- [11] OP_148 (3, 3, "Direction") consumes=1
	do
		R[3] = R[3]["Direction"]
		-- fallthrough -> 12
	end
	-- [12] OP_4 (3, 3, 100) consumes=1
	do
		R[3] = (R[3] * 100)
		-- fallthrough -> 13
	end
	-- [13] OP_107 (1, 3, 2) consumes=1
	do
		R[1] = R[1](UNPACKREG(R, 2, 3))
		-- fallthrough -> 14
	end
	-- [14] OP_207 (2, 0, 0) consumes=1
	do
		R[2] = ENV[0]
		-- fallthrough -> 15
	end
	-- [15] OP_84 (2, 29, 0) consumes=1
	do
		if R[2] then
		else
			pc = 29
		end
		-- fallthrough -> 16
	end
	-- [16] OP_93 (0, 29, nil) consumes=1
	do
		pc = 29
		pc = 30
		-- fallthrough -> 17
	end
	-- [17] OP_207 (2, 0, 0) consumes=1
	do
		R[2] = ENV[0]
		-- fallthrough -> 18
	end
	-- [18] OP_5 (3, "CFrame", nil) consumes=10
	do
		R[3] = UP["CFrame"]
		R[3] = R[3]["new"]
		R[4] = R[1]["Origin"]
		R[5] = R[1]["Direction"]
		R[5] = (R[5] * 50)
		R[4] = (R[4] + R[5])
		R[5] = R[1]["Origin"]
		R[6] = R[1]["Direction"]
		R[6] = (R[6] * 100)
		R[5] = (R[5] + R[6])
		-- fallthrough -> 28
	end
	-- [28] OP_107 (3, 5, 2) consumes=1
	do
		R[3] = R[3](UNPACKREG(R, 4, 5))
		-- fallthrough -> 29
	end
	-- [29] OP_30 (2, "CFrame", 3) consumes=1
	do
		R[2]["CFrame"] = R[3]
		-- fallthrough -> 30
	end
	-- [30] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 31
	end
end

local function proto_root_66_1(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_207 (0, 0, 0) consumes=1
	do
		R[0] = ENV[0]
		-- fallthrough -> 2
	end
	-- [2] OP_84 (0, 36, 0) consumes=1
	do
		if R[0] then
		else
			pc = 36
		end
		-- fallthrough -> 3
	end
	-- [3] OP_93 (0, 36, nil) consumes=1
	do
		pc = 36
		pc = 37
		-- fallthrough -> 4
	end
	-- [4] OP_268 (0, 0, 0) consumes=1
	do
		R[0] = false
		-- fallthrough -> 5
	end
	-- [5] OP_58 (0, 0, 0) consumes=1
	do
		ENV[0] = R[0]
		-- fallthrough -> 6
	end
	-- [6] OP_207 (0, 1, 0) consumes=1
	do
		R[0] = ENV[1]
		-- fallthrough -> 7
	end
	-- [7] OP_252 (1, "Color3", nil) consumes=7
	do
		R[1] = UP["Color3"]
		R[1] = R[1]["fromRGB"]
		R[2] = 255
		R[3] = 100
		R[4] = 100
		R[1] = R[1](UNPACKREG(R, 2, 4))
		R[0]["BackgroundColor3"] = R[1]
		-- fallthrough -> 14
	end
	-- [14] OP_207 (0, 1, 0) consumes=1
	do
		R[0] = ENV[1]
		-- fallthrough -> 15
	end
	-- [15] OP_85 (0, "Text", "الإصبع") consumes=1
	do
		R[0]["Text"] = "الإصبع"
		-- fallthrough -> 16
	end
	-- [16] OP_207 (0, 2, 0) consumes=1
	do
		R[0] = ENV[2]
		-- fallthrough -> 17
	end
	-- [17] OP_321 (0, 19, 1) consumes=1
	do
		if not R[0] then
		else
			pc = 19
		end
		-- fallthrough -> 18
	end
	-- [18] OP_93 (0, 19, nil) consumes=1
	do
		pc = 19
		pc = 20
		-- fallthrough -> 19
	end
	-- [19] OP_93 (0, 22, nil) consumes=1
	do
		pc = 22
		pc = 23
		-- fallthrough -> 20
	end
	-- [20] OP_207 (0, 2, 0) consumes=1
	do
		R[0] = ENV[2]
		-- fallthrough -> 21
	end
	-- [21] OP_270 (0, 0, "Disconnect") consumes=1
	do
		R[1] = R[0]
		R[0] = R[0]["Disconnect"]
		-- fallthrough -> 22
	end
	-- [22] OP_201 (0, 2, 1) consumes=1
	do
		R[0](R[1])
		-- fallthrough -> 23
	end
	-- [23] OP_207 (0, 3, 0) consumes=1
	do
		R[0] = ENV[3]
		-- fallthrough -> 24
	end
	-- [24] OP_321 (0, 26, 1) consumes=1
	do
		if not R[0] then
		else
			pc = 26
		end
		-- fallthrough -> 25
	end
	-- [25] OP_93 (0, 26, nil) consumes=1
	do
		pc = 26
		pc = 27
		-- fallthrough -> 26
	end
	-- [26] OP_93 (0, 29, nil) consumes=1
	do
		pc = 29
		pc = 30
		-- fallthrough -> 27
	end
	-- [27] OP_207 (0, 3, 0) consumes=1
	do
		R[0] = ENV[3]
		-- fallthrough -> 28
	end
	-- [28] OP_270 (0, 0, "Disconnect") consumes=1
	do
		R[1] = R[0]
		R[0] = R[0]["Disconnect"]
		-- fallthrough -> 29
	end
	-- [29] OP_201 (0, 2, 1) consumes=1
	do
		R[0](R[1])
		-- fallthrough -> 30
	end
	-- [30] OP_207 (0, 4, 0) consumes=1
	do
		R[0] = ENV[4]
		-- fallthrough -> 31
	end
	-- [31] OP_321 (0, 33, 1) consumes=1
	do
		if not R[0] then
		else
			pc = 33
		end
		-- fallthrough -> 32
	end
	-- [32] OP_93 (0, 33, nil) consumes=1
	do
		pc = 33
		pc = 34
		-- fallthrough -> 33
	end
	-- [33] OP_93 (0, 36, nil) consumes=1
	do
		pc = 36
		pc = 37
		-- fallthrough -> 34
	end
	-- [34] OP_207 (0, 4, 0) consumes=1
	do
		R[0] = ENV[4]
		-- fallthrough -> 35
	end
	-- [35] OP_270 (0, 0, "Destroy") consumes=1
	do
		R[1] = R[0]
		R[0] = R[0]["Destroy"]
		-- fallthrough -> 36
	end
	-- [36] OP_201 (0, 2, 1) consumes=1
	do
		R[0](R[1])
		-- fallthrough -> 37
	end
	-- [37] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 38
	end
end

local function proto_root_66_2(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_122 (2, 0, "UserInputType") consumes=5
	do
		R[2] = R[0]["UserInputType"]
		R[3] = UP["Enum"]
		R[3] = R[3]["UserInputType"]
		R[3] = R[3]["MouseButton1"]
		if R[2] ~= R[3] then
		else
			pc = 7
		end
		-- fallthrough -> 6
	end
	-- [6] OP_93 (0, 7, nil) consumes=1
	do
		pc = 7
		pc = 8
		-- fallthrough -> 7
	end
	-- [7] OP_93 (0, 128, nil) consumes=1
	do
		pc = 128
		pc = 129
		-- fallthrough -> 8
	end
	-- [8] OP_321 (1, 128, 1) consumes=1
	do
		if not R[1] then
		else
			pc = 128
		end
		-- fallthrough -> 9
	end
	-- [9] OP_93 (0, 128, nil) consumes=1
	do
		pc = 128
		pc = 129
		-- fallthrough -> 10
	end
	-- [10] OP_246 (2, "game", nil) consumes=1
	do
		R[2] = UP["game"]
		-- fallthrough -> 11
	end
	-- [11] OP_148 (2, 2, "Players") consumes=1
	do
		R[2] = R[2]["Players"]
		-- fallthrough -> 12
	end
	-- [12] OP_304 (2, 2, "LocalPlayer") consumes=2
	do
		R[2] = R[2]["LocalPlayer"]
		R[3] = R[2]
		R[2] = R[2]["GetMouse"]
		-- fallthrough -> 14
	end
	-- [14] OP_202 (2, 2, 2) consumes=1
	do
		R[2] = R[2](R[3])
		-- fallthrough -> 15
	end
	-- [15] OP_246 (3, "Ray", nil) consumes=1
	do
		R[3] = UP["Ray"]
		-- fallthrough -> 16
	end
	-- [16] OP_148 (3, 3, "new") consumes=1
	do
		R[3] = R[3]["new"]
		-- fallthrough -> 17
	end
	-- [17] OP_148 (4, 2, "UnitRay") consumes=1
	do
		R[4] = R[2]["UnitRay"]
		-- fallthrough -> 18
	end
	-- [18] OP_148 (4, 4, "Origin") consumes=1
	do
		R[4] = R[4]["Origin"]
		-- fallthrough -> 19
	end
	-- [19] OP_148 (5, 2, "UnitRay") consumes=1
	do
		R[5] = R[2]["UnitRay"]
		-- fallthrough -> 20
	end
	-- [20] OP_148 (5, 5, "Direction") consumes=1
	do
		R[5] = R[5]["Direction"]
		-- fallthrough -> 21
	end
	-- [21] OP_4 (5, 5, 1000) consumes=1
	do
		R[5] = (R[5] * 1000)
		-- fallthrough -> 22
	end
	-- [22] OP_107 (3, 5, 2) consumes=1
	do
		R[3] = R[3](UNPACKREG(R, 4, 5))
		-- fallthrough -> 23
	end
	-- [23] OP_246 (4, "RaycastParams", nil) consumes=1
	do
		R[4] = UP["RaycastParams"]
		-- fallthrough -> 24
	end
	-- [24] OP_148 (4, 4, "new") consumes=1
	do
		R[4] = R[4]["new"]
		-- fallthrough -> 25
	end
	-- [25] OP_221 (4, 1, 2) consumes=7
	do
		R[4] = R[4]()
		R[5] = {}
		R[6] = UP["game"]
		R[6] = R[6]["Players"]
		R[6] = R[6]["LocalPlayer"]
		R[6] = R[6]["Character"]
		S.kUqtKEKt(R[5], R[6])
		-- fallthrough -> 32
	end
	-- [32] OP_30 (4, "FilterDescendantsInstances", 5) consumes=1
	do
		R[4]["FilterDescendantsInstances"] = R[5]
		-- fallthrough -> 33
	end
	-- [33] OP_266 (5, "Enum", nil) consumes=10
	do
		R[5] = UP["Enum"]
		R[5] = R[5]["RaycastFilterType"]
		R[5] = R[5]["Blacklist"]
		R[4]["FilterType"] = R[5]
		R[5] = UP["workspace"]
		R[6] = R[5]
		R[5] = R[5]["Raycast"]
		R[7] = R[3]["Origin"]
		R[8] = R[3]["Direction"]
		R[8] = (R[8] * 1000)
		R[9] = R[4]
		-- fallthrough -> 43
	end
	-- [43] OP_107 (5, 9, 2) consumes=1
	do
		R[5] = R[5](UNPACKREG(R, 6, 9))
		-- fallthrough -> 44
	end
	-- [44] OP_321 (5, 46, 1) consumes=1
	do
		if not R[5] then
		else
			pc = 46
		end
		-- fallthrough -> 45
	end
	-- [45] OP_93 (0, 46, nil) consumes=1
	do
		pc = 46
		pc = 47
		-- fallthrough -> 46
	end
	-- [46] OP_93 (0, 128, nil) consumes=1
	do
		pc = 128
		pc = 129
		-- fallthrough -> 47
	end
	-- [47] OP_148 (6, 5, "Instance") consumes=1
	do
		R[6] = R[5]["Instance"]
		-- fallthrough -> 48
	end
	-- [48] OP_270 (7, 6, "FindFirstAncestorOfClass") consumes=1
	do
		R[8] = R[6]
		R[7] = R[6]["FindFirstAncestorOfClass"]
		-- fallthrough -> 49
	end
	-- [49] OP_249 (9, "Model", nil) consumes=1
	do
		R[9] = "Model"
		-- fallthrough -> 50
	end
	-- [50] OP_107 (7, 9, 2) consumes=1
	do
		R[7] = R[7](UNPACKREG(R, 8, 9))
		-- fallthrough -> 51
	end
	-- [51] OP_84 (7, 128, 0) consumes=1
	do
		if R[7] then
		else
			pc = 128
		end
		-- fallthrough -> 52
	end
	-- [52] OP_93 (0, 128, nil) consumes=1
	do
		pc = 128
		pc = 129
		-- fallthrough -> 53
	end
	-- [53] OP_246 (8, "game", nil) consumes=1
	do
		R[8] = UP["game"]
		-- fallthrough -> 54
	end
	-- [54] OP_304 (8, 8, "Players") consumes=2
	do
		R[8] = R[8]["Players"]
		R[9] = R[8]
		R[8] = R[8]["GetPlayerFromCharacter"]
		-- fallthrough -> 56
	end
	-- [56] OP_350 (10, 7, 0) consumes=1
	do
		R[10] = R[7]
		-- fallthrough -> 57
	end
	-- [57] OP_107 (8, 10, 2) consumes=1
	do
		R[8] = R[8](UNPACKREG(R, 9, 10))
		-- fallthrough -> 58
	end
	-- [58] OP_321 (8, 60, 1) consumes=1
	do
		if not R[8] then
		else
			pc = 60
		end
		-- fallthrough -> 59
	end
	-- [59] OP_93 (0, 60, nil) consumes=1
	do
		pc = 60
		pc = 61
		-- fallthrough -> 60
	end
	-- [60] OP_93 (0, 128, nil) consumes=1
	do
		pc = 128
		pc = 129
		-- fallthrough -> 61
	end
	-- [61] OP_207 (9, 0, 0) consumes=1
	do
		R[9] = ENV[0]
		-- fallthrough -> 62
	end
	-- [62] OP_249 (10, "", nil) consumes=1
	do
		R[10] = ""
		-- fallthrough -> 63
	end
	-- [63] OP_148 (11, 8, "Name") consumes=1
	do
		R[11] = R[8]["Name"]
		-- fallthrough -> 64
	end
	-- [64] OP_224 (10, 10, 11) consumes=1
	do
		R[10] = (R[10] .. R[11])
		-- fallthrough -> 65
	end
	-- [65] OP_30 (9, "Text", 10) consumes=1
	do
		R[9]["Text"] = R[10]
		-- fallthrough -> 66
	end
	-- [66] OP_207 (9, 1, 0) consumes=1
	do
		R[9] = ENV[1]
		-- fallthrough -> 67
	end
	-- [67] OP_148 (10, 8, "Name") consumes=1
	do
		R[10] = R[8]["Name"]
		-- fallthrough -> 68
	end
	-- [68] OP_201 (9, 2, 1) consumes=1
	do
		R[9](R[10])
		-- fallthrough -> 69
	end
	-- [69] OP_124 (9, "Instance", nil) consumes=7
	do
		R[9] = UP["Instance"]
		R[9] = R[9]["new"]
		R[10] = "Highlight"
		R[9] = R[9](R[10])
		R[10] = UP["Color3"]
		R[10] = R[10]["fromRGB"]
		R[11] = 255
		-- fallthrough -> 76
	end
	-- [76] OP_16 (12, 0, nil) consumes=2
	do
		R[12] = 0
		R[13] = 0
		-- fallthrough -> 78
	end
	-- [78] OP_128 (10, 13, 2) consumes=7
	do
		R[10] = R[10](UNPACKREG(R, 11, 13))
		R[9]["FillColor"] = R[10]
		R[10] = UP["Color3"]
		R[10] = R[10]["fromRGB"]
		R[11] = 255
		R[12] = 255
		R[13] = 0
		-- fallthrough -> 85
	end
	-- [85] OP_107 (10, 13, 2) consumes=1
	do
		R[10] = R[10](UNPACKREG(R, 11, 13))
		-- fallthrough -> 86
	end
	-- [86] OP_30 (9, "OutlineColor", 10) consumes=1
	do
		R[9]["OutlineColor"] = R[10]
		-- fallthrough -> 87
	end
	-- [87] OP_30 (9, "Parent", 7) consumes=1
	do
		R[9]["Parent"] = R[7]
		-- fallthrough -> 88
	end
	-- [88] OP_246 (10, "delay", nil) consumes=1
	do
		R[10] = UP["delay"]
		-- fallthrough -> 89
	end
	-- [89] OP_249 (11, 1, nil) consumes=1
	do
		R[11] = 1
		-- fallthrough -> 90
	end
	-- [90] OP_73 (12, 0, 1) consumes=2
	do
		-- unresolved VM temporary: nil = {R, 9}
		c[(#c + 1)] = {}
		R[12] = CLOSURE(PROTO[0], S.zApeeebR({}, { ... }), UP)
		-- fallthrough -> 92
	end
	-- [92] OP_261 (10, 12, 1) consumes=10
	do
		R[10](UNPACKREG(R, 11, 12))
		R[10] = UP["game"]
		R[11] = R[10]
		R[10] = R[10]["GetService"]
		R[12] = "StarterGui"
		R[10] = R[10](UNPACKREG(R, 11, 12))
		R[11] = R[10]
		R[10] = R[10]["SetCore"]
		R[12] = "SendNotification"
		R[13] = {}
		R[13]["Title"] = "تم التحديد"
		R[14] = "تم اختيار: "
		-- fallthrough -> 102
	end
	-- [102] OP_148 (15, 8, "Name") consumes=1
	do
		R[15] = R[8]["Name"]
		-- fallthrough -> 103
	end
	-- [103] OP_234 (14, 14, 15) consumes=7
	do
		R[14] = (R[14] .. R[15])
		R[13]["Text"] = R[14]
		R[13]["Duration"] = 2
		R[10](UNPACKREG(R, 11, 13))
		R[10] = false
		ENV[2] = R[10]
		R[10] = ENV[3]
		-- fallthrough -> 110
	end
	-- [110] OP_252 (11, "Color3", nil) consumes=7
	do
		R[11] = UP["Color3"]
		R[11] = R[11]["fromRGB"]
		R[12] = 255
		R[13] = 100
		R[14] = 100
		R[11] = R[11](UNPACKREG(R, 12, 14))
		R[10]["BackgroundColor3"] = R[11]
		-- fallthrough -> 117
	end
	-- [117] OP_207 (10, 3, 0) consumes=1
	do
		R[10] = ENV[3]
		-- fallthrough -> 118
	end
	-- [118] OP_85 (10, "Text", "الإصبع") consumes=1
	do
		R[10]["Text"] = "الإصبع"
		-- fallthrough -> 119
	end
	-- [119] OP_207 (10, 4, 0) consumes=1
	do
		R[10] = ENV[4]
		-- fallthrough -> 120
	end
	-- [120] OP_270 (10, 10, "Disconnect") consumes=1
	do
		R[11] = R[10]
		R[10] = R[10]["Disconnect"]
		-- fallthrough -> 121
	end
	-- [121] OP_201 (10, 2, 1) consumes=1
	do
		R[10](R[11])
		-- fallthrough -> 122
	end
	-- [122] OP_207 (10, 5, 0) consumes=1
	do
		R[10] = ENV[5]
		-- fallthrough -> 123
	end
	-- [123] OP_84 (10, 127, 0) consumes=1
	do
		if R[10] then
		else
			pc = 127
		end
		-- fallthrough -> 124
	end
	-- [124] OP_93 (0, 127, nil) consumes=1
	do
		pc = 127
		pc = 128
		-- fallthrough -> 125
	end
	-- [125] OP_207 (10, 5, 0) consumes=1
	do
		R[10] = ENV[5]
		-- fallthrough -> 126
	end
	-- [126] OP_270 (10, 10, "Destroy") consumes=1
	do
		R[11] = R[10]
		R[10] = R[10]["Destroy"]
		-- fallthrough -> 127
	end
	-- [127] OP_201 (10, 2, 1) consumes=1
	do
		R[10](R[11])
		-- fallthrough -> 128
	end
	-- [128] OP_44 (9, 0, 0) consumes=1
	do
		for d = 1, #c, 1 do
			for l = 0, #c[d], 1 do
				if (c[d][l][1] == R) and (c[d][l][2] >= 9) then
					({})[c[d][l][2]] = c[d][l][1][c[d][l][2]]
					c[d][l][1] = {}
				end
			end
		end
		-- fallthrough -> 129
	end
	-- [129] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 130
	end
end

local function proto_root_66_2_0(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_207 (0, 0, 0) consumes=1
	do
		R[0] = ENV[0]
		-- fallthrough -> 2
	end
	-- [2] OP_321 (0, 4, 1) consumes=1
	do
		if not R[0] then
		else
			pc = 4
		end
		-- fallthrough -> 3
	end
	-- [3] OP_93 (0, 4, nil) consumes=1
	do
		pc = 4
		pc = 5
		-- fallthrough -> 4
	end
	-- [4] OP_93 (0, 7, nil) consumes=1
	do
		pc = 7
		pc = 8
		-- fallthrough -> 5
	end
	-- [5] OP_207 (0, 0, 0) consumes=1
	do
		R[0] = ENV[0]
		-- fallthrough -> 6
	end
	-- [6] OP_270 (0, 0, "Destroy") consumes=1
	do
		R[1] = R[0]
		R[0] = R[0]["Destroy"]
		-- fallthrough -> 7
	end
	-- [7] OP_201 (0, 2, 1) consumes=1
	do
		R[0](R[1])
		-- fallthrough -> 8
	end
	-- [8] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 9
	end
end

local function proto_root_67(...)
	local R, UP, ENV, PROTO, S = {}, {}, {}, {}, {}
	local pc = 1
	-- [1] OP_246 (1, "pairs", nil) consumes=1
	do
		R[1] = UP["pairs"]
		-- fallthrough -> 2
	end
	-- [2] OP_207 (2, 0, 0) consumes=1
	do
		R[2] = ENV[0]
		-- fallthrough -> 3
	end
	-- [3] OP_209 (1, 2, 3) consumes=1
	do
		R[1] = R[1](R[2])
		R[2] = nil
		R[3] = nil
		-- fallthrough -> 4
	end
	-- [4] OP_93 (0, 10, nil) consumes=1
	do
		pc = 10
		pc = 11
		-- fallthrough -> 5
	end
	-- [5] OP_255 (4, 7, 0) consumes=1
	do
		if R[4] == R[0] then
		else
			pc = 7
		end
		-- fallthrough -> 6
	end
	-- [6] OP_93 (0, 7, nil) consumes=1
	do
		pc = 7
		pc = 8
		-- fallthrough -> 7
	end
	-- [7] OP_93 (0, 8, nil) consumes=1
	do
		pc = 8
		pc = 9
		-- fallthrough -> 8
	end
	-- [8] OP_329 (6, 0, 0) consumes=1
	do
		R[6] = false
		-- fallthrough -> 9
	end
	-- [9] OP_268 (6, 1, 0) consumes=1
	do
		R[6] = true
		-- fallthrough -> 10
	end
	-- [10] OP_30 (5, "Visible", 6) consumes=1
	do
		R[5]["Visible"] = R[6]
		-- fallthrough -> 11
	end
	-- [11] OP_175 (1, 4, 2) consumes=1
	do
		R[4] = R[1](R[2], R[3])
		R[5] = nil
		if R[1](R[2], R[3]) then
			R[3] = R[1](R[2], R[3])
			pc = 4
		else
		end
		-- fallthrough -> 12
	end
	-- [12] OP_93 (0, 4, nil) consumes=1
	do
		pc = 4
		pc = 5
		-- fallthrough -> 13
	end
	-- [13] OP_166 (0, 1, 0) consumes=1
	do
		-- RETURN
		-- fallthrough -> 14
	end
end
