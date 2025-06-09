GearScoreLite TBC Edition - Changelog
======================================

Version 4.0.4-TBC (T4/T5 Scoring Fix)
-------------------------------------
CRITICAL FIX:
- 🔧 **FIXED: T4/T5 Scoring Inversion Issue**
  * Extended T4 item level range from 110-120 to 110-127
  * Resolves issue where T5 items (Nordrassil Chestguard, ilvl 133) scored lower than T4 items (Chestguard of Malorne, ilvl 120)
  * Items at ilvl 120-127 now properly assigned to T4 tier instead of falling between T4 and T5
  * Ensures proper scoring progression: T5 items now consistently score higher than T4 items
- 📋 **UPDATED: Documentation**
  * All files updated to reflect corrected T4 range (110-127)
  * README.md, README-TBC.txt, and formula comments synchronized

TECHNICAL DETAILS:
- **Root Cause**: Gap between T4 (110-119) and T5 (128+) caused ilvl 120-127 items to be improperly categorized
- **Solution**: Extended T4 upper bound to ilvl 127 to eliminate scoring gap
- **Impact**: Proper tier assignment ensures accurate relative scoring between T4 and T5 items

Version 4.0.3-TBC (May 2025 - Pure TBC Cleanup)
------------------------------------------------
CLEANUP & OPTIMIZATION RELEASE:
- ✅ REMOVED: All heirloom calculations and WotLK-era item handling
  * Eliminated ItemRarity == 7 (heirloom) processing entirely
  * Removed ItemLevel == 187.05 heirloom level reset conditions
  * Pure TBC itemization without WotLK interference
- ✅ SYNCHRONIZED: All scoring systems across codebase
  * Updated GearScoreLite_SyntaxCheck.lua to match 6-tier system
  * Eliminated old 4-tier formulas (TBC_HIGH, TBC, TBC_LOW)
  * Consistent TBC_SUNWELL→TBC_T6→TBC_T5→TBC_T4→TBC_PRE_RAID→Formula "B"
- ✅ FILE STRUCTURE: Cleaned non-essential WotLK-era files
  * Removed legacy DKP, tooltip, and version checking systems
  * Streamlined to pure TBC-focused addon structure
  * Simplified special users list from 100+ entries to minimal TBC types
- ✅ CODE QUALITY: Verified removal of all WotLK-specific features
  * Confirmed Titan's Grip penalties properly removed
  * No death knight or WotLK class-specific logic remaining
  * Clean codebase focused purely on TBC content

Version 4.0.2-TBC (TBC Adaptation by Xerrion)
----------------------------------------------
Original Authors: Mirrikat45, dyzcypul
TBC Adaptation: Xerrion

MAJOR CHANGES:
- Completely redesigned scoring system specifically for TBC content
- Removed WotLK-specific logic and item level thresholds
- Fixed TBC Best in Slot items being scored lower than inferior items

NEW FEATURES:
- Six-tier TBC scoring system:
  * TBC_SUNWELL: Sunwell Plateau T6.5 items (ilvl 154-164)
  * TBC_T6: Mount Hyjal, Black Temple T6 items (ilvl 141-151)
  * TBC_T5: SSC, Tempest Keep T5 + Zul'Aman, Badge Gear (ilvl 128-141)  
  * TBC_T4: Karazhan, Gruul, Magtheridon T4 items (ilvl 110-127)
  * TBC_PRE_RAID: Heroics, Crafted, Reputations (ilvl 105-115)
  * Formula "B": Pre-TBC content (ilvl <105)
- Optimized formula coefficients for TBC itemization patterns
- Removed Titan's Grip penalties (WotLK feature not relevant to TBC)

TECHNICAL IMPROVEMENTS:
- Updated item level thresholds to accurate TBC phase ranges
- Created six TBC-specific scoring formulas with appropriate coefficients
- Preserved hunter weapon/ranged scoring modifiers for TBC gameplay
- Maintained enchant penalty system for missing enchants

COMPATIBILITY:
- Designed for TBC content servers running on WotLK client (3.3.5a)
- Interface version updated to 30300 for proper TBC compatibility
- All original GearScoreLite functionality preserved for TBC items

EXAMPLES OF IMPROVEMENTS:
- TBC Epic at ilvl 115 now scores appropriately vs being penalized
- Sunwell items properly recognized as top-tier gear
- T6 items score higher than T5, T5 higher than T4, etc.
- Heroic dungeon items score appropriately for their tier level

INSTALLATION:
- Replace original GearScoreLite addon with this TBC edition
- No additional configuration required
- All slash commands (/gs, /gset, /gearscore) remain the same
