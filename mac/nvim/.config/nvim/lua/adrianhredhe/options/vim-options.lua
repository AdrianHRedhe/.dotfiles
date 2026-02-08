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

-- Detect if we're in an SSH session
local function is_ssh()
	return os.getenv("SSH_CLIENT") ~= nil or os.getenv("SSH_TTY") ~= nil
end

-- Clipboard settings system clipboard if not running ssh.
if is_ssh() then
	-- Use OSC 52 for remote sessions
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
else
	-- Use system clipboard locally
	vim.opt.clipboard = "unnamedplus"
end

-- highlight yank
vim.cmd([[
    augroup highlight_yank    
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank({timeout=150})
    augroup end
]])

vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
