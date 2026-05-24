#!/usr/bin/env sh
set -eu

cd "$(dirname "$0")/.."

FONT="assets/fonts/atkinson-hyperlegible-next/AtkinsonHyperlegibleNext-Medium.ttf"
SYMBOL_FONT="assets/fonts/atkinson-hyperlegible-next/FontAwesome5-Solid+Brands+Regular.woff"
TEXT_RANGES="0x20-0x7F,0xA0-0xFF,0x100-0x17F"
SYMBOL_RANGES="0xF0E0"

for size in 10 12 14 16; do
  pnpm dlx lv_font_conv \
    --no-compress \
    --no-prefilter \
    --bpp 4 \
    --size "$size" \
    --font "$FONT" \
    -r "$TEXT_RANGES" \
    --font "$SYMBOL_FONT" \
    -r "$SYMBOL_RANGES" \
    --format lvgl \
    --lv-include lvgl.h \
    -o "src/fonts/lv_font_ratdeck_${size}.c" \
    --force-fast-kern-format
done
