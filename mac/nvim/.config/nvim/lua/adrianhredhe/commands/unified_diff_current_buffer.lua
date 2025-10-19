local pickers = require("telescope.pickers")
local finders = require("telescope.finders")
local conf = require("telescope.config").values
local actions = require("telescope.actions")
local action_state = require("telescope.actions.state")
local previewers = require("telescope.previewers")

local function get_commits_for_file(filepath)
	-- Run git log for the current file
	local cmd = string.format('git log --pretty=format:"%%h %%s" --follow -- %s', vim.fn.shellescape(filepath))
	local commits = {}
	local handle = io.popen(cmd)

	for line in handle:lines() do
		local hash, message = line:match("^(%S+)%s+(.*)$")
		if hash then
			table.insert(commits, { hash = hash, message = message, display = line })
		end
	end
	handle:close()
	return commits
end

local function file_commit_picker(opts)
	opts = opts or {}
	local filepath = vim.fn.expand("%:p") -- Current file full path
	local commits = get_commits_for_file(filepath)

	pickers
		.new(opts, {
			prompt_title = "File Commits",
			finder = finders.new_table({
				results = commits,
				entry_maker = function(entry)
					return {
						value = entry.hash,
						display = entry.display,
						ordinal = entry.display,
					}
				end,
			}),
			sorter = conf.generic_sorter(opts),
			previewer = previewers.new_termopen_previewer({
				get_command = function(entry)
					return { "git", "diff", entry.value .. "^!", "--", filepath }
				end,
			}),
			attach_mappings = function(prompt_bufnr, map)
				actions.select_default:replace(function()
					actions.close(prompt_bufnr)
					local selection = action_state.get_selected_entry()
					-- Open in a new tab
					-- vim.cmd("tabnew")
					-- vim.cmd("vertical Floggit diff " .. selection.value .. " -- %")
					vim.cmd("tab Floggit diff " .. selection.value .. " -- %")
				end)
				return true
			end,
		})
		:find()
end

-- Create the command
vim.api.nvim_create_user_command("FileCommits", file_commit_picker, {})
