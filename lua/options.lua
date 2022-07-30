-- nvim setup
local options = {
  -- Performance
  ttyfast = true,
  lazyredraw = true,
  hidden = true,

  -- Interface
  termguicolors = true,
  number = true,
  relativenumber = true,
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

  -- Folding
  foldmethod = 'expr',
  foldexpr = 'nvim_treesitter#foldexpr()',
  foldlevelstart = 99,

  -- Wild settings
  wildmenu = true,
  wildignorecase = true,

  -- Encoding
  encoding = 'utf-8',

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
