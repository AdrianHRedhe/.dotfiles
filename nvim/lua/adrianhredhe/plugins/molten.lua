return {
	"benlubas/molten-nvim",
	version = "^1.0.0", -- use version <2.0.0 to avoid breaking changes
	build = ":UpdateRemotePlugins",
	init = function()
		-- this is an example, not a default. Please see the readme for more configuration options
		--		vim.g.molten_output_win_max_height = 12
		vim.g.molten_auto_open_output = false
		vim.g.molten_virt_text_output = true
		-- SUGGESTED KEYBINDS
		vim.keymap.set("n", "<localleader>mi", ":MoltenInit<CR>", { silent = true, desc = "Initialize the plugin" })
		vim.keymap.set("n", "<leader>ml", ":MoltenEvaluateLine<CR>", { silent = true, desc = "evaluate line" })
		vim.keymap.set(
			"n",
			"<localleader>mr",
			":MoltenReevaluateCell<CR>",
			{ silent = true, desc = "re-evaluate cell" }
		)
		-- OTHER SUGGESTED KEYBINDS
		vim.keymap.set("n", "<localleader>mh", ":MoltenHideOutput<CR>", { silent = true, desc = "hide output" })
		vim.keymap.set(
			"n",
			"<leader>mo",
			":noautocmd MoltenEnterOutput<CR>",
			{ silent = true, desc = "show/enter output" }
		)

		vim.keymap.set(
			"n",
			"<leader>me",
			":MoltenEvaluateOperator<CR>",
			{ silent = true, desc = "run operator selection" }
		)

		vim.keymap.set(
			"n",
			"<leader>r",
			":lua _G.MoltenEvaluateMyCell()<CR>",
			--":lua print(vim.fn.search('# %%', 'bW'))",
			{ silent = true, desc = "run operator selection" }
		)
	end,
}
