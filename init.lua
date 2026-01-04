-- init.lua
-- 1. Carrega opções básicas (números de linha, tabs, etc)
require("config.options")

-- 2. Carrega atalhos de teclado globais
require("config.keymaps")

-- 3. Carrega autocomandos (comportamentos automáticos)
require("config.autocmds")

-- 4. Carrega o Lazy, os Plugins e APLICA O TEMA
require("config.lazy")
