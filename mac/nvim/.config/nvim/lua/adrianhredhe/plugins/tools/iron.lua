return {
	"Vigemus/iron.nvim",
	config = function()
		local iron = require("iron.core")
		local view = require("iron.view")
		local common = require("iron.fts.common")

		iron.setup({
			config = {
				scratch_repl = true,
				close_window_on_exit = true,
				repl_definition = {
					sh = {
						command = { "zsh" },
					},
					python = {
						command = {
							"uv",
							"run",
							"--with",
							"ipython",
							"ipython",
							"--no-autoindent",
						},
						block_dividers = { "# %%", "#%%", "# Databricks notebook source", "# COMMAND ----------" },
						format = common.bracketed_paste_python,
						env = { PYTHON_BASIC_REPL = "1" }, --this is needed for python3.13 and up.
					},
					databricks = {
						command = {
							"uv",
							"run",
							"--with",
							"ipython",
							"ipython",
							"--no-autoindent",
							"--profile=databricks",
						},
						block_dividers = { "# %%", "#%%", "# Databricks notebook source", "# COMMAND ----------" },
						format = common.bracketed_paste_python,
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
				restart_repl = "<leader>iR", -- calls `IronRestart` to restart the repl
				send_motion = "<leader>im", -- [I]ron [M]otion
				send_file = "<leader>if", -- [I]ron [F]ile
				send_line = "<leader>il", -- [I]ron [L]ine
				send_until_cursor = "<leader>iu", -- [I]ron [U]ntil cursor
				send_code_block = "<leader>ib", -- [I]ron code [B]lock
				send_code_block_and_move = "<leader>ir", -- [I]ron [R]un
				interrupt = "<leader>ic", -- [I]ron interupt (Ctrl + [C])
				exit = "<leader>iq", -- [I]ron [Q]uit
				-- cr = "<leader>s<cr>",
				-- clear = "<leader>cl",
			},
			ignore_blank_lines = true, -- ignore blank lines when sending visual select lines
		})

		vim.keymap.set("n", "<leader>id", function()
			local bufnr = vim.api.nvim_get_current_buf()
			local first_line = vim.api.nvim_buf_get_lines(bufnr, 0, 1, false)[1] or ""

			if first_line:find("# Databricks notebook source") then
				iron.attach("databricks", bufnr)
				iron.send_code_block(false)
			end
		end, {
			desc = "[I]ron [D]atabricks",
			noremap = true,
			silent = true,
		})
	end,
}
