-------------------------------------------------------------------------
-- 🗼 TOKYO NIGHT (TRANSPARENT + NO ITALICS)
-------------------------------------------------------------------------
return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    style = "moon",
    transparent = true,
    styles = {
      -- Controle de Transparência
      sidebars = "transparent",
      floats = "transparent",

      -- Controle de Itálico (Desativando tudo)
      comments = { italic = false }, -- Comentários
      keywords = { italic = false }, -- Palavras-chave (local, function, if, return)
      functions = { italic = false }, -- Nomes de funções
      variables = { italic = false }, -- Variáveis
      -- Você pode adicionar outros grupos aqui se ainda ver itálico em algum lugar
    },
  },
  config = function(_, opts)
    require("tokyonight").setup(opts)
    vim.cmd.colorscheme("tokyonight")
  end,
}
