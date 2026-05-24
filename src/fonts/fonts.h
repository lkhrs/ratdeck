#pragma once

// Custom Atkinson Hyperlegible Next Medium fonts with extended Unicode ranges:
// ASCII (0x20-0x7F), Latin-1 Supplement (0xA0-0xFF),
// Latin Extended-A (0x100-0x17F), and LV_SYMBOL_ENVELOPE (0xF0E0).
// Atkinson Hyperlegible Next Medium does not include Cyrillic glyphs.
// LV_SYMBOL_ENVELOPE is merged from LVGL's FontAwesome symbol font.
//
// Generated with scripts/generate-fonts.sh from Atkinson Hyperlegible Next
// Medium, licensed under the SIL Open Font License 1.1.

#include <lvgl.h>

LV_FONT_DECLARE(lv_font_ratdeck_10)
LV_FONT_DECLARE(lv_font_ratdeck_12)
LV_FONT_DECLARE(lv_font_ratdeck_14)
LV_FONT_DECLARE(lv_font_ratdeck_16)
