vim.api.nvim_create_augroup('Lua', { clear = true })

-- Lua code style
vim.api.nvim_create_autocmd('FileType', {
  group = 'Lua',
  pattern = 'lua',
  callback = function()
    vim.opt.tabstop = 2
    vim.opt.softtabstop = 2
    vim.opt.shiftwidth = 2
    vim.opt.expandtab = true
  end,
})
