return {
  {
    "bjarneo/aether.nvim",
    branch = "v3",
    name = "aether",
    priority = 1000,
    opts = {
      colors = {
        bg = "#000923",
        dark_bg = "#00071a",
        darker_bg = "#000512",
        lighter_bg = "#1a2239",

        fg = "#ffd5b2",
        dark_fg = "#bfa086",
        light_fg = "#ffdbbe",
        bright_fg = "#ffe0c5",
        muted = "#3c6291",

        red = "#ff1720",
        yellow = "#d9b800",
        orange = "#ff3a41",
        green = "#1be33a",
        cyan = "#00bea8",
        blue = "#3f74ff",
        magenta = "#f52e9b",
        brown = "#992327",

        bright_red = "#ff5155",
        bright_yellow = "#e4cc00",
        bright_green = "#3dff41",
        bright_cyan = "#10ffd9",
        bright_blue = "#6695ff",
        bright_magenta = "#ff69c1",

        accent = "#3f74ff",
        cursor = "#ffe0c5",
        foreground = "#ffd5b2",
        background = "#000923",
        selection = "#1a2239",
        selection_foreground = "#000923",
        selection_background = "#1a2239",
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "aether",
    },
  },
}
