#!/bin/bash
# AniPop - Hyprland window look, applied whenever this theme is (re)selected.
#
# omarchy-theme-set always strips *.lua from a theme installed via
# `omarchy theme install` / git clone (see docs/theming.md), so rounding,
# opacity, gaps, and blur can't ship as part of the theme's own hyprland.lua.
# Installing this as a `theme-set` hook (see README) re-applies them live via
# `hyprctl keyword` every time the theme changes, which survives that strip.
#
# Border color is intentionally left alone here -- Omarchy regenerates that
# from colors.toml's `accent` automatically for every theme, repo-installed
# or not.

THEME_NAME=$1
[[ $THEME_NAME == "anipop" ]] || exit 0

hyprctl --batch "\
keyword general:border_size 1;\
keyword general:gaps_in 2;\
keyword general:gaps_out 9;\
keyword decoration:rounding 16;\
keyword decoration:active_opacity 0.98;\
keyword decoration:inactive_opacity 0.75;\
keyword decoration:fullscreen_opacity 0.99;\
keyword decoration:blur:enabled true;\
keyword decoration:blur:size 4;\
keyword decoration:blur:passes 2;\
keyword decoration:blur:noise 0.01;\
keyword decoration:shadow:enabled true;\
keyword decoration:shadow:range 12;\
keyword decoration:shadow:render_power 3;\
keyword decoration:shadow:color rgba(00000090);\
keyword decoration:shadow:color_inactive rgba(00000048);\
keyword decoration:shadow:offset 0 3\
" >/dev/null 2>&1
