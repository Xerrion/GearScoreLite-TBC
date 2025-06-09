-- WoW API Stubs for Syntax Checking
-- This file provides stub definitions for WoW API functions to allow syntax checking
-- This file should NOT be included in the actual addon

-- Global WoW functions used in GearScoreLite
function UnitName(unit) return "Player" end
function UnitClass(unit) return "WARRIOR", "WARRIOR" end
function UnitIsPlayer(unit) return true end
function UnitIsUnit(unit1, unit2) return false end
function GetInventoryItemLink(unit, slot) return "|cff0080ff|Hitem:12345:0:0:0:0:0:0:0:70|h[Test Item]|h|r" end
function GetItemInfo(itemLink) 
    return "Test Item", itemLink, 4, 100, 70, "Armor", "Plate", 1, "INVTYPE_CHEST", "Interface\\Icons\\INV_Chest_Plate01"
end
function GetRealmName() return "TestRealm" end
function floor(num) return math.floor(num) end
function tinsert(table, value) table.insert(table, value) end
function IsEquippableItem(itemLink) return true end
function NotifyInspect(unit) end

-- Addon system functions
function GetAddOnMetadata(addonName, field) return "1.0.0" end
function RegisterAddonMessagePrefix(prefix) end
function SendAddonMessage(prefix, message, chatType, target) end
function IsInGroup() return false end
function IsInGuild() return false end

-- Global variables and tables
_G = {}
UIParent = { CreateFrame = function() return {} end }
CharacterModelFrame = { 
    CreateFontString = function() return PersonalGearScore end,
    HookScript = function() end 
}
PersonalGearScore = { 
    SetText = function() end, 
    SetTextColor = function() end,
    SetPoint = function() end,
    SetFont = function() end,
    Show = function() end
}
GearScore2 = {
    SetText = function() end,
    SetTextColor = function() end,
    SetPoint = function() end,
    SetFont = function() end,
    Show = function() end
}
GameTooltip = { 
    SetInventoryItem = function() end,
    AddLine = function() end 
}

-- Event and addon system stubs
function CreateFrame() 
    return { 
        SetScript = function() end,
        RegisterEvent = function() end,
        UnregisterEvent = function() end
    } 
end

-- String and utility functions
string.gmatch = string.gmatch or function() return function() end end
string.find = string.find
string.sub = string.sub
strlower = string.lower

-- Mock saved variables
GS_Settings = {}
GS_Data = {}
SlashCmdList = {}

-- Mock functions
print = function(...) end
time = function(dateTable) 
    if dateTable then
        return os.time(dateTable)
    else
        return os.time()
    end
end
