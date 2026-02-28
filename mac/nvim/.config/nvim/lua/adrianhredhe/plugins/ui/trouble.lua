return {
	"folke/trouble.nvim",
	cmd = "Trouble",
	config = function()
		require("trouble").setup({
			auto_preview = true,
			focus = true,
			follow = true,
			preview = {
				type = "main",
				scratch = false,
			},
		})
	end,
	keys = {
		{
			"<leader>tx",
			"<cmd>Trouble diagnostics toggle<cr>",
			desc = "[T]oggle X(Trouble)",
		},
		{
			"<leader>tq",
			"<cmd>Trouble qflist toggle<cr>",
			desc = "[T]oggle [Q]uickfix List (Trouble)",
		},
		-- 	"<leader>cl",
		-- 	"<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
		-- 	desc = "LSP Definitions / references / ... (Trouble)",
		-- },
		-- {
		-- 	"<leader>xL",
		-- 	"<cmd>Trouble loclist toggle<cr>",
		-- 	desc = "Location List (Trouble)",
		-- },
		-- {
		-- 	"<leader>xQ",
		-- 	"<cmd>Trouble qflist toggle<cr>",
		-- 	desc = "Quickfix List (Trouble)",
		-- },
	},
}
