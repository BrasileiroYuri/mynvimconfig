-------------------------------------------------------------------------
-- 🎨 ROSE PINE TRANSPARENT (NO ITALICS)
-------------------------------------------------------------------------
return {
  "rose-pine/neovim",
  name = "rose-pine",
  lazy = false,
  priority = 1000,
  opts = {
    variant = "main", -- you can change to: "moon" | "dawn"
    dark_variant = "main",
    disable_background = true,
    disable_float_background = true,
    disable_italics = true,

    highlight_groups = {
      -- Make all Normal backgrounds transparent
      Normal = { bg = "none" },
      NormalNC = { bg = "none" },
      NormalFloat = { bg = "none" },
      FloatBorder = { bg = "none" },
      Pmenu = { bg = "none" },
      PmenuSel = { bg = "none" },
      StatusLine = { bg = "none" },
    },
  },
  config = function(_, opts)
    require("rose-pine").setup(opts)
    vim.cmd.colorscheme("rose-pine")
  end,
}
