-- Modify Lua package path to include 'adrianhredhe/'
local config_path = vim.fn.stdpath("config") .. "/lua/adrianhredhe/"
package.path = package.path .. ";" .. config_path .. "?.lua"

-- Install lazy.nvim if not installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Setup Lazy.nvim and load plugins
require("lazy").setup({
	-- Tokyonight theme
	--    require "plugins/tokyonight-theme"
	{
		"folke/tokyonight.nvim",
		priority = 1000, -- Ensure it loads first
		config = function()
			vim.cmd([[colorscheme tokyonight]])
		end,
	},
	-- {
	-- 	"catppuccin/nvim",
	-- 	name = "catppuccin",
	-- 	priority = 1000,
	-- 	config = function()
	-- 		vim.cmd([[colorscheme catppuccin]])
	-- 	end,
	-- },
	-- vim-surround plugin
	require("plugins.vim-surround"),
	-- repeat plugin
	require("plugins.vim-repeat"),
	--  This is for another
	require("plugins.vim-fanfingtastic"),
	-- TELESCOPE
	require("plugins.telescope"),
	-- WHICH KEY
	require("plugins.which-key"),
	-- LSP kickstart
	require("plugins.lsp-kickstart"),
	-- GITSIGNS
	require("plugins.gitsigns"),
	-- NVIM-TREE
	require("plugins.nvim-web-devicons"),
	require("plugins.nvim-tree"),

	-- kickstart plugins:
	require("plugins.treesitter-kickstart"),
	require("plugins.mini-kickstart"),
	require("plugins.todo-comments"),

	-- HARPOON
	require("plugins.harpoon"),

	-- REPLACER FOR QUICKFIXLIST
	require("plugins.replacer"),

	-- UNDO TREE
	require("plugins.undotree"),

	-- SUBSTITUTION
	require("plugins.substitute"),

	-- TROUBLE
	require("plugins.trouble"),

	-- DRESSING (NICE UI FOR RENAMING THINGS)
	require("plugins.dressing"),
	-- AutoPairs
	require("plugins.autopairs"),
	-- FTERM
	require("plugins.fterm"),
	require("plugins.noice"),

	-- Auto Session
	require("plugins.auto-session"),

	require("plugins.oil"),
	require("plugins.molten"),
	require("plugins.fugitive"),
	-- require("plugins.neogit"),
	require("plugins.gv"),
	require("plugins.dadbod"),

	require("plugins.tmux_navigator"),
})

-- require("plugins.dadbod_connections")
