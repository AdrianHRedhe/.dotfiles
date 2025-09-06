return {
	"numToStr/FTerm.nvim",
	config = function()
		require("FTerm").setup({
			-- border = "double",
			-- dimensions = {
			-- 	height = 0.9,
			-- 	width = 0.9,
			-- },
		})

		-- Example keybindings
		vim.keymap.set("n", "<leader>tt", '<CMD>lua require("FTerm").toggle()<CR>', { desc = "toggle terminal" })
		vim.keymap.set("t", "<leader>tt", '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
		vim.keymap.set("n", "<C-t>", '<CMD>lua require("FTerm").toggle()<CR>', { desc = "toggle terminal" })
		vim.keymap.set("t", "<C-t>", '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
	end,
}
