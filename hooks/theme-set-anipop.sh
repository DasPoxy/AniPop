#!/bin/bash
# AniPop - Hyprland window look, applied whenever this theme is (re)selected.
#
# omarchy-theme-set always strips *.lua from a theme installed via
# `omarchy theme install` / git clone (see docs/theming.md), so rounding,
# opacity, gaps, and blur can't ship as part of the theme's own hyprland.lua.
# Installing this as a `theme-set` hook (see README) re-applies them live via
# `hyprctl eval` every time the theme changes, which survives that strip.
#
# `hyprctl eval '<lua>'` (not `hyprctl keyword`) because this system's
# Hyprland is a Lua-configured fork -- `hyprctl keyword` refuses outright
# ("keyword can't work with non-legacy parsers. Use eval."), and the syntax
# below mirrors the same hl.config() calls the fork's own hyprland.lua uses.
# On stock Hyprland, swap this for a `hyprctl --batch "keyword ...` block.
#
# Border color is intentionally left alone here -- Omarchy regenerates that
# from colors.toml's `accent` automatically for every theme, repo-installed
# or not.

THEME_NAME=$1
[[ $THEME_NAME == "anipop" ]] || exit 0

hyprctl eval '
hl.config({
  general = {
    border_size = 1,
    gaps_in = 4,
    gaps_out = 10,
  },
  decoration = {
    rounding = 16,
    active_opacity = 0.98,
    inactive_opacity = 0.75,
    fullscreen_opacity = 1,
    blur = {
      enabled = true,
      size = 4,
      passes = 2,
      noise = 0.01,
    },
    shadow = {
      enabled = true,
      range = 12,
      render_power = 3,
      color = "rgba(00000090)",
      color_inactive = "rgba(00000048)",
      offset = { 0, 3 },
    },
  },
})
' >/dev/null 2>&1
