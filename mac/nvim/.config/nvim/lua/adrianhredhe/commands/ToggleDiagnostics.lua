local diagnostics_visible = true
vim.diagnostic.config({ virtual_text = true })

local function toggle_diagnostics()
	diagnostics_visible = not diagnostics_visible

	if diagnostics_visible then
		vim.diagnostic.show()
	else
		vim.diagnostic.hide()
		require("trouble").close()
	end
end

vim.keymap.set("n", "<leader>te", toggle_diagnostics, { desc = "[T]oggle [E]rror diagnostics" })
