-- Setup colorscheme
local ok, _ = pcall(vim.cmd, 'colorscheme rvcs')
if not ok then
  vim.cmd 'colorscheme default'
end
