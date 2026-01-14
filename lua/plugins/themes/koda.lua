-------------------------------------------------------------------------
-- 🌲 KODA (100% TRANSPARENT + NO ITALIC)
-------------------------------------------------------------------------
return {
  "oskarnurm/koda.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    -- 1. Initialize Koda
    -- Koda is minimal, so we enable its native transparency first
    require("koda").setup({
      transparent = true,
    })

    vim.cmd.colorscheme("koda")

    -- 2. MANUAL OVERRIDES
    -- Since Koda doesn't have a 'no_italic' global switch or complex
    -- integration tables, we manually force the highlights below.

    local highlights = {
      -- 1. TRANSPARENCY FIXES (Matching your Catppuccin config)
      Normal = { bg = "NONE" },
      NormalFloat = { bg = "NONE" },
      FloatBorder = { bg = "NONE" },
      FloatTitle = { bg = "NONE" },
      Pmenu = { bg = "NONE" },
      PmenuSel = { bg = "#2e3440" }, -- Fallback dark grey for selection if needed
      PmenuSbar = { bg = "NONE" },
      PmenuThumb = { bg = "NONE" },

      -- Telescope Transparency
      TelescopeNormal = { bg = "NONE" },
      TelescopeBorder = { bg = "NONE" },
      TelescopePromptNormal = { bg = "NONE" },
      TelescopePromptBorder = { bg = "NONE" },
      TelescopeResultsNormal = { bg = "NONE" },
      TelescopeTitle = { bg = "NONE" },

      -- NeoTree / File Explorer Transparency
      NeoTreeNormal = { bg = "NONE" },
      NeoTreeNormalNC = { bg = "NONE" },
      NeoTreeWinSeparator = { bg = "NONE" },

      -- UI Elements
      WhichKeyFloat = { bg = "NONE" },
      LazyNormal = { bg = "NONE" },
      MasonNormal = { bg = "NONE" },
      SnacksNormal = { bg = "NONE" },

      -- 2. C++ & SYNTAX ITALIC REMOVAL
      -- We explicitly set 'italic = false' to mimic style = {}
      Comment = { italic = false },
      Keyword = { italic = false },
      Type = { italic = false },
      Identifier = { italic = false },

      -- TreeSitter Specific Overrides (C++ focus)
      ["@type.builtin"] = { italic = false }, -- void, int, bool
      ["@type"] = { italic = false }, -- Classes
      ["@namespace"] = { italic = false }, -- std::
      ["@keyword"] = { italic = false }, -- return, const
      ["@keyword.function"] = { italic = false },
      ["@variable"] = { italic = false },
      ["@variable.member"] = { italic = false }, -- struct members
      ["@variable.parameter"] = { italic = false }, -- func params
      ["@function"] = { italic = false },
      ["@function.macro"] = { italic = false },
    }

    -- Apply the overrides preserving existing colors (Foregrounds)
    for group, opts in pairs(highlights) do
      local existing = vim.api.nvim_get_hl(0, { name = group })
      -- Merge existing settings with our overrides (forcing bg=NONE or italic=false)
      local new_hl = vim.tbl_extend("force", existing, opts)
      vim.api.nvim_set_hl(0, group, new_hl)
    end
  end,
}
