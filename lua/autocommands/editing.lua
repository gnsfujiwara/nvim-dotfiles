-- Do not insert new comments after comments
vim.api.nvim_create_autocmd('BufEnter', {
  pattern = '*',
  command = 'set formatoptions-=cro',
})

-- Trim whitespaces before saving
vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = '*',
  command = '%s/\\s\\+$//e',
})
