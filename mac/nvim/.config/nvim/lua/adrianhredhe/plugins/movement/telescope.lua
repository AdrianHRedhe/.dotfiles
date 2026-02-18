return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("telescope").setup({
			extensions = {
				["ui-select"] = {
					require("telescope.themes").get_dropdown(),
				},
			},
		})

		-- Enable Telescope extensions if they are installed
		pcall(require("telescope").load_extension, "fzf")
		pcall(require("telescope").load_extension, "ui-select")

		-- See `:help telescope.builtin`
		local builtin = require("telescope.builtin")
		--[[
      vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = '[S]earch [H]elp' })
      vim.keymap.set('n', '<leader>sk', builtin.keymaps, { desc = '[S]earch [K]eymaps' })
      vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = '[S]earch [F]iles' })
      vim.keymap.set('n', '<leader>sw', builtin.grep_string, { desc = '[S]earch current [W]ord' })
      vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = '[S]earch by [G]rep' })
      vim.keymap.set('n', '<leader>sd', builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })
      vim.keymap.set('n', '<leader>sr', builtin.resume, { desc = '[S]earch [R]esume' })
      vim.keymap.set('n', '<leader>s.', builtin.oldfiles, { desc = '[S]earch Recent Files ("." for repeat)' })
      --]]
		vim.keymap.set("n", "<leader>ft", builtin.builtin, { desc = "[F]ind [T]elescope picker" })
		vim.keymap.set("n", "<leader><leader>", builtin.buffers, { desc = "[ ] Find existing buffers" })

		-- Slightly advanced example of overriding default behavior and theme
		vim.keymap.set("n", "<leader>/", function()
			-- You can pass additional configuration to Telescope to change the theme, layout, etc.
			builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
				winblend = 10,
				previewer = false,
			}))
		end, { desc = "[/] Fuzzily search in current buffer" })

		-- It's also possible to pass additional configuration options.
		--  See `:help telescope.builtin.live_grep()` for information about particular keys
		vim.keymap.set("n", "<leader>f/", function()
			builtin.live_grep({
				grep_open_files = true,
				prompt_title = "Live Grep in Open Files",
			})
		end, { desc = "[f]ind [/] in Open Files" })

		-- Shortcut for searching your Neovim configuration files
		vim.keymap.set("n", "<leader>fn", function()
			builtin.find_files({ cwd = vim.fn.stdpath("config") })
		end, { desc = "[f]ind [N]eovim files" })

		-- Shortcut for searching prev commits
		vim.keymap.set("n", "<leader>fc", function()
			builtin.git_commits()
		end, { desc = "[F]ind git [C]commits" })
		-- Shortcut for searching commits in current buffer
		vim.keymap.set("n", "<leader>fb", function()
			builtin.git_bcommits()
		end, { desc = "[F]ind git [B]uffer commits" })
		-- Shortcut for searching git branches
		vim.keymap.set("n", "<leader>fs", function()
			builtin.git_branches()
		end, { desc = "[F]ind git branch and [S]witch" })

		-- Shortcut for swapping registers
		vim.keymap.set("n", "<leader>fr", function()
			builtin.registers()
		end, { desc = "[F]ind [R]egisters" })

		vim.keymap.set("n", "<leader>fw", ':Telescope grep_string search="<CR>', { desc = "[F]ind [W]ord" })

		vim.keymap.set("n", "<leader>ff", function()
			builtin.find_files({
				find_command = { "rg", "--files", "--iglob", "!.git", "--hidden" },
			})
		end, { desc = "[F]ind [F]iles" })

		vim.keymap.set("n", "<leader>fg", function()
			builtin.live_grep()
		end, { desc = "[F]ind live [G]rep" })

		vim.keymap.set("n", "<leader>fh", function()
			builtin.help_tags()
		end, { desc = "[F]ind [H]elp tags" })

		vim.keymap.set("n", "<leader>fk", function()
			builtin.keymaps()
		end, { desc = "[F]ind [K]eymaps" })
	end,
}
