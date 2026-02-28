return { -- Adds git related signs to the gutter, as well as utilities for managing changes
	"lewis6991/gitsigns.nvim",
	opts = {
		signs = {
			add = { text = "+" },
			change = { text = "~" },
			delete = { text = "_" },
			topdelete = { text = "‾" },
			changedelete = { text = "~" },
		},
	},
	config = function(_, opts)
		local gitsigns = require("gitsigns")
		gitsigns.setup(opts)

		-- Toggles
		vim.keymap.set("n", "<leader>tb", function()
			gitsigns.toggle_current_line_blame()
		end, { desc = "[T]oggle line-[B]lame" })

		vim.keymap.set("n", "<leader>tw", function()
			gitsigns.toggle_word_diff()
		end, { desc = "[T]oggle [W]ord diff" })

		-- Movement
		vim.keymap.set("n", "<leader>hp", function()
			gitsigns.nav_hunk("prev")
		end, { desc = "goto [H]unk [P]rev" })

		vim.keymap.set("n", "<leader>hn", function()
			gitsigns.nav_hunk("next")
		end, { desc = "goto [H]unk [N]ext" })

		-- Hunk actions
		vim.keymap.set("n", "<leader>hs", function()
			gitsigns.stage_hunk()
		end, { desc = "[H]unk [S]tage" })

		vim.keymap.set("n", "<leader>hu", function()
			gitsigns.undo_stage_hunk()
		end, { desc = "[H]unk [U]ndo stage" })

		vim.keymap.set("n", "<leader>hr", function()
			gitsigns.reset_hunk()
		end, { desc = "[H]unk [R]eset" })
	end,
}
