# GearScoreLite TBC Edition

[![Version](https://img.shields.io/badge/version-4.0.3--TBC-blue.svg)](https://github.com/your-repo/gearscorelite-tbc)
[![WoW Version](https://img.shields.io/badge/WoW-3.3.5a%20Client-orange.svg)](https://github.com/your-repo/gearscorelite-tbc)
[![TBC Content](https://img.shields.io/badge/Content-Pure%20TBC%20Edition-green.svg)](https://github.com/your-repo/gearscorelite-tbc)

A specialized version of GearScoreLite optimized specifically for **The Burning Crusade (TBC) content** running on WotLK client (3.3.5a). This adaptation fixes the core issue where TBC Best in Slot items were being scored lower than inferior items due to WotLK-centric scoring algorithms.

## 🎯 What's Fixed

The original GearScoreLite was designed for WotLK and used item level thresholds that penalized TBC gear:

### ❌ **Before (Original GearScoreLite)**
- TBC BiS items (ilvl 105-164) used **Formula "B"** - designed for leveling gear
- Harsh coefficients meant Sunwell items scored like dungeon blues
- T6 epics at ilvl 151 scored lower than mediocre WotLK greens
- WotLK contamination: heirloom calculations, Titan's Grip penalties

### ✅ **After (TBC Edition - Pure TBC v4.0.3)**
- **Six-tier progression system** designed specifically for TBC content
- Proper scoring differentiation through all TBC phases: Pre-Raid → T4 → T5 → T6 → Sunwell → Pre-TBC
- **Complete WotLK cleanup**: Zero heirloom interference, no Titan's Grip penalties
- TBC BiS items now receive the high scores they deserve

## 📊 Scoring Tiers

| Tier | Item Level | Content | Examples |
|------|------------|---------|----------|
| **TBC_SUNWELL** | 154-164 | Phase 5: Sunwell Plateau T6.5 | Sunwell raid gear |
| **TBC_T6** | 141-151 | Phase 3: Mount Hyjal, Black Temple T6 | T6 raid gear |  
| **TBC_T5** | 128-141 | Phase 2: SSC, Tempest Keep T5 + Phase 4: Zul'Aman | T5 raids, Zul'Aman, Badge gear |
| **TBC_T4** | 110-127 | Phase 1: Karazhan, Gruul, Magtheridon T4 | T4 raid gear |
| **TBC_PRE_RAID** | 105-115 | Pre-Raid: Heroics, Crafted, Reputations | Heroic dungeons, crafted items |
| **Formula "B"** | <105 | Pre-TBC content | Leveling gear, vanilla content |

## 🏹 Example: Bristleblitz Striker Analysis

**Bristleblitz Striker** (T6 BiS Bow, ilvl 151):

- **Original System**: 52 GearScore, 276 HunterScore (undervalued)
- **TBC Edition**: 88 GearScore, 468 HunterScore (proper T6 BiS score)
- **Improvement**: **+69% GearScore, +70% HunterScore increase**

## 🚀 Installation

1. **Download** the addon files
2. **Extract** to your `Interface/AddOns/GearScoreLite/` folder
3. **Replace** the original GearScoreLite (backup recommended)
4. **Restart** WoW client
5. **Enjoy** properly scored TBC gear!

## 🎮 Usage

All original commands work exactly the same:

```
/gs              - Show options menu
/gs player       - Toggle player score display
/gs item         - Toggle item score tooltips  
/gs level        - Toggle item level display
/gs compare      - Toggle score comparisons
```

### Features
- **Mouse over players** to see their gear score
- **Item tooltips** show individual item scores
- **Character sheet** displays your current gear score
- **Hunter weapon scaling** preserved for TBC gameplay (5.3224x ranged, 0.3164x melee)
- **Enchant penalties** for missing enchants

## 🔧 Technical Details

### Six-Tier Formula System
```lua
-- Phase 5: Sunwell Plateau T6.5 (ilvl 154-164)
TBC_SUNWELL: A = 95.0, B = 0.35

-- Phase 3: Mount Hyjal, Black Temple T6 (ilvl 141-151)
TBC_T6: A = 80.0, B = 0.45

-- Phase 2: SSC, Tempest Keep T5 + Phase 4: Zul'Aman (ilvl 128-141)
TBC_T5: A = 70.0, B = 0.50

-- Phase 1: Karazhan, Gruul, Magtheridon T4 (ilvl 110-127)
TBC_T4: A = 55.0, B = 0.65

-- Pre-Raid: Heroics, Crafted, Reputations (ilvl 105-115)
TBC_PRE_RAID: A = 45.0, B = 0.80

-- Pre-TBC Content (ilvl <105)
Formula "B": A = 26.0, B = 1.2 (epics)
```

### Completely Removed WotLK Features (v4.0.3)
- ❌ **Heirloom calculations** (ItemRarity == 7 processing)
- ❌ **Titan's Grip** dual-wielding penalties
- ❌ **Death Knight** specific logic
- ❌ **WotLK item level thresholds** (>164)
- ❌ **Legacy DKP/tooltip systems**

### Preserved TBC Features
- ✅ Hunter weapon/ranged scoring modifiers
- ✅ All original slash commands
- ✅ Player comparison system
- ✅ Enchant penalty system
- ✅ Item tooltip integration
- ✅ Pure TBC itemization focus

## 🎯 Compatibility

- **Client**: World of Warcraft 3.3.5a (WotLK client)
- **Content**: TBC expansion content servers
- **Interface**: 30300 (TBC-compatible)
- **Dependencies**: None
- **Purity**: 100% TBC focus, zero WotLK contamination

Perfect for **TBC content servers** running on the **WotLK client architecture**.

## 📈 Score Examples

| Item Type | Original Score | TBC Edition Score | Improvement |
|-----------|----------------|-------------------|-------------|
| Sunwell Epic (ilvl 151) | ~52 | ~88 | **+69%** |
| T6 Epic (ilvl 145) | ~45 | ~84 | **+87%** |
| T5 Epic (ilvl 133) | ~38 | ~72 | **+89%** |
| T4 Epic (ilvl 115) | ~32 | ~58 | **+81%** |

## 👥 Credits

- **Original Authors**: Mirrikat45, dyzcypul
- **TBC Adaptation**: Xerrion

## 📝 Changelog

### Version 4.0.3-TBC (Pure TBC Cleanup)
- 🧹 **Complete WotLK removal** - Eliminated all heirloom calculations
- 🔄 **Synchronized codebase** - Consistent 6-tier system across all files
- 🗂️ **Clean file structure** - Removed legacy DKP/tooltip/version systems
- ✅ **Code quality** - Zero WotLK contamination, pure TBC focus

### Version 4.0.2-TBC (TBC Adaptation)
- ✨ **Six-tier TBC optimization** - Complete TBC progression system
- 🔧 **Fixed TBC BiS scoring** - No more undervalued items  
- 🚫 **Removed WotLK features** - Titan's Grip, WotLK thresholds
- 📊 **Accurate TBC ranges** - Proper phase-based item level brackets
- 🎯 **TBC-specific formulas** - Optimized coefficients for all TBC tiers

## 🐛 Issues & Support

If you encounter any issues:

1. **Verify** you're using the TBC Edition files
2. **Check** your TBC server's item level ranges match expectations
3. **Confirm** WoW client version is 3.3.5a
4. **Report** issues with specific item examples

## 📜 License

This project maintains the same license as the original GearScoreLite addon.

---

### ⭐ Perfect for TBC Servers

This **Pure TBC Edition (v4.0.3)** ensures your gear scores accurately reflect the **actual progression and power levels** of TBC content, with **zero WotLK interference**. Ideal for TBC servers running on WotLK client architecture.

**Pure TBC experience - No more undervalued BiS items!** 🎯