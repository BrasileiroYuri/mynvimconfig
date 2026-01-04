-------------------------------------------------------------------------
-- 📦 GRUVBOX (MATERIAL + TRANSPARENT + NO ITALICS)
-------------------------------------------------------------------------
return {
  "ellisonleao/gruvbox.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    terminal_colors = true,
    undercurl = true,
    underline = true,
    bold = true,
    italic = {
      strings = false,
      emphasis = false,
      comments = false,
      operators = false,
      folds = false,
    },
    strikethrough = true,
    invert_selection = false,
    invert_signs = false,
    invert_tabline = false,
    invert_intend_guides = false,
    inverse = true,
    contrast = "hard", -- soft, medium, hard (hard é melhor para transparência)
    palette_overrides = {},
    overrides = {
      -- Força Transparência Extrema
      NormalFloat = { bg = "NONE" },
      FloatBorder = { bg = "NONE" },
      SignColumn = { bg = "NONE" },
      MsgArea = { bg = "NONE" },
      ModeMsg = { bg = "NONE" },
      FrameName = { bg = "NONE" },
      Pmenu = { bg = "NONE" },
      PmenuSel = { bg = "#504945" }, -- Cor de seleção manual (cinza escuro gruvbox)
      TelescopeNormal = { bg = "NONE" },
      TelescopeBorder = { bg = "NONE" },
      NeoTreeNormal = { bg = "NONE" },
      NeoTreeNormalNC = { bg = "NONE" },
      WhichKeyFloat = { bg = "NONE" },
    },
    dim_inactive = false,
    transparent_mode = true,
  },
  config = function(_, opts)
    require("gruvbox").setup(opts)
    vim.cmd("colorscheme gruvbox")
  end,
}
