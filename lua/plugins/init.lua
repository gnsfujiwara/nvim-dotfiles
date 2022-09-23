-- packer.nvim bootstrap
local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.notify 'Installing packer...'

  PACKER_BOOTSTRAP = vim.fn.system({
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    install_path,
  })

  vim.cmd [[packadd packer.nvim]]
end

local packer_ok, packer = pcall(require, 'packer')
if not packer_ok then
  return
end

-- Auto-compile whenever plugins/init.lua is modified
vim.api.nvim_create_autocmd('BufWritePost', {
  group = vim.api.nvim_create_augroup('PackerUserConfig', { clear = true }),
  pattern = '*/plugins/init.lua',
  callback = function()
    vim.cmd 'source <afile>'
    vim.cmd 'PackerCompile profile=true'
  end,
})

-- packer.nvim setup
packer.init({
  profile = {
    enable = true,
    threshold = 0,
  },
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'rounded' })
    end,
    prompt_border = 'rounded',
  },
  max_jobs = 50,
  git = { clone_timeout = 600 },
  auto_clean = true,
  ensure_dependencies = true,
})

-- Plugins
return packer.startup(function(use)
  use 'wbthomason/packer.nvim' -- Let packer.nvim manage itself

  -- Performance
  use 'lewis6991/impatient.nvim'

  -- Look and feel
  use({
    'navarasu/onedark.nvim',
    config = function()
      require 'plugins.config.colorscheme'
    end,
  })

  use({
    'lukas-reineke/indent-blankline.nvim',
    config = function()
      require 'plugins.config.indent_blankline'
    end,
  })

  use({
    'nvim-lualine/lualine.nvim',
    requires = {
      'kyazdani42/nvim-web-devicons',
      opt = true,
    },
    config = function()
      require 'plugins.config.lualine'
    end,
  })

  use({
    'akinsho/bufferline.nvim',
    requires = 'kyazdani42/nvim-web-devicons',
    tag = 'v2.*',
    config = function()
      require 'plugins.config.bufferline'
    end,
  })

  use({
    'glepnir/dashboard-nvim',
    config = function()
      require 'plugins.config.dashboard'
    end,
  })

  use({
    'jose-elias-alvarez/null-ls.nvim',
    requires = 'nvim-lua/plenary.nvim',
    config = function()
      require 'plugins.config.null_ls'
    end,
  })

  use 'onsails/lspkind.nvim'

  use 'folke/lsp-colors.nvim'

  use 'kyazdani42/nvim-web-devicons'

  -- Completion
  use({
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'saadparwaiz1/cmp_luasnip',
    },
    config = function()
      require 'plugins.config.cmp'
    end,
  })

  use 'L3MON4D3/LuaSnip'

  use 'rafamadriz/friendly-snippets'

  -- Utils
  use 'gpanders/editorconfig.nvim'

  use({
    'kylechui/nvim-surround',
    config = function()
      require('nvim-surround').setup()
    end,
  })

  use({
    'windwp/nvim-autopairs',
    config = function()
      require 'plugins.config.autopairs'
    end,
  })

  use({
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup()
    end,
  })

  use({
    'akinsho/toggleterm.nvim',
    config = function()
      require('toggleterm').setup()
    end,
  })

  use({
    'kyazdani42/nvim-tree.lua',
    require = 'kyazdani42/nvim-web-devicons',
    config = function()
      require 'plugins.config.nvim_tree'
    end,
  })

  use({
    'folke/which-key.nvim',
    config = function()
      require 'plugins.config.which_key'
    end,
  })

  use({
    'folke/persistence.nvim',
    requires = 'nvim-lua/plenary.nvim',
    config = function()
      require 'plugins.config.persistence_nvim'
    end,
  })

  -- Navigation
  use({
    'phaazon/hop.nvim',
    config = function()
      require('hop').setup()
    end,
  })

  -- LSP
  use 'neovim/nvim-lspconfig'

  use({
    'j-hui/fidget.nvim',
    config = function()
      require('fidget').setup()
    end,
  })

  use({
    'folke/trouble.nvim',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
      require('trouble').setup()
    end,
  })

  -- Mason
  use({
    'williamboman/mason.nvim',
    config = function()
      require 'plugins.config.mason'
    end,
  })

  use 'williamboman/mason-lspconfig.nvim'

  use 'jayp0521/mason-null-ls.nvim'

  -- Telescope
  use({
    'nvim-telescope/telescope.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
      { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },
      { 'nvim-telescope/telescope-frecency.nvim', requires = 'kkharji/sqlite.lua' },
      'nvim-telescope/telescope-file-browser.nvim',
    },
    config = function()
      require 'plugins.config.telescope'
    end,
  })

  -- Treesitter
  use({
    'nvim-treesitter/nvim-treesitter',
    requires = {
      'p00f/nvim-ts-rainbow',
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    run = function()
      require('nvim-treesitter.install').update({ with_sync = true })
    end,
    config = function()
      require 'plugins.config.treesitter'
    end,
  })

  -- Git
  use({
    'TimUntersberger/neogit',
    requires = {
      'nvim-lua/plenary.nvim',
    },
    config = function()
      require 'plugins.config.neogit'
    end,
  })

  use({
    'sindrets/diffview.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
      'kyazdani42/nvim-web-devicons',
    },
    config = function()
      require('diffview').setup()
    end,
  })

  use({
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end,
  })

  -- Language support

  if PACKER_BOOTSTRAP then
    packer.sync()
  end
end)
