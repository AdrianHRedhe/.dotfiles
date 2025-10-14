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
keymap("n", "√", "<c-w>h", opts) -- This is Alt-j
keymap("n", "ª", "<c-w>k", opts) -- This is Alt-k
keymap("n", "ﬁ", "<c-w>j", opts) -- This is Alt-l
keymap("n", "ø", "<c-w>l", opts) -- This is Alt-ö
keymap("n", "<c-j>", "J", opts)
