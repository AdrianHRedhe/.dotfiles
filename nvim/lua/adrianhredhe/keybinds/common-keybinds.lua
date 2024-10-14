-- Basic keybinds
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true}

--keymap('n', '<space>', '<leader>', opts)
--vim.g.mapleader = "<Space>"
keymap("", "<Space>", "<Nop>", opts)

vim.g.mapleader = " "
vim.g.maplocalleader = " "


-- Normal mode:
-- basic movements 
keymap('n', 'j', 'h', opts)
keymap('n', 'k', 'j', opts)
keymap('n', 'l', 'k', opts)
keymap('n', 'ö', 'l', opts)
keymap('n', '+', '$', opts)

keymap('n', '<C-d>', '<C-d>zz', opts)
keymap('n', '<C-u>', '<C-u>zz', opts)
keymap('n', 'n', 'nzzzv', opts)
keymap('n', 'N', 'Nzzzv', opts)

-- window management
keymap('n', '<C-j>', '<C-w>h', opts)
-- keymap('n', '<C-k>', '<C-w>j', opts)
-- keymap('n', '<C-l>', '<C-w>k', opts)
keymap('n', '<C-ö>', '<C-w>l', opts)
-- use :echo getchar() to find the ascii code interpreted by nvim
-- keymap('n', vim.fn.nr2char(246), '<C-w>l', opts)
keymap('n', '|', '<C-w>v', opts)
--keymap('n', '_', '<C-w>s', opts)

-- memory management
keymap('n', '<leader>d', [["md]], opts)
keymap('n', '<leader>y', [["my]], opts)
keymap('n', '<leader>p', [["mp]], opts)
keymap('n', '<leader>x', [["mx]], opts)
--keymap('n', '<leader>c', [["_dP]], opts)

-- leader / utility
keymap('n', '<leader>w', ':w<CR>',opts)
keymap('n', '<leader>q', ':q<CR>',opts)


-- simple stuff
keymap('n', 'U', '<C-r>', opts)
