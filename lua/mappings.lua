-- General keybindings
local opts = { silent = true, noremap = true }
local map = vim.keymap.set

-- Leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Turn off arrow keys
map('n', '<UP>', '<NOP>', opts)
map('n', '<DOWN>', '<NOP>', opts)
map('n', '<LEFT>', '<NOP>', opts)
map('n', '<RIGHT>', '<NOP>', opts)

map('i', '<UP>', '<NOP>', opts)
map('i', '<DOWN>', '<NOP>', opts)
map('i', '<LEFT>', '<NOP>', opts)
map('i', '<RIGHT>', '<NOP>', opts)

map('v', '<UP>', '<NOP>', opts)
map('v', '<DOWN>', '<NOP>', opts)
map('v', '<LEFT>', '<NOP>', opts)
map('v', '<RIGHT>', '<NOP>', opts)

-- Cycle buffers
map('n', '<Tab>', '<Cmd>bnext<CR>', opts)
map('n', '<S-Tab>', '<Cmd>bprevious<CR>', opts)
