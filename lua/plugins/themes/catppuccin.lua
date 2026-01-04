-------------------------------------------------------------------------
-- ☕ CATPPUCCIN MOCHA (100% TRANSPARENTE + SEM ITÁLICO)
-------------------------------------------------------------------------
return {
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = false,
  priority = 1000,
  opts = {
    flavour = "mocha",
    transparent_background = true,
    term_colors = true,

    -- Remove itálico de tudo
    styles = {
      comments = {},
      conditionals = {},
      loops = {},
      functions = {},
      keywords = {},
      strings = {},
      variables = {},
      numbers = {},
      booleans = {},
      properties = {},
      types = {},
      operators = {},
    },

    -- O segredo para remover o fundo dos popups que sobraram:
    custom_highlights = function(colors)
      return {
        -- Remove fundo de janelas flutuantes gerais
        NormalFloat = { bg = "NONE" },
        FloatBorder = { bg = "NONE" },
        FloatTitle = { bg = "NONE" },

        -- Menus de Autocomplete (cmp)
        Pmenu = { bg = "NONE" },
        PmenuSel = { bg = colors.surface1 }, -- Destaca a seleção levemente
        PmenuSbar = { bg = "NONE" },
        PmenuThumb = { bg = "NONE" },

        -- Telescope (Busca de arquivos)
        TelescopeNormal = { bg = "NONE" },
        TelescopeBorder = { bg = "NONE" },
        TelescopePromptNormal = { bg = "NONE" },
        TelescopePromptBorder = { bg = "NONE" },
        TelescopeResultsNormal = { bg = "NONE" },
        TelescopeTitle = { bg = "NONE" },

        -- NeoTree (Barra lateral)
        NeoTreeNormal = { bg = "NONE" },
        NeoTreeNormalNC = { bg = "NONE" },
        NeoTreeWinSeparator = { bg = "NONE" },

        -- WhichKey (O menu de ajuda da sua imagem)
        WhichKeyFloat = { bg = "NONE" },

        -- Lazy (Gerenciador de plugins)
        LazyNormal = { bg = "NONE" },

        -- Mason (Gerenciador de LSP)
        MasonNormal = { bg = "NONE" },

        -- Snacks (Novo picker do LazyVim)
        SnacksNormal = { bg = "NONE" },
      }
    end,

    integrations = {
      alpha = true,
      cmp = true,
      flash = true,
      gitsigns = true,
      illuminate = true,
      indent_blankline = { enabled = true },
      lsp_trouble = true,
      mason = true,
      mini = true,
      native_lsp = {
        enabled = true,
        underlines = {
          errors = { "undercurl" },
          hints = { "undercurl" },
          warnings = { "undercurl" },
          information = { "undercurl" },
        },
      },
      navic = { enabled = true },
      neotree = true,
      noice = true,
      notify = true,
      neotest = true,
      semantic_tokens = true,
      telescope = true,
      treesitter = true,
      which_key = true,
      snacks = true,
    },
  },
  config = function(_, opts)
    require("catppuccin").setup(opts)
    vim.cmd.colorscheme("catppuccin")
  end,
}
