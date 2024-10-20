return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	opts = {},
	-- Optional dependencies
	dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
	config = {
		require("oil").setup(),
		vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" }),
	},
}
