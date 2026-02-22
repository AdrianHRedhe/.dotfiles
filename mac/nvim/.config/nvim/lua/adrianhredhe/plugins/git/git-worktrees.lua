return {
	"ThePrimeagen/git-worktree.nvim",
	config = function()
		require("git-worktree").setup()
		require("telescope").load_extension("git_worktree")
		local telescope_worktree = require("telescope").extensions.git_worktree

		vim.keymap.set("n", "<leader>wc", function()
			telescope_worktree.create_git_worktree()
		end, { desc = "Git-[W]orktree [C]reate" })

		vim.keymap.set("n", "<leader>wf", function()
			telescope_worktree.git_worktrees()
		end, { desc = "Git-[W]orktree [F]ind" })
	end,
}
