-- nvim setup
local options = {
  -- Interface
  termguicolors = true,
  number = true,
  relativenumber = false,
  wrap = false,
  title = true,
  cursorline = true,
  scrolloff = 5,
  sidescrolloff = 5,
  sidescroll = 1,
  mouse = 'a',
  showmode = false,
  splitbelow = true,
  splitright = true,
  lazyredraw = true,
  timeoutlen= 250,

  -- Indentation
  tabstop = 4,
  softtabstop = 4,
  shiftwidth = 4,
  expandtab = true,
  autoindent = true,
  smartindent = true,

  -- Search/Regexp
  gdefault = true,
  magic = true,
  hlsearch = true,
  incsearch = true,
  ignorecase = true,
  smartcase = true,
  wildignorecase = true,

  -- Folding
  foldmethod = 'expr',
  foldexpr = 'nvim_treesitter#foldexpr()',
  foldlevelstart = 99,

  -- Backup/Swap
  backup = false,
  writebackup = false,
  swapfile = false,
  autoread = true,

  -- Clipboard
  clipboard = 'unnamedplus',

  -- Completion
  completeopt = { 'menu', 'menuone', 'noselect' },
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

-- Providers
vim.g.python3_host_prog = 'python'
