return {
	"benlubas/molten-nvim",
	version = "^1.0.0", -- use version <2.0.0 to avoid breaking changes
	build = ":UpdateRemotePlugins",
	init = function()
		-- this is an example, not a default. Please see the readme for more configuration options
		vim.g.molten_output_win_max_height = 12

		-- SUGGESTED KEYBINDS
		-- vim.keymap.set("n", "<localleader>mi", ":MoltenInit<CR>", { silent = true, desc = "Initialize the plugin" })
		-- vim.keymap.set(
		-- 	"n",
		-- 	"<localleader>e",
		-- 	":MoltenEvaluateOperator<CR>",
		-- 	{ silent = true, desc = "run operator selection" }
		-- )
		-- vim.keymap.set("n", "<localleader>rl", ":MoltenEvaluateLine<CR>", { silent = true, desc = "evaluate line" })
		-- vim.keymap.set(
		-- 	"n",
		-- 	"<localleader>rr",
		-- 	":MoltenReevaluateCell<CR>",
		-- 	{ silent = true, desc = "re-evaluate cell" }
		-- )
		-- vim.keymap.set(
		-- 	"v",
		-- 	"<localleader>r",
		-- 	":<C-u>MoltenEvaluateVisual<CR>gv",
		-- 	{ silent = true, desc = "evaluate visual selection" }
		-- )
		--
		-- OTHER SUGGESTED KEYBINDS
		-- vim.keymap.set("n", "<localleader>rd", ":MoltenDelete<CR>", { silent = true, desc = "molten delete cell" })
		-- vim.keymap.set("n", "<localleader>oh", ":MoltenHideOutput<CR>", { silent = true, desc = "hide output" })
		-- vim.keymap.set(
		-- 	"n",
		-- 	"<localleader>os",
		-- 	":noautocmd MoltenEnterOutput<CR>",
		-- 	{ silent = true, desc = "show/enter output" }
		-- )
	end,
}
