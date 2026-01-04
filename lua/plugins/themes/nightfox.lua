-------------------------------------------------------------------------
-- 🦊 NIGHTFOX (100% TRANSPARENTE + SEM ITÁLICO)
-------------------------------------------------------------------------
return {
  "EdenEast/nightfox.nvim",
  lazy = false, -- Carrega ao iniciar
  priority = 1000, -- Carrega antes de tudo para garantir as cores
  opts = {
    options = {
      -- Habilita transparência global básica
      transparent = true,
      terminal_colors = true,
      -- Remove itálico de tudo (Nightfox usa strings "NONE", diferente do Catppuccin que usa tabelas)
      styles = {
        comments = "NONE",
        conditionals = "NONE",
        constants = "NONE",
        functions = "NONE",
        keywords = "NONE",
        numbers = "NONE",
        operators = "NONE",
        strings = "NONE",
        types = "NONE",
        variables = "NONE",
      },
      -- Módulos internos (semelhante ao integrations do catppuccin, mas menos granular)
      modules = {
        cmp = true,
        gitsigns = true,
        neotree = true,
        telescope = true,
        treesitter = true,
        whichkey = true,
        notify = true,
        mini = true,
      },
    },

    -- O segredo para remover o fundo dos popups que sobraram:
    -- Nightfox usa a tabela 'groups' para sobrescrever highlights
    groups = {
      all = { -- Aplica a todos os sabores (nightfox, dayfox, carbonfox, etc.)
        -- Remove fundo de janelas flutuantes gerais
        NormalFloat = { bg = "NONE" },
        FloatBorder = { bg = "NONE" },
        FloatTitle = { bg = "NONE" },

        -- Menus de Autocomplete (cmp)
        Pmenu = { bg = "NONE" },
        PmenuSel = { bg = "palette.bg3" }, -- Um leve destaque na seleção (usando a paleta do tema)
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
        NeoTreeEndOfBuffer = { bg = "NONE", fg = "NONE" }, -- Esconde o "~" no final

        -- WhichKey
        WhichKeyFloat = { bg = "NONE" },

        -- Lazy (Gerenciador de plugins)
        LazyNormal = { bg = "NONE" },

        -- Mason (Gerenciador de LSP)
        MasonNormal = { bg = "NONE" },
        -- Snacks (Novo picker do LazyVim)
        SnacksNormal = { bg = "NONE" },
        -- Notify (Notificações)
        NotifyBackground = { bg = "NONE" },
      },
    },
  },
  config = function(_, opts)
    require("nightfox").setup(opts)
    -- Você pode mudar para "carbonfox", "duskfox", etc. aqui se preferir
    vim.cmd("colorscheme nightfox")
  end,
}
