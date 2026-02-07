vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 12

-- vim.opt.textwidth = 60
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
-- vim.opt.smartindent = true
vim.opt.swapfile = false

--vim.opt.syntax = on
vim.opt.ignorecase = true

vim.opt.incsearch = true
--vim.opt.nospell = true
--vim.opt.spell.spelllang = en_us
--vim.opt.termencoding = utf8

-- undodir
if vim.g.vscode then
	-- NOTHING
else
	vim.opt.undofile = true
	vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
end

-- Clipboard using system clipboard with osc 52 included e.g. copy/paste to/from remote
vim.g.clipboard = {
	name = "OSC 52",
	copy = {
		["+"] = require("vim.ui.clipboard.osc52").copy("+"),
		["*"] = require("vim.ui.clipboard.osc52").copy("*"),
	},
	paste = {
		["+"] = require("vim.ui.clipboard.osc52").paste("+"),
		["*"] = require("vim.ui.clipboard.osc52").paste("*"),
	},
}
-- Use system clipboard always
vim.opt.clipboard = "unnamedplus"

-- highlight yank
vim.cmd([[
    augroup highlight_yank    
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank({timeout=150})
    augroup end
]])

vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
