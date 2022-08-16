-- nvim-treesitter setup
local ok, _ = pcall(require, 'nvim-treesitter')
if not ok then
  return
end

require('nvim-treesitter.configs').setup({
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
    disable = { 'python' },
  },
  ensure_installed = {
    'c',
    'cpp',
    'python',
    'bash',
    'rust',
    'lua',
    'markdown',
    'yaml',
    'go',
    'gomod',
  },
})
