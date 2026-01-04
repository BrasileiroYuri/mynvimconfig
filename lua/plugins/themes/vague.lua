-------------------------------------------------------------------------
-- 🌫️ VAGUE (TRANSPARENT + NO ITALICS)
-------------------------------------------------------------------------
return {
  "vague2k/vague.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    transparent = true, -- Fundo transparente
    style = {
      -- Define tudo como "none" para matar o itálico
      boolean = "none",
      number = "none",
      float = "none",
      error = "none",
      comments = "none",
      conditionals = "none",
      functions = "none",
      headings = "bold", -- Manter negrito em títulos é útil
      operators = "none",
      strings = "none",
      variables = "none",
      keywords = "none",
      keyword_return = "none",
      loop = "none",
      prefix = "none",
    },
  },
  config = function(_, opts)
    require("vague").setup(opts)
    vim.cmd.colorscheme("vague")
  end,
}
