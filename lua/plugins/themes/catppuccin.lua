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
    no_italic = true, -- Global switch to disable italics

    -- Basic style disabling
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
      miscs = {}, -- Added 'miscs' just in case
    },

    custom_highlights = function(colors)
      return {
        -- 1. TRANSPARENCY FIXES (From your previous config)
        NormalFloat = { bg = "NONE" },
        FloatBorder = { bg = "NONE" },
        FloatTitle = { bg = "NONE" },
        Pmenu = { bg = "NONE" },
        PmenuSel = { bg = colors.surface1 },
        PmenuSbar = { bg = "NONE" },
        PmenuThumb = { bg = "NONE" },
        TelescopeNormal = { bg = "NONE" },
        TelescopeBorder = { bg = "NONE" },
        TelescopePromptNormal = { bg = "NONE" },
        TelescopePromptBorder = { bg = "NONE" },
        TelescopeResultsNormal = { bg = "NONE" },
        TelescopeTitle = { bg = "NONE" },
        NeoTreeNormal = { bg = "NONE" },
        NeoTreeNormalNC = { bg = "NONE" },
        NeoTreeWinSeparator = { bg = "NONE" },
        WhichKeyFloat = { bg = "NONE" },
        LazyNormal = { bg = "NONE" },
        MasonNormal = { bg = "NONE" },
        SnacksNormal = { bg = "NONE" },

        -- 2. C++ ITALIC REMOVAL (TreeSitter Overrides)
        -- This forces specific syntax elements to have NO style (removing italics)
        ["@type.builtin"] = { style = {} }, -- void, int, bool, char
        ["@type"] = { style = {} }, -- Class names (BarChart)
        ["@namespace"] = { style = {} }, -- std, huff
        ["@keyword"] = { style = {} }, -- const, static, return
        ["@keyword.function"] = { style = {} }, -- Functions defined as keywords
        ["@variable"] = { style = {} }, -- Standard variables
        ["@variable.member"] = { style = {} }, -- Member variables (m_main_title)
        ["@variable.parameter"] = { style = {} }, -- Function parameters
        ["@function"] = { style = {} }, -- Function names
        ["@function.macro"] = { style = {} }, -- Macros
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
