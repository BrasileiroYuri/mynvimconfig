-------------------------------------------------------------------------
-- 🌊 KANAGAWA (DRAGON + TRANSPARENT + NO ITALICS)
-------------------------------------------------------------------------
return {
  "rebelot/kanagawa.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    compile = true, -- Melhora a performance de startup
    undercurl = true,
    commentStyle = { italic = false },
    functionStyle = { italic = false },
    keywordStyle = { italic = false },
    statementStyle = { italic = false },
    typeStyle = { italic = false },
    transparent = true, -- Ativa transparência global
    dimInactive = false,
    terminalColors = true,
    colors = {
      theme = {
        all = {
          ui = {
            bg_gutter = "none",
          },
        },
      },
    },
    overrides = function(colors)
      return {
        -- Força transparência em janelas flutuantes
        NormalFloat = { bg = "none" },
        FloatBorder = { bg = "none" },
        FloatTitle = { bg = "none" },

        -- Menus e Popups
        Pmenu = { bg = "none" },
        PmenuSel = { bg = colors.theme.ui.bg_p2 },
        PmenuSbar = { bg = "none" },
        PmenuThumb = { bg = "none" },

        -- Telescope
        TelescopeTitle = { bg = "none" },
        TelescopePromptNormal = { bg = "none" },
        TelescopePromptBorder = { bg = "none" },
        TelescopeResultsNormal = { bg = "none" },
        TelescopeResultsBorder = { bg = "none" },

        -- NeoTree / Sidebars
        NeoTreeNormal = { bg = "none" },
        NeoTreeNormalNC = { bg = "none" },
      }
    end,
  },
  config = function(_, opts)
    require("kanagawa").setup(opts)
    vim.cmd("colorscheme kanagawa-dragon") -- "dragon" é a versão mais escura/contraste
  end,
}
