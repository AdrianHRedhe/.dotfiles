return {
	"rmagatti/auto-session",
	lazy = false,
	config = function()
		require("auto-session").setup({
			session_lens = {
				-- If load_on_setup is false, make sure you use `:SessionSearch` to open the picker as it will initialize everything first
				load_on_setup = true,
				previewer = false,
				mappings = {
					-- Mode can be a string or a table, e.g. {"i", "n"} for both insert and normal mode
					delete_session = { "i", "<nop>" },
					alternate_session = { "i", "<nop>" },
					copy_session = { "i", "<nop>" },
				},
				theme_conf = {
					border = true,
					-- layout_config = {
					--   width = 0.8, -- Can set width and height as percent of window
					--   height = 0.5,
					-- },
				},
				suppressed_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
				vim.keymap.set(
					"n",
					"<leader>wr",
					require("auto-session.session-lens").search_session,
					{ desc = "[W]orkspace session [R]estore search" }
				),
			},
		})
	end,
}
