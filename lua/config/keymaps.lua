local map = vim.keymap.set
map("x", "<leader>p", [["_dP]], { desc = "Paste without losing yank" })
map({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save File" })
map("i", "<C-s>", "<C-o><cmd>w<cr>", { desc = "Save File" })

-- Remapeia o 'p' no modo visual para nunca substituir o registrador
-- O "_d joga o texto selecionado (que será apagado) no "buraco negro"
map("x", "p", [["_dP]], { desc = "Paste without replacing register" })

map("n", "<C-d>", "<C-d>zz", { desc = "Scroll Down and Center" })
map("n", "<C-u>", "<C-u>zz", { desc = "Scroll Up and Center" })
map("n", "n", "nzzzv", { desc = "Next Search Result and Center" })
map("n", "N", "Nzzzv", { desc = "Prev Search Result and Center" })

-- Sair do modo de inserção rapidamente com 'jk' (muito usado por vimmers)
map("i", "jk", "<Esc>", { desc = "Exit Insert Mode" })

-- Melhor navegação entre janelas (Ctrl + h/j/k/l)
map("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window", remap = true })
map("n", "<C-j>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
map("n", "<C-k>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
map("n", "<C-l>", "<C-w>l", { desc = "Go to Right Window", remap = true })
