return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	opts = {},
	-- Optional dependencies
	dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
	config = {
		--require("oil").setup(),
		vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" }),
		default_file_explorer = true,
		skip_confirm_for_simple_edits = true,
		natural_order = true,
		view_options = {
			show_hidden = true,
		},
		win_options = {
			wrap = true,
		},
	},

	-- Shortcut for changing your workdirectory
	vim.keymap.set("n", "<leader>cd", function()
		-- Check if we're in an Oil buffer
		if vim.bo.filetype == "oil" then
			local oil = require("oil")
			local dir = oil.get_current_dir()
			if dir then
				vim.cmd("cd " .. vim.fn.fnameescape(dir))
				print("CWD changed to: " .. dir)
			end
		else
			-- Regular file: change to file's directory
			local filepath = vim.fn.expand("%:p:h")
			if filepath ~= "" then
				vim.cmd("cd " .. vim.fn.fnameescape(filepath))
				print("CWD changed to: " .. filepath)
			end
		end
	end, { desc = "[C]hange working [D]irectory", noremap = true, silent = true }),
}
