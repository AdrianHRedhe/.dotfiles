return {
	"hkupty/iron.nvim",
	cmd = { "IronRepl", "IronSend", "IronSendLine" }, -- Load iron.nvim lazily when one of these commands is called
	config = function()
		require("iron.core").setup({
			config = {
				repl_definition = {
					python = {
						command = { "python" }, -- Command to start the Python REPL
					},
				},
				repl_startup = {
					python = "print('Starting Python REPL...')",
				},
				-- Enable virtual text output display
				repl_open_cmd = require("iron.view").bottom(40),
				virtual_text = true, -- Enable virtual text for output
				highlight = {
					-- Customize output and error highlighting
					error = "Error",
					output = "Comment",
				},
			},
			-- Key mappings for sending code to REPL
			keymaps = {
				send_motion = "<leader>ir", -- Send the current motion/line
				send_line = "<leader>il", -- Send the current line to REPL
			},
		})
	end,
}
