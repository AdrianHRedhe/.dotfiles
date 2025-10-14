return {
	"jiaoshijie/undotree",
	dependencies = "nvim-lua/plenary.nvim",
	config = function()
		require("undotree").setup({
			keymaps = {
				["k"] = "move_next",
				["l"] = "move_prev",
				["gj"] = "move2parent",
				["K"] = "move_change_next",
				["L"] = "move_change_prev",
				["<cr>"] = "action_enter",
				["p"] = "enter_diffbuf",
				["q"] = "quit",
			},
		})
	end,
	keys = { -- load the plugin only when using it's keybinding:
		{ "<leader>tu", "<cmd>lua require('undotree').toggle()<cr>", desc = "[T]oggle [U]ndotree" },
	},
}
--[[
Mappings	Action
j	jump to next undo node
gj	jump to the parent node of the node under the cursor
k	jump to prev undo node
J	jump to next undo node and undo to this state
K	jump to prev undo node and undo to this state
q	quit undotree
p	jump into the undotree diff window
Enter	undo to this state
]]
--
