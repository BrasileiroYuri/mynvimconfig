local function augroup(name)
  return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
end

-- Remover espaços em branco no final das linhas ao salvar
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  group = augroup("trim_whitespace"),
  pattern = "*",
  command = [[%s/\s\+$//e]],
})

-- Desativar 'wrap' (quebra de linha automática) apenas para arquivos C/H
-- Código C fica feio se quebrar linha sozinho visualmente.
vim.api.nvim_create_autocmd("FileType", {
  group = augroup("c_settings"),
  pattern = { "c", "cpp", "h", "hpp" },
  callback = function()
    vim.opt_local.wrap = false
  end,
})
