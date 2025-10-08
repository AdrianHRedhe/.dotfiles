function _G.MoltenEvaluateMyCell()
	local is_on_marker = vim.fn.getline("."):match("^# %%") ~= nil

	if not is_on_marker then
		print("not on marker")
		-- If not on "# %%", search for prev "# %%"

		local previous_cell = vim.fn.search("^# %%", "bW")
		if previous_cell == 0 then
			print("No cells found above")
			return
		else
			-- We found a cell above lets go visual
			vim.cmd("normal! V")
			--start_pos = start_line
		end
	else
		-- We are already on the marker
		print("on marker")
		vim.cmd("normal! V")
	end

	-- Check if there is another "# %%" below
	if vim.fn.search("# %%", "W") ~= 0 then
		vim.cmd("normal! o")
		vim.cmd("normal! o")
	else
		vim.cmd("normal! G")
	end

	vim.cmd("normal! gv")
	--vim.cmd("normal! k")
	-- Go to end of the visual selection
	vim.cmd(":MoltenEvaluateVisual")
	vim.cmd("normal! gv")
	vim.cmd("normal!" .. "V")
end
