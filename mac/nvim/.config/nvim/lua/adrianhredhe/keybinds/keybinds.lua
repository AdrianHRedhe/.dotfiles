local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Buffers
keymap("n", "<C-K>", ":bprev<CR>", opts)
keymap("n", "<C-L>", ":bnext<CR>", opts)

-- Hover if you want to redefine K
keymap("n", "<space>k", "K", opts)
keymap("n", "√", "<c-w>h", opts) -- This is Alt-j
keymap("n", "ª", "<c-w>k", opts) -- This is Alt-k
keymap("n", "ﬁ", "<c-w>j", opts) -- This is Alt-l
keymap("n", "ø", "<c-w>l", opts) -- This is Alt-ö
keymap("n", "<C-j>", "J", opts)
keymap("n", "Ö", "i<CR><esc>k$", opts)
