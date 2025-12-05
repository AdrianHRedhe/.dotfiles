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
	require("plugins.movement.vim-repeat"), -- repeat actions with . extends plugins
	require("plugins.movement.telescope"), -- Fuzzy find anything and everything !!!

	require("plugins.ui.which-key"), -- Helpful to remember all mappings to <leader>
	require("plugins.ui.undotree"), -- Traverse all undohistory as a tree wow!!
	require("plugins.ui.todo-comments"), -- shows TODOs etc nicely
	require("plugins.ui.trouble"), -- nice way to traverse diagnostics + qflist
	require("plugins.ui.dressing"), -- ui enabler
	require("plugins.ui.noice"), -- Nice ui for : commands + notifications
	require("plugins.ui.oil"), -- Beautiful handling of files and editing them

	-- LSP stuff
	require("plugins.lsp.lsp-kickstart"), -- LSP setup with CMP and formatting
	require("plugins.lsp.nvim-lint"), -- Linting per file type
	require("plugins.lsp.treesitter-kickstart"), -- formatting and textobjects + LSP enabler

	-- Text manipulation
	require("plugins.text.mini-kickstart"), -- mainly improved text-objects
	require("plugins.text.replacer"), -- replace directly in qflist
	require("plugins.text.substitute"), -- s to substitute whats in register
	require("plugins.text.autopairs"), -- automatic closing brackets etc
	require("plugins.text.codedocs"), -- Docstrings

	-- tools
	require("plugins.tools.fterm"), -- Floating terminal
	require("plugins.tools.auto-session"), -- Sessions on empty nvim command
	require("plugins.tools.dadbod"), -- DB management
	-- AI line completion from local llm
	-- require("plugins.tools.minuet"),

	-- Git plugins
	require("plugins.git.fugitive"), -- Git plugin with big G
	require("plugins.git.gv"), -- log history
	require("plugins.git.flog"), -- log history
	require("plugins.git.gitsigns"), -- Shows changes since last commit

	-- movement
	require("plugins.movement.flash"), -- better f/t / F/T + quick visual navigation
	require("plugins.movement.tmux_navigator"), -- Seamless navigation between tmux and nvim panes
	require("plugins.movement.harpoon"), -- Could be nice not using a lot right now though
})
