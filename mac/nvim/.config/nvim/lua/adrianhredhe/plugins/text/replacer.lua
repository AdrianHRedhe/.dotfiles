return {
	"gabrielpoca/replacer.nvim",
	vim.api.nvim_set_keymap(
		"n",
		"<leader>tr",
		':lua require("replacer").run()<cr>',
		{ desc = "[T]oggle [R]eplacer", silent = true }
	),
	--	config = function()
	--		vim.api.nvim_set_keymap("n", "<space>tq", ":lua require("replacer").run()<CR>", opts)
	--	end
}
