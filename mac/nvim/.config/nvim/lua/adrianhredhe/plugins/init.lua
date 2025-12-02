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
	-- require("plugins.vim-surround"),
	-- repeat plugin
	require("plugins.vim-repeat"),
	--  This is for another
	-- require("plugins.vim-fanfingtastic"),
	-- TELESCOPE
	require("plugins.movement.telescope"),
	-- WHICH KEY
	require("plugins.which-key"),

	-- LSP stuff
	require("plugins.lsp.lsp-kickstart"),
	require("plugins.lsp.nvim-lint"),
	require("plugins.lsp.treesitter-kickstart"),

	-- NVIM-TREE
	-- require("plugins.nvim-web-devicons"),
	-- require("plugins.nvim-tree"),

	-- kickstart plugins:
	require("plugins.text.mini-kickstart"),
	require("plugins.ui.todo-comments"),

	-- HARPOON
	require("plugins.movement.harpoon"),

	-- REPLACER FOR QUICKFIXLIST
	require("plugins.text.replacer"),

	-- UNDO TREE
	require("plugins.undotree"),

	-- SUBSTITUTION
	require("plugins.text.substitute"),

	-- TROUBLE
	require("plugins.trouble"),

	-- DRESSING (NICE UI FOR RENAMING THINGS)
	require("plugins.ui.dressing"),
	-- AutoPairs
	require("plugins.text.autopairs"),
	-- FTERM
	require("plugins.fterm"),
	require("plugins.ui.noice"),

	-- Auto Session
	require("plugins.auto-session"),

	require("plugins.oil"),
	-- require("plugins.molten"),

	-- Git plugins
	require("plugins.git.fugitive"),
	require("plugins.git.gv"),
	require("plugins.git.flog"),
	require("plugins.git.gitsigns"),
	-- require("plugins.advanced-git-search"),

	-- Dadbod / DB management
	require("plugins.dadbod"),

	-- AI line completion from local llm
	-- require("plugins.minuet"),

	-- movement
	require("plugins.movement.flash"),
	require("plugins.movement.tmux_navigator"),

	-- Docstrings
	require("plugins.text.codedocs"),
})

-- require("plugins.dadbod_connections")
