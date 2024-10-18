local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- TELESCOPE
-- local builtin = require('telescope')
keymap("n", "<leader>ff", ":Telescope find_files<CR>", { desc = "Telescope find files" })
keymap("n", "<leader>fg", ":Telescope live_grep<CR>", { desc = "Telescope live_grep" })
keymap("n", "<leader>fb", ":Telescope buffers<CR>", { desc = "Telescope find buffers" })
keymap("n", "<leader>fh", ":Telescope help_tags<CR>", { desc = "Telescope help_tags" })
keymap("n", "<leader>fk", ":Telescope keymaps<CR>", { desc = "Telescope keymaps" })

-- FROM KICKSTART
