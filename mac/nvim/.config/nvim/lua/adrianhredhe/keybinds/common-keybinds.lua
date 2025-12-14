-- Basic keybinds
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

--keymap('n', '<space>', '<leader>', opts)
--vim.g.mapleader = "<Space>"
keymap("", "<Space>", "<Nop>", opts)

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Normal mode:
-- basic movements
keymap("n", "j", "h", opts)
keymap("n", "k", "j", opts)
keymap("n", "l", "k", opts)
keymap("n", "ö", "l", opts)
keymap("n", "+", "$", opts)

-- handle linewraps (test to make sure it works)
vim.keymap.set("n", "l", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true, noremap = true })
vim.keymap.set("n", "k", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true, noremap = true })

keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)
keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)

-- window management
-- keymap("n", "<C-j>", "<C-w>h", opts)
-- keymap('n', '<C-k>', '<C-w>j', opts)
-- keymap('n', '<C-l>', '<C-w>k', opts)
-- keymap("n", "<C-ö>", "<C-w>l", opts)
-- use :echo getchar() to find the ascii code interpreted by nvim
-- keymap('n', vim.fn.nr2char(246), '<C-w>l', opts)
keymap("n", "|", "<C-w>v", opts)
--keymap('n', '_', '<C-w>s', opts)

-- memory management
--keymap("n", "<leader>d", [["md]], opts)
--keymap("n", "<leader>y", [["my]], opts)
--keymap("n", "<leader>p", [["mp]], opts)
--keymap('n', '<leader>c', [["_dP]], opts)

-- leader / utility
-- keymap("n", "<leader>dw", ":w<CR>", { desc = "[D]ocument [W]rite" })
-- keymap("n", "<leader>dq", ":q<CR>", { desc = "[D]ocument [Q]uit" })

-- simple stuff
keymap("n", "U", "<C-r>", opts)
