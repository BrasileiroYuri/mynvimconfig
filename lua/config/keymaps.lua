local map = vim.keymap.set

-- Salvar com Ctrl+S (Modo Normal e Inserção)
map({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save File" })

-- Sair do modo de inserção rapidamente com 'jk' (muito usado por vimmers)
map("i", "jk", "<Esc>", { desc = "Exit Insert Mode" })

-- Melhor navegação entre janelas (Ctrl + h/j/k/l)
map("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window", remap = true })
map("n", "<C-j>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
map("n", "<C-k>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
map("n", "<C-l>", "<C-w>l", { desc = "Go to Right Window", remap = true })

-- Compilar e Rodar C rápido (Isso é vida!)
-- Se tiver um Makefile, ele roda 'make'. Se não, tenta compilar o arquivo atual.
map("n", "<leader>cc", function()
  if vim.fn.filereadable("Makefile") == 1 then
    vim.cmd("term make && ./main") -- Ajuste './main' para o nome do seu binário
  else
    local file = vim.fn.expand("%")
    local output = vim.fn.expand("%:r")
    vim.cmd("term gcc " .. file .. " -o " .. output .. " && ./" .. output)
  end
end, { desc = "Compile and Run C" })
