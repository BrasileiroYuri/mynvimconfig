return {
  -- =================================================================
  -- 1. BLINK CMP (O seu plugin de autocomplete atual)
  -- =================================================================
  {
    "saghen/blink.cmp",
    opts = {
      -- 'keymap' define os atalhos.
      -- A lista diz a ordem de prioridade:
      -- 1. Tenta selecionar o próximo item
      -- 2. Se não der, tenta pular no snippet
      -- 3. Se não der, faz o Tab normal (fallback)
      keymap = {
        preset = "none", -- Desativa predefinições para usarmos a nossa manual

        ["<Tab>"] = { "select_next", "snippet_forward", "fallback" },
        ["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },

        ["<CR>"] = { "accept", "fallback" },
        ["<C-e>"] = { "hide", "fallback" },
      },
    },
  },

  -- =================================================================
  -- 2. TELESCOPE (Para garantir que a busca de arquivos funcione)
  -- =================================================================
  {
    "nvim-telescope/telescope.nvim",
    opts = function(_, opts)
      local ok, actions = pcall(require, "telescope.actions")
      if not ok then
        return
      end

      opts.defaults = opts.defaults or {}
      opts.defaults.mappings = opts.defaults.mappings or {}
      opts.defaults.mappings.i = opts.defaults.mappings.i or {}

      opts.defaults.mappings.i["<Tab>"] = actions.move_selection_next
      opts.defaults.mappings.i["<S-Tab>"] = actions.move_selection_previous
    end,
  },

  -- =================================================================
  -- 3. SNACKS (Caso esteja usando o novo menu do LazyVim)
  -- =================================================================
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        win = {
          input = {
            keys = {
              ["<Tab>"] = { "list_down", mode = { "i", "n" } },
              ["<S-Tab>"] = { "list_up", mode = { "i", "n" } },
            },
          },
        },
      },
    },
  },
}
