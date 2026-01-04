-------------------------------------------------------------------------
-- 🤖 CYBERDREAM (TRANSPARENT + NO ITALICS)
-------------------------------------------------------------------------
return {
  "scottmckendry/cyberdream.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    transparent = true,
    italic_comments = false, -- Config nativa do tema
    hide_fillchars = true,
    borderless_telescope = true,
    terminal_colors = true,
    theme = {
      highlights = {
        -- Sobrescreve itálico em qualquer grupo restante
        Comment = { italic = false },
        Keyword = { italic = false },
        Function = { italic = false },
        Identifier = { italic = false },
        Statement = { italic = false },
        Type = { italic = false },

        -- Reforço de Transparência
        NormalFloat = { bg = "NONE" },
        FloatBorder = { bg = "NONE" },
        Pmenu = { bg = "NONE" },
        NeoTreeNormal = { bg = "NONE" },
        NeoTreeNormalNC = { bg = "NONE" },
      },
    },
  },
  config = function(_, opts)
    require("cyberdream").setup(opts)
    vim.cmd("colorscheme cyberdream")
  end,
}
