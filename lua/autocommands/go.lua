vim.api.nvim_create_augroup('Go', { clear = true })

-- Go code style
vim.api.nvim_create_autocmd('FileType', {
  group = 'Go',
  pattern = 'go',
  callback = function()
    vim.opt_local.tabstop = 4
    vim.opt_local.softtabstop = 4
    vim.opt_local.shiftwidth = 4
    vim.opt_local.expandtab = false
  end,
})
