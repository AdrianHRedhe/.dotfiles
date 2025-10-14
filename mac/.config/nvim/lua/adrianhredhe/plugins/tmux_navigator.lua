return {
	"christoomey/vim-tmux-navigator",
	cmd = {
		"TmuxNavigateLeft",
		"TmuxNavigateDown",
		"TmuxNavigateUp",
		"TmuxNavigateRight",
		"TmuxNavigatePrevious",
		"TmuxNavigatorProcessList",
	},
	keys = {
		{ "√", "<cmd>TmuxNavigateLeft<cr>", desc = "Navigate Left" },
		{ "ª", "<cmd>TmuxNavigateDown<cr>", desc = "Navigate Down" },
		{ "ﬁ", "<cmd>TmuxNavigateUp<cr>", desc = "Navigate Up" },
		{ "ø", "<cmd>TmuxNavigateRight<cr>", desc = "Navigate Right" },
	},
}
