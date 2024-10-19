vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.textwidth = 60
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

--vim.opt.syntax = on
vim.opt.ignorecase = true

vim.opt.incsearch = true
--vim.opt.nospell = true
--vim.opt.spell.spelllang = en_us
--vim.opt.termencoding = utf8

-- undodir
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- system clipboard
vim.opt.clipboard = "unnamedplus"

-- highlight yank
vim.cmd([[
    augroup highlight_yank    
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank({timeout=150})
    augroup end
]])

require("adrianhredhe.options.cool-nvim")
