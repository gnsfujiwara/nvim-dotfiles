-- nvim-treesitter setup
local tscfg_ok, ts_config = pcall(require, 'nvim-treesitter.configs')
if not tscfg_ok then
  return
end

local parsers = {
  'python',
  'bash',
  'rust',
  'lua',
  'markdown',
  'yaml',
}

ts_config.setup({
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
    disable = { 'python' },
  },
  ensure_installed = parsers,
})
