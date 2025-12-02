return {
	"kristijanhusak/vim-dadbod-ui",
	dependencies = {
		{ "tpope/vim-dadbod", lazy = true },
		{ "kristijanhusak/vim-dadbod-completion", ft = { "sql", "mysql", "plsql" }, lazy = true }, -- Optional
	},
	cmd = {
		"DBUI",
		"DBUIToggle",
		"DBUIAddConnection",
		"DBUIFindBuffer",
	},
	init = function()
		-- Your DBUI configuration
		vim.g.db_ui_use_nerd_fonts = 1

		-- Special config for loading db

		-- Function to refresh and connect to a specific environment
		local function connect_to_db(env)
			-- Get fresh token for the environment
			local url = vim.fn.system("~/.local/bin/db-connector " .. env .. " dpa")
			url = url:gsub("\n", "")

			-- Open DBUI if not already open
			vim.cmd("DBUI")

			-- Get current dbs as a Lua table
			local dbs = vim.g.dbs or {}

			-- Check if this database already exists
			local found = false
			for i, db in ipairs(dbs) do
				if db.name == env then
					dbs[i].url = url
					found = true
					break
				end
			end

			-- If not found, add it
			if not found then
				table.insert(dbs, { name = env, url = url })
			end

			-- Reassign the entire table back to vim.g.dbs
			vim.g.dbs = dbs

			print("Connected to " .. env .. " database dpa")
		end

		-- Main keybinding: fuzzy find environment
		vim.keymap.set("n", "<leader>db", function()
			vim.ui.select({ "dev", "qua", "acc", "prod" }, { prompt = "Select database environment:" }, function(choice)
				if choice then
					connect_to_db(choice)
				end
			end)
		end, { desc = "Connect to database" })

		-- -- Quick keybindings for specific environments
		vim.keymap.set("n", "<leader>dd", function()
			connect_to_db("dev")
		end, { desc = "Connect to [D]atabase [D]ev" })

		-- vim.keymap.set("n", "<leader>dq", function()
		-- 	connect_to_db("qua")
		-- end, { desc = "Connect to [D]atabase [Q]ua" })
		-- vim.keymap.set("n", "<leader>da", function()
		-- 	connect_to_db("acc")
		-- end, { desc = "Connect to [D]atabase [A]cc" })
		-- vim.keymap.set("n", "<leader>dp", function()
		-- 	connect_to_db("prod")
		-- end, { desc = "Connect to [D]atabase [P]rod" })
		--
	end,
}
