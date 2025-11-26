return {
	"jeangiraldoo/codedocs.nvim",
	-- Remove the 'dependencies' section if you don't plan on using nvim-treesitter
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
	},
	config = function()
		require("codedocs").setup({
			default_styles = { python = "Google" },
		})
	end,
	keys = {
		{
			"<leader>gd",
			"<cmd> lua require('codedocs').insert_docs() <CR>",
			desc = "[G]enerate [D]ocstrings for python",
		},
	},
}
