-- Combined file for syntax checking GearScoreLite
-- This file combines API stubs with the actual addon code for syntax validation

-- WoW API Stubs (for syntax checking only)
function UnitName(unit) return "Player" end
function UnitClass(unit) return "WARRIOR", "WARRIOR" end
function UnitIsPlayer(unit) return true end
function GetInventoryItemLink(unit, slot) return "|cff0080ff|Hitem:12345:0:0:0:0:0:0:0:70|h[Test Item]|h|r" end
function GetItemInfo(itemLink) 
    return "Test Item", itemLink, 4, 100, 70, "Armor", "Plate", 1, "INVTYPE_CHEST", "Interface\\Icons\\INV_Chest_Plate01"
end
function GetRealmName() return "TestRealm" end
function floor(num) return math.floor(num) end
function tinsert(table, value) table.insert(table, value) end

-- Global variables and tables
_G = {}
PersonalGearScore = { SetText = function() end, SetTextColor = function() end }

-- Mock the data tables from informationLite.lua
GS_ItemTypes = {
    ["INVTYPE_CHEST"] = { ["SlotMOD"] = 1.0000, ["ItemSlot"] = 5, ["Enchantable"] = true },
    ["INVTYPE_HEAD"] = { ["SlotMOD"] = 1.0000, ["ItemSlot"] = 1, ["Enchantable"] = true },
    -- Add other item types as needed for testing
}

GS_DefaultSettings = {
    ["Player"] = 1,
    ["Item"] = 1,
    ["Show"] = 1,
    ["Detail"] = 1,
}

GS_Formula = {
    ["TBC_HIGH"] = {
        [2] = { A = 73, B = 1.8 },
        [3] = { A = 81, B = 1.3 },
        [4] = { A = 91, B = 1.0 }
    },
    ["TBC_T6"] = {
        [2] = { A = 73, B = 1.8 },
        [3] = { A = 81, B = 1.3 },
        [4] = { A = 91, B = 1.0 }
    },
    ["TBC"] = {
        [2] = { A = 73, B = 1.8 },
        [3] = { A = 81, B = 1.3 },
        [4] = { A = 91, B = 1.0 }
    },
    ["TBC_LOW"] = {
        [2] = { A = 73, B = 1.8 },
        [3] = { A = 81, B = 1.3 },
        [4] = { A = 91, B = 1.0 }
    },
    ["B"] = {
        [2] = { A = 73, B = 1.8 },
        [3] = { A = 81, B = 1.3 },
        [4] = { A = 91, B = 1.0 }
    }
}

GS_Quality = {
    [1000] = {
        Red = { A = 0.1, B = 0, C = 1, D = 1 },
        Green = { A = 0.1, B = 0, C = 1, D = 1 },
        Blue = { A = 0.1, B = 0, C = 1, D = 1 },
        Description = "Poor"
    },
    [2000] = {
        Red = { A = 0.1, B = 0, C = 1, D = 1 },
        Green = { A = 0.1, B = 0, C = 1, D = 1 },
        Blue = { A = 0.1, B = 0, C = 1, D = 1 },
        Description = "Common"
    },
    [3000] = {
        Red = { A = 0.1, B = 0, C = 1, D = 1 },
        Green = { A = 0.1, B = 0, C = 1, D = 1 },
        Blue = { A = 0.1, B = 0, C = 1, D = 1 },
        Description = "Uncommon"
    },
    [4000] = {
        Red = { A = 0.1, B = 0, C = 1, D = 1 },
        Green = { A = 0.1, B = 0, C = 1, D = 1 },
        Blue = { A = 0.1, B = 0, C = 1, D = 1 },
        Description = "Rare"
    },
    [5000] = {
        Red = { A = 0.1, B = 0, C = 1, D = 1 },
        Green = { A = 0.1, B = 0, C = 1, D = 1 },
        Blue = { A = 0.1, B = 0, C = 1, D = 1 },
        Description = "Epic"
    },
    [6000] = {
        Red = { A = 0.1, B = 0, C = 1, D = 1 },
        Green = { A = 0.1, B = 0, C = 1, D = 1 },
        Blue = { A = 0.1, B = 0, C = 1, D = 1 },
        Description = "Legendary"
    },
    [7000] = {
        Red = { A = 0.1, B = 0, C = 1, D = 1 },
        Green = { A = 0.1, B = 0, C = 1, D = 1 },
        Blue = { A = 0.1, B = 0, C = 1, D = 1 },
        Description = "Artifact"
    }
}

-- Mock saved variables
GS_Settings = GS_DefaultSettings
GS_Data = {}
GS_PlayerIsInCombat = false

-- Your actual addon code starts here:
-------------------------------------------------------------------------------
--                        GearScoreLite TBC Edition                          --
--                             Version 3x04-TBC                              --
--                      Original Authors: Mirrikat45, dyzcypul               --
--                         TBC Adaptation: Xerrion                           --
-------------------------------------------------------------------------------

function GearScore_OnEvent(GS_Nil, GS_EventName, GS_Prefix, GS_AddonMessage, GS_Whisper, GS_Sender)
	if ( GS_EventName == "PLAYER_REGEN_ENABLED" ) then GS_PlayerIsInCombat = false; return; end
	if ( GS_EventName == "PLAYER_REGEN_DISABLED" ) then GS_PlayerIsInCombat = true; return; end
	if ( GS_EventName == "PLAYER_EQUIPMENT_CHANGED" ) then
	    local MyGearScore = GearScore_GetScore(UnitName("player"), "player");
		local Red, Blue, Green = GearScore_GetQuality(MyGearScore)
    	PersonalGearScore:SetText(MyGearScore); PersonalGearScore:SetTextColor(Red, Green, Blue, 1)
  	end
	if ( GS_EventName == "ADDON_LOADED" ) then
		if ( GS_Prefix == "GearScoreLite" ) then
      		if not ( GS_Settings ) then	GS_Settings = GS_DefaultSettings end
			if not ( GS_Data ) then GS_Data = {}; end; if not ( GS_Data[GetRealmName()] ) then GS_Data[GetRealmName()] = { ["Players"] = {} }; end
  			for i, v in pairs(GS_DefaultSettings) do if not ( GS_Settings[i] ) then GS_Settings[i] = GS_DefaultSettings[i]; end; end
        end
	end
end

function GearScore_GetScore(Name, Target)
	if ( UnitIsPlayer(Target) ) then
	    local PlayerClass, PlayerEnglishClass = UnitClass(Target);
		local GearScore = 0; local PVPScore = 0; local ItemCount = 0; local LevelTotal = 0; local TempEquip = {}; local TempPVPScore = 0

		if ( GetInventoryItemLink(Target, 17) ) then
			local ItemName, ItemLink, ItemRarity, ItemLevel, ItemMinLevel, ItemType, ItemSubType, ItemStackCount, ItemEquipLoc, ItemTexture = GetItemInfo(GetInventoryItemLink(Target, 17))
			TempScore, ItemLevel = GearScore_GetItemScore(GetInventoryItemLink(Target, 17));
			if ( PlayerEnglishClass == "HUNTER" ) then TempScore = TempScore * 0.3164; end
			GearScore = GearScore + TempScore; ItemCount = ItemCount + 1; LevelTotal = LevelTotal + ItemLevel
		end
		
		for i = 1, 18 do
			if ( i ~= 4 ) and ( i ~= 17 ) then
        		ItemLink = GetInventoryItemLink(Target, i)
        		GS_ItemLinkTable = {}
				if ( ItemLink ) then
					local ItemName, ItemLink, ItemRarity, ItemLevel, ItemMinLevel, ItemType, ItemSubType, ItemStackCount, ItemEquipLoc, ItemTexture = GetItemInfo(ItemLink)
        			if ( GS_Settings["Detail"] == 1 ) then GS_ItemLinkTable[i] = ItemLink; end
     				TempScore = GearScore_GetItemScore(ItemLink);
					if ( i == 16 ) and ( PlayerEnglishClass == "HUNTER" ) then TempScore = TempScore * 0.3164; end
					if ( i == 18 ) and ( PlayerEnglishClass == "HUNTER" ) then TempScore = TempScore * 5.3224; end
					GearScore = GearScore + TempScore;	ItemCount = ItemCount + 1; LevelTotal = LevelTotal + ItemLevel
				end
			end;
		end
		
		if ( GearScore <= 0 ) and ( Name ~= UnitName("player") ) then
			GearScore = 0; return 0,0;
		elseif ( Name == UnitName("player") ) and ( GearScore <= 0 ) then
		    GearScore = 0; end
		if ( ItemCount == 0 ) then LevelTotal = 0; end		    
		return floor(GearScore), floor(LevelTotal/ItemCount)
	end
end

function GearScore_GetEnchantInfo(ItemLink, ItemEquipLoc)
	local found, _, ItemSubString = string.find(ItemLink, "^|c%x+|H(.+)|h%[.*%]");
	local ItemSubStringTable = {}

	for v in string.gmatch(ItemSubString, "[^:]+") do tinsert(ItemSubStringTable, v); end
	ItemSubString = ItemSubStringTable[2]..":"..ItemSubStringTable[3], ItemSubStringTable[2]
	local StringStart, StringEnd = string.find(ItemSubString, ":") 
	ItemSubString = string.sub(ItemSubString, StringStart + 1)
	if ( ItemSubString == "0" ) and ( GS_ItemTypes[ItemEquipLoc]["Enchantable"] )then
		 local percent = ( floor((-2 * ( GS_ItemTypes[ItemEquipLoc]["SlotMOD"] )) * 100) / 100 );
		 return(1 + (percent/100));
	else
		return 1;
	end
end						

function GearScore_GetItemScore(ItemLink)
	local QualityScale = 1; local PVPScale = 1; local PVPScore = 0; local GearScore = 0
	if not ( ItemLink ) then return 0, 0; end
	local ItemName, ItemLink, ItemRarity, ItemLevel, ItemMinLevel, ItemType, ItemSubType, ItemStackCount, ItemEquipLoc, ItemTexture = GetItemInfo(ItemLink); local Table = {}; local Scale = 1.8618
 	if ( ItemRarity == 5 ) then QualityScale = 1.3; ItemRarity = 4;
	elseif ( ItemRarity == 1 ) then QualityScale = 0.005;  ItemRarity = 2
	elseif ( ItemRarity == 0 ) then QualityScale = 0.005;  ItemRarity = 2 end
    if ( ItemRarity == 7 ) then ItemRarity = 3; ItemLevel = 187.05; end    
    
    if ( GS_ItemTypes[ItemEquipLoc] ) then
        if ( ItemLevel >= 141 ) then 
            Table = GS_Formula["TBC_HIGH"]
        elseif ( ItemLevel >= 120 ) then
            Table = GS_Formula["TBC_T6"]
        elseif ( ItemLevel >= 100 ) then
            Table = GS_Formula["TBC"]
        elseif ( ItemLevel >= 85 ) then
            Table = GS_Formula["TBC_LOW"]
        else 
            Table = GS_Formula["B"] 
        end
        
		if ( ItemRarity >= 2 ) and ( ItemRarity <= 4 )then
            local Red, Green, Blue = GearScore_GetQuality((floor(((ItemLevel - Table[ItemRarity].A) / Table[ItemRarity].B) * 1 * Scale)) * 11.25 )
            GearScore = floor(((ItemLevel - Table[ItemRarity].A) / Table[ItemRarity].B) * GS_ItemTypes[ItemEquipLoc].SlotMOD * Scale * QualityScale)
			if ( ItemLevel == 187.05 ) then ItemLevel = 0; end
			if ( GearScore < 0 ) then GearScore = 0;   Red, Green, Blue = GearScore_GetQuality(1); end
			if ( PVPScale == 0.75 ) then PVPScore = 1; GearScore = GearScore * 1; 
			else PVPScore = GearScore * 0; end
			local percent = (GearScore_GetEnchantInfo(ItemLink, ItemEquipLoc) or 1)
			GearScore = floor(GearScore * percent )
			PVPScore = floor(PVPScore)
			return GearScore, ItemLevel, GS_ItemTypes[ItemEquipLoc].ItemSlot, Red, Green, Blue, PVPScore, ItemEquipLoc, percent ;
		end
  	end
  	return -1, ItemLevel, 50, 1, 1, 1, PVPScore, ItemEquipLoc, 1
end

function GearScore_GetQuality(ItemScore)
	if ( ItemScore > 5999 ) then ItemScore = 5999; end
	local Red = 0.1; local Blue = 0.1; local Green = 0.1; local GS_QualityDescription = "Legendary"
   	if not ( ItemScore ) then return 0, 0, 0, "Trash"; end
	for i = 0,6 do
		if ( ItemScore > i * 1000 ) and ( ItemScore <= ( ( i + 1 ) * 1000 ) ) then
		    local Red = GS_Quality[( i + 1 ) * 1000].Red["A"] + (((ItemScore - GS_Quality[( i + 1 ) * 1000].Red["B"])*GS_Quality[( i + 1 ) * 1000].Red["C"])*GS_Quality[( i + 1 ) * 1000].Red["D"])
            local Blue = GS_Quality[( i + 1 ) * 1000].Green["A"] + (((ItemScore - GS_Quality[( i + 1 ) * 1000].Green["B"])*GS_Quality[( i + 1 ) * 1000].Green["C"])*GS_Quality[( i + 1 ) * 1000].Green["D"])
            local Green = GS_Quality[( i + 1 ) * 1000].Blue["A"] + (((ItemScore - GS_Quality[( i + 1 ) * 1000].Blue["B"])*GS_Quality[( i + 1 ) * 1000].Blue["C"])*GS_Quality[( i + 1 ) * 1000].Blue["D"])
			return Red, Green, Blue, GS_Quality[( i + 1 ) * 1000].Description
		end
	end
	return 0.1, 0.1, 0.1
end
