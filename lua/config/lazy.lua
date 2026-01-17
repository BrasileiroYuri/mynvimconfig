-- 1. Define onde o lazy será instalado
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- 2. BOOTSTRAP (OBRIGATÓRIO): Verifica se existe, senão baixa
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end

-- 3. ADICIONA AO PATH (Esta linha conserta seu erro "module not found")
vim.opt.rtp:prepend(lazypath)

-- 4. Agora sim podemos carregar o lazy
require("lazy").setup({
  spec = {
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },
    { import = "plugins" },
    { import = "plugins.themes" },
  },
  defaults = {
    lazy = false,
    version = false,
  },
  checker = { enabled = true },
})

-- 5. Define o tema (O NOME É APENAS "catppuccin")
-- Mesmo que seu arquivo seja "catppuccinm.lua", o plugin registra como "catppuccin"
vim.cmd.colorscheme("rose-pine-moon")
