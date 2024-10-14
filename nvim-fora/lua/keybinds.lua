require "common-keybinds"

local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true}

-- TELESCOPE
-- local builtin = require('telescope')
vim.keymap.set('n', '<leader>ff', ':Telescope find_files<CR>', { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', ':Telescope live_grep<CR>', { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fb', ':Telescope buffers<CR>', { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fh', ':Telescope help_tags<CR>', { desc = 'Telescope find files' })
