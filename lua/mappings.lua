-- General keybindings
local opts = { silent = true, noremap = true }

-- Leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Turn off arrow keys
vim.keymap.set('n', '<UP>', '<NOP>', opts)
vim.keymap.set('n', '<DOWN>', '<NOP>', opts)
vim.keymap.set('n', '<LEFT>', '<NOP>', opts)
vim.keymap.set('n', '<RIGHT>', '<NOP>', opts)

vim.keymap.set('i', '<UP>', '<NOP>', opts)
vim.keymap.set('i', '<DOWN>', '<NOP>', opts)
vim.keymap.set('i', '<LEFT>', '<NOP>', opts)
vim.keymap.set('i', '<RIGHT>', '<NOP>', opts)

vim.keymap.set('v', '<UP>', '<NOP>', opts)
vim.keymap.set('v', '<DOWN>', '<NOP>', opts)
vim.keymap.set('v', '<LEFT>', '<NOP>', opts)
vim.keymap.set('v', '<RIGHT>', '<NOP>', opts)

-- Cycle buffers
vim.keymap.set('n', '<Tab>', '<Cmd>bnext<CR>', opts)
vim.keymap.set('n', '<S-Tab>', '<Cmd>bprevious<CR>', opts)
