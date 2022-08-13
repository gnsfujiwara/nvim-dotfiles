vim.api.nvim_create_augroup('Go', { clear = true })

-- Go code style
vim.api.nvim_create_autocmd('FileType', {
  group = 'Go',
  pattern = 'go',
  callback = function()
    vim.opt.tabstop = 4
    vim.opt.softtabstop = 4
    vim.opt.shiftwidth = 4
    vim.opt.expandtab = false
  end,
})
