

GS_ItemTypes = {
	["INVTYPE_RELIC"] = { ["SlotMOD"] = 0.3164, ["ItemSlot"] = 18, ["Enchantable"] = false},
	["INVTYPE_TRINKET"] = { ["SlotMOD"] = 0.5625, ["ItemSlot"] = 33, ["Enchantable"] = false },
	["INVTYPE_2HWEAPON"] = { ["SlotMOD"] = 2.000, ["ItemSlot"] = 16, ["Enchantable"] = true },
	["INVTYPE_WEAPONMAINHAND"] = { ["SlotMOD"] = 1.0000, ["ItemSlot"] = 16, ["Enchantable"] = true },
	["INVTYPE_WEAPONOFFHAND"] = { ["SlotMOD"] = 1.0000, ["ItemSlot"] = 17, ["Enchantable"] = true },
	["INVTYPE_RANGED"] = { ["SlotMOD"] = 0.3164, ["ItemSlot"] = 18, ["Enchantable"] = true },
	["INVTYPE_THROWN"] = { ["SlotMOD"] = 0.3164, ["ItemSlot"] = 18, ["Enchantable"] = false },
	["INVTYPE_RANGEDRIGHT"] = { ["SlotMOD"] = 0.3164, ["ItemSlot"] = 18, ["Enchantable"] = false },
	["INVTYPE_SHIELD"] = { ["SlotMOD"] = 1.0000, ["ItemSlot"] = 17, ["Enchantable"] = true },
	["INVTYPE_WEAPON"] = { ["SlotMOD"] = 1.0000, ["ItemSlot"] = 36, ["Enchantable"] = true },
	["INVTYPE_HOLDABLE"] = { ["SlotMOD"] = 1.0000, ["ItemSlot"] = 17, ["Enchantable"] = false },
	["INVTYPE_HEAD"] = { ["SlotMOD"] = 1.0000, ["ItemSlot"] = 1, ["Enchantable"] = true },
	["INVTYPE_NECK"] = { ["SlotMOD"] = 0.5625, ["ItemSlot"] = 2, ["Enchantable"] = false },
	["INVTYPE_SHOULDER"] = { ["SlotMOD"] = 0.7500, ["ItemSlot"] = 3, ["Enchantable"] = true },
	["INVTYPE_CHEST"] = { ["SlotMOD"] = 1.0000, ["ItemSlot"] = 5, ["Enchantable"] = true },
	["INVTYPE_ROBE"] = { ["SlotMOD"] = 1.0000, ["ItemSlot"] = 5, ["Enchantable"] = true },
	["INVTYPE_WAIST"] = { ["SlotMOD"] = 0.7500, ["ItemSlot"] = 6, ["Enchantable"] = false },
	["INVTYPE_LEGS"] = { ["SlotMOD"] = 1.0000, ["ItemSlot"] = 7, ["Enchantable"] = true },
	["INVTYPE_FEET"] = { ["SlotMOD"] = 0.75, ["ItemSlot"] = 8, ["Enchantable"] = true },
	["INVTYPE_WRIST"] = { ["SlotMOD"] = 0.5625, ["ItemSlot"] = 9, ["Enchantable"] = true },
	["INVTYPE_HAND"] = { ["SlotMOD"] = 0.7500, ["ItemSlot"] = 10, ["Enchantable"] = true },
	["INVTYPE_FINGER"] = { ["SlotMOD"] = 0.5625, ["ItemSlot"] = 31, ["Enchantable"] = false },
	["INVTYPE_CLOAK"] = { ["SlotMOD"] = 0.5625, ["ItemSlot"] = 15, ["Enchantable"] = true },
	
	--Lol Shirt
	["INVTYPE_BODY"] = { ["SlotMOD"] = 0, ["ItemSlot"] = 4, ["Enchantable"] = false },
}




GS_DefaultSettings = {
	["Player"] = 1,
	["Item"] = 1,
	["Show"] = 1,
	["Special"] = 1,
	["Compare"] = -1,
	["Level"] = -1,
	["Average"] = -1,
}


GS_Special = {
	["A"] = "Author of GearScore",
	["B"] = "TBC Edition Contributor", 
	["C"] = "TBC Testing Guild",
	["D"] = "Reserved",
	["E"] = "Reserved",
	["F"] = "Reserved",
}


GS_Rarity = {
	[0] = { Red = 0.55,	Green = 0.55, Blue = 0.55 },
	[1] = {	Red = 1.00,	Green = 1.00, Blue = 1.00 },
	[2] = {	Red = 0.12,	Green = 1.00, Blue = 0.00 },
	[3] = {	Red = 0.00,	Green = 0.50, Blue = 1.00 },
	[4] = {	Red = 0.69, Green = 0.28, Blue = 0.97 },
	[5] = { Red = 0.94,	Green = 0.09, Blue = 0.00 },
	[6] = {	Red = 1.00,	Green = 0.00, Blue = 0.00 },
	[7] = {	Red = 0.90,	Green = 0.80, Blue = 0.50 },
}

GS_Formula = {
	-- Original formulas kept for backward compatibility
	["A"] = {
		[4] = { ["A"] = 91.4500, ["B"] = 0.6500 },
		[3] = { ["A"] = 81.3750, ["B"] = 0.8125 },
		[2] = { ["A"] = 73.0000, ["B"] = 1.0000 }
	},
	["B"] = {
		[4] = { ["A"] = 26.0000, ["B"] = 1.2000 },
		[3] = { ["A"] = 0.7500, ["B"] = 1.8000 },
		[2] = { ["A"] = 8.0000, ["B"] = 2.0000 },
		[1] = { ["A"] = 0.0000, ["B"] = 2.2500 }
	},	-- TBC-specific formulas optimized for TBC itemization
	["TBC_SUNWELL"] = {
		[4] = { ["A"] = 95.0000, ["B"] = 0.3500 }, -- Phase 5: Sunwell Plateau T6.5 (ilvl 154-164)
		[3] = { ["A"] = 85.0000, ["B"] = 0.5000 },
		[2] = { ["A"] = 75.0000, ["B"] = 0.6500 }
	},
	["TBC_T6"] = {
		[4] = { ["A"] = 80.0000, ["B"] = 0.4500 }, -- Phase 3: Mount Hyjal, Black Temple T6 (ilvl 141-151)
		[3] = { ["A"] = 70.0000, ["B"] = 0.6000 },
		[2] = { ["A"] = 60.0000, ["B"] = 0.7500 }
	},
	["TBC_T5"] = {
		[4] = { ["A"] = 70.0000, ["B"] = 0.5000 }, -- Phase 2: SSC, Tempest Keep T5 + Phase 4: Zul'Aman, Badge Gear (ilvl 128-141)
		[3] = { ["A"] = 60.0000, ["B"] = 0.6500 },
		[2] = { ["A"] = 50.0000, ["B"] = 0.8000 }
	},	["TBC_T4"] = {
		[4] = { ["A"] = 55.0000, ["B"] = 0.6500 }, -- Phase 1: Karazhan, Gruul, Magtheridon T4 (ilvl 110-127)
		[3] = { ["A"] = 45.0000, ["B"] = 0.8000 },
		[2] = { ["A"] = 35.0000, ["B"] = 0.9500 }
	},
	["TBC_PRE_RAID"] = {
		[4] = { ["A"] = 45.0000, ["B"] = 0.8000 }, -- Pre-Raid: Heroics, Crafted, Reputations (ilvl 105-115)
		[3] = { ["A"] = 35.0000, ["B"] = 1.0000 },
		[2] = { ["A"] = 25.0000, ["B"] = 1.2000 }
	}
}

GS_Quality = {
	[6000] = {
		["Red"] = { ["A"] = 0.94, ["B"] = 5000, ["C"] = 0.00006, ["D"] = 1 },
		["Green"] = { ["A"] = 0.47, ["B"] = 5000, ["C"] = 0.00047, ["D"] = -1 },
		["Blue"] = { ["A"] = 0, ["B"] = 0, ["C"] = 0, ["D"] = 0 },
		["Description"] = "Legendary"
	},
	[5000] = {
		["Red"] = { ["A"] = 0.69, ["B"] = 4000, ["C"] = 0.00025, ["D"] = 1 },
		["Green"] = { ["A"] = 0.28, ["B"] = 4000, ["C"] = 0.00019, ["D"] = 1 },
		["Blue"] = { ["A"] = 0.97, ["B"] = 4000, ["C"] = 0.00096, ["D"] = -1 },
		["Description"] = "Epic"
	},
	[4000] = {
		["Red"] = { ["A"] = 0.0, ["B"] = 3000, ["C"] = 0.00069, ["D"] = 1 },
		["Green"] = { ["A"] = 0.5, ["B"] = 3000, ["C"] = 0.00022, ["D"] = -1 },
		["Blue"] = { ["A"] = 1, ["B"] = 3000, ["C"] = 0.00003, ["D"] = -1 },
		["Description"] = "Superior"
	},
	[3000] = {
		["Red"] = { ["A"] = 0.12, ["B"] = 2000, ["C"] = 0.00012, ["D"] = -1 },
		["Green"] = { ["A"] = 1, ["B"] = 2000, ["C"] = 0.00050, ["D"] = -1 },
		["Blue"] = { ["A"] = 0, ["B"] = 2000, ["C"] = 0.001, ["D"] = 1 },
		["Description"] = "Uncommon"
	},
	[2000] = {
		["Red"] = { ["A"] = 1, ["B"] = 1000, ["C"] = 0.00088, ["D"] = -1 },
		["Green"] = { ["A"] = 1, ["B"] = 000, ["C"] = 0.00000, ["D"] = 0 },
		["Blue"] = { ["A"] = 1, ["B"] = 1000, ["C"] = 0.001, ["D"] = -1 },
		["Description"] = "Common"
	},
	[1000] = {
		["Red"] = { ["A"] = 0.55, ["B"] = 0, ["C"] = 0.00045, ["D"] = 1 },
		["Green"] = { ["A"] = 0.55, ["B"] = 0, ["C"] = 0.00045, ["D"] = 1 },
		["Blue"] = { ["A"] = 0.55, ["B"] = 0, ["C"] = 0.00045, ["D"] = 1 },
		["Description"] = "Trash"
	},
}



GS_CommandList = {
	[1] = "---GearScore TBC Edition Options---",
	[2] = "/gs player -> Toggles display of scores on players.",
	[3] = "/gs item -> Toggles display of scores for items.",
	[4] = "/gs level -> Toggles iLevel information.",
	[5] = "/gs reset --> Resets GearScore's Options back to Default.",
	[6] = "/gs compare --> Toggles display of comparative info between you and your target's GearScore.",
	[7] = "Note: Optimized for TBC content on WotLK client",
}

GS_ShowSwitch = {[0] = 2,[1] = 3,[2] = 0,[3] = 1}
GS_ItemSwitch = {[0] = 3,[1] = 2,[2] = 1,[3] = 0}