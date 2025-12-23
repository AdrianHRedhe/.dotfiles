return {
	"nvim-neotest/neotest",
	dependencies = {
		"nvim-neotest/nvim-nio",
		"nvim-lua/plenary.nvim",
		"antoinemadec/FixCursorHold.nvim",
		"nvim-treesitter/nvim-treesitter",
		"nvim-neotest/neotest-python",
	},
	config = function()
		require("neotest").setup({
			adapters = {
				require("neotest-python")({
					dap = { justMyCode = false },
					runner = "pytest",
				}),
			},
		})

		local neotest = require("neotest")

		-- Run test
		vim.keymap.set("n", "<leader>nr", function()
			neotest.run.run()
		end, { desc = "[N]eotest [R]un" })

		-- Test output
		vim.keymap.set("n", "<leader>no", function()
			neotest.output.open()
		end, { desc = "[N]eotest [O]utput" })

		-- Test summary
		vim.keymap.set("n", "<leader>tn", function()
			neotest.summary.toggle()
		end, { desc = "[T]oggle [N]eotest summary" })

		-- Run all tests
		vim.keymap.set("n", "<leader>na", function()
			neotest.run.run({ suite = true })
		end, { desc = "[N]eotest run [A]ll tests" })
	end,
}
