local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- TELESCOPE
-- local builtin = require('telescope')
keymap("n", "<leader>ff", ":Telescope find_files<CR>", { desc = "Telescope find files" })
keymap("n", "<leader>fg", ":Telescope live_grep<CR>", { desc = "Telescope live_grep" })
keymap("n", "<leader>fb", ":Telescope buffers<CR>", { desc = "Telescope find buffers" })
keymap("n", "<leader>fh", ":Telescope help_tags<CR>", { desc = "Telescope help_tags" })
keymap("n", "<leader>fk", ":Telescope keymaps<CR>", { desc = "Telescope keymaps" })

-- Buffers
keymap("n", "<C-K>", ":bprev<CR>", opts)
keymap("n", "<C-L>", ":bnext<CR>", opts)

keymap("n", "<space>k", "K", opts)
keymap("n", "J", "<c-w>h", opts)
keymap("n", "L", "<c-w>k", opts)
keymap("n", "K", "<c-w>j", opts)
keymap("n", "Ö", "<c-w>l", opts)
keymap("n", "<c-j>", "J", opts)

-- Minor utils
keymap("n", "gd", ":set ft=git<CR>", opts)

-- Enable Ctrl-Z suspension for Vim in Git Bash (Windows)
vim.api.nvim_set_keymap(
	"n",
	"<C-z>",
	":silent !stty -ixon<CR>:silent !kill -STOP $PPID<CR>",
	{ noremap = true, silent = true }
)
