return {
	"Vigemus/iron.nvim",
	config = function()
		local iron = require("iron.core")
		local view = require("iron.view")
		local common = require("iron.fts.common")

		iron.setup({
			config = {
				scratch_repl = true,
				repl_definition = {
					sh = {
						-- Can be a table or a function that
						-- returns a table (see below)
						command = { "zsh" },
					},
					python = {
						command = { "python3" }, -- or { "ipython", "--no-autoindent" }
						format = common.bracketed_paste_python,
						block_dividers = { "# %%", "#%%" },
						env = { PYTHON_BASIC_REPL = "1" }, --this is needed for python3.13 and up.
					},
				},
				repl_filetype = function(bufnr, ft)
					return ft
				end,
				-- Send selections to the DAP repl if an nvim-dap session is running.
				dap_integration = true,
				repl_open_cmd = view.split.vertical.botright("%40"),
			},
			keymaps = {
				toggle_repl = "<leader>ti", -- toggles the repl open and closed.
				-- If repl_open_command is a table as above, then the following keymaps are
				-- available
				-- toggle_repl_with_cmd_1 = "<leader>rv",
				-- toggle_repl_with_cmd_2 = "<leader>rh",
				restart_repl = "<leader>iR", -- calls `IronRestart` to restart the repl
				send_motion = "<leader>ic",
				send_file = "<leader>if",
				send_line = "<leader>il",
				-- send_paragraph = "<leader>sp",
				-- send_until_cursor = "<leader>su",
				send_code_block = "<leader>ib",
				send_code_block_and_move = "<leader>ir",
				mark_motion = "<leader>mc",
				remove_mark = "<leader>md",
				-- cr = "<leader>s<cr>",
				interrupt = "<leader>iC",
				exit = "<leader>iq",
				-- clear = "<leader>cl",
			},
			-- If the highlight is on, you can change how it looks
			-- For the available options, check nvim_set_hl
			-- highlight = {
			-- italic = true,
			-- },
			ignore_blank_lines = true, -- ignore blank lines when sending visual select lines
		})

		-- iron also has a list of commands, see :h iron-commands for all available commands
		-- vim.keymap.set("n", "<leader>rf", "<cmd>IronFocus<cr>")
		-- vim.keymap.set("n", "<leader>rh", "<cmd>IronHide<cr>")
	end,
}
