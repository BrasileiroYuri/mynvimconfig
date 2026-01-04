-- Numeração relativa (ajuda muito com movimentos como '5j' ou '10k')
vim.opt.number = true
vim.opt.relativenumber = true

-- Indentação padrão do Kernel Linux / C Style (Tab = 8 ou 4 espaços)
-- Aqui estou configurando para 4 espaços, que é mais moderno.
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true -- Converte Tab em espaços (evita bagunça no git)

-- Margem de segurança ao rolar a tela (mantém 8 linhas visíveis acima/abaixo)
vim.opt.scrolloff = 8

-- Busca case-insensitive (ignora maiúscula/minúscula se digitar tudo minúsculo)
vim.opt.ignorecase = true
vim.opt.smartcase = true
