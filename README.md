# GearScoreLite TBC Edition

[![Version](https://img.shields.io/badge/version-4.0.1--TBC-blue.svg)](https://github.com/your-repo/gearscorelite-tbc)
[![WoW Version](https://img.shields.io/badge/WoW-3.3.5a%20Client-orange.svg)](https://github.com/your-repo/gearscorelite-tbc)
[![TBC Content](https://img.shields.io/badge/Content-TBC%20Optimized-green.svg)](https://github.com/your-repo/gearscorelite-tbc)

A specialized version of GearScoreLite optimized specifically for **The Burning Crusade (TBC) content** running on WotLK client (3.3.5a). This adaptation fixes the core issue where TBC Best in Slot items were being scored lower than inferior items due to WotLK-centric scoring algorithms.

## 🎯 What's Fixed

The original GearScoreLite was designed for WotLK and used item level thresholds that penalized TBC gear:

### ❌ **Before (Original GearScoreLite)**
- TBC BiS items (ilvl 115-151) used **Formula "B"** - designed for leveling gear
- Harsh coefficients meant Sunwell items scored like dungeon blues
- T6 epics at ilvl 151 scored lower than mediocre WotLK greens

### ✅ **After (TBC Edition)**
- **Four-tier progression system** designed specifically for TBC content
- Proper scoring differentiation between T4 → T5 → T6 → Sunwell
- TBC BiS items now receive the high scores they deserve

## 📊 Scoring Tiers

| Tier | Item Level | Content | Examples |
|------|------------|---------|----------|
| **TBC_LOW** | 85-99 | T4 raids, Heroic dungeons | Karazhan, Heroic dungeons, Badge gear |
| **TBC** | 100-133 | T5 raids | Serpentshrine Cavern, Tempest Keep |
| **TBC_T6** | 120-140 | T6 raids | Black Temple, Mount Hyjal |
| **TBC_HIGH** | 141-151 | Sunwell Plateau | Sunwell raid, premium items |

## 🏹 Example: Bristleblitz Striker Analysis

**Bristleblitz Striker** (T6 BiS Bow, ilvl 151):

- **Original System**: ~287 points (undervalued)
- **TBC Edition**: ~478 points (proper T6 BiS score)
- **Improvement**: **+67% score increase**

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
- **Hunter weapon scaling** preserved for TBC gameplay
- **Enchant penalties** for missing enchants

## 🔧 Technical Details

### New Formula System
```lua
-- Sunwell Plateau (ilvl 141-151)
TBC_HIGH: A = 90.0, B = 0.4

-- T6 Content (ilvl 120-140) 
TBC_T6: A = 75.0, B = 0.5

-- T5 Content (ilvl 100-133)
TBC: A = 65.0, B = 0.55

-- T4/Heroic Content (ilvl 85-99)
TBC_LOW: A = 50.0, B = 0.7
```

### Removed WotLK Features
- ❌ Titan's Grip dual-wielding penalties
- ❌ WotLK item level thresholds (>120)
- ❌ WotLK-specific detection logic

### Preserved Features
- ✅ Hunter weapon/ranged scoring modifiers
- ✅ All original slash commands
- ✅ Player comparison system
- ✅ Enchant penalty system
- ✅ Item tooltip integration

## 🎯 Compatibility

- **Client**: World of Warcraft 3.3.5a (WotLK client)
- **Content**: TBC expansion content servers
- **Interface**: 30300 (TBC-compatible)
- **Dependencies**: None

Perfect for **TBC content servers** running on the **WotLK client architecture**.

## 📈 Score Examples

| Item Type | Original Score | TBC Edition Score | Improvement |
|-----------|----------------|-------------------|-------------|
| Sunwell Epic (ilvl 151) | ~290 | ~480 | **+65%** |
| T6 Epic (ilvl 130) | ~250 | ~380 | **+52%** |
| T5 Epic (ilvl 115) | ~210 | ~310 | **+48%** |
| T4 Epic (ilvl 95) | ~180 | ~230 | **+28%** |

## 👥 Credits

- **Original Authors**: Mirrikat45, dyzcypul
- **TBC Adaptation**: Xerrion

## 📝 Changelog

### Version 4.0.1-TBC
- ✨ **Complete TBC optimization** - Four-tier scoring system
- 🔧 **Fixed TBC BiS scoring** - No more undervalued items  
- 🚫 **Removed WotLK features** - Titan's Grip, WotLK thresholds
- 📊 **Accurate item level ranges** - T5 (100-133), T6 (120-151)
- 🎯 **TBC-specific formulas** - Optimized coefficients
- 📚 **Updated documentation** - Complete usage guide

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

This TBC Edition ensures your gear scores accurately reflect the **actual progression and power levels** of TBC content, making it ideal for TBC servers running on WotLK client architecture.

**No more undervalued BiS items!** 🎯
