-- onedark.nvim setup
local onedark_ok, onedark = pcall(require, 'onedark')
if not onedark_ok then
  return
end

onedark.setup({
  style = 'darker',
  code_style = {
    comments = 'italic',
    keywords = 'none',
    functions = 'italic',
    strings = 'none',
    variables = 'none',
  },
  diagnostics = {
    darker = false,
    undercurl = true,
    background = true,
  },
})

-- Setup colorscheme
local ok, _ = pcall(vim.cmd, 'colorscheme onedark')
if not ok then
  vim.cmd 'colorscheme default'
end
