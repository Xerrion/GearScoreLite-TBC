-- WoW API Stubs for Syntax Checking
-- This file provides stub definitions for WoW API functions to allow syntax checking
-- This file should NOT be included in the actual addon

-- Global WoW functions used in GearScoreLite
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

-- Event and addon system stubs
function CreateFrame() return {} end
function RegisterEvent() end
function UnregisterEvent() end
function IsAddOnLoaded() return true end

-- String and utility functions
string.gmatch = string.gmatch or function() return function() end end
string.find = string.find
string.sub = string.sub

-- Mock saved variables
GS_Settings = {}
GS_Data = {}
