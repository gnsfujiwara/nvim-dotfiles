--[[

gnsfujiwara's neovim configuration

Copyright (C) Gustavo Vinícios de Souza
Author: Gustavo Vinícios de Souza <gnsfujiwara@disroot.org>
URL: https://github.com/gnsfujiwara/nvim-dotfiles
This file is not part of neovim.
This file is free software.

--]]

-- impatient.nvim setup
local impatient_ok, impatient = pcall(require, 'impatient')
if impatient_ok then
  impatient.enable_profile()
end

-- General options
require 'options'

-- User mappings
require 'mappings'

-- Plugins
require 'plugins'

-- LSP
require 'lsp'

-- Autocommands
require 'autocommands'
