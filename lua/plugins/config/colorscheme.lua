-- onedark.nvim setup
local onedark_ok, onedark = pcall(require, 'onedark')
if not onedark_ok then
  return
end

onedark.setup({
  style = 'darker',
  toggle_style_key = '<leader>ts',
  toggle_style_list = { 'darker' },
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

onedark.load()
