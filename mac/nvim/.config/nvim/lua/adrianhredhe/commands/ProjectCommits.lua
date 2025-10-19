local pickers = require("telescope.pickers")
local finders = require("telescope.finders")
local conf = require("telescope.config").values
local actions = require("telescope.actions")
local action_state = require("telescope.actions.state")
local previewers = require("telescope.previewers")

local function get_project_commits()
	-- Run git log for the entire project
	local cmd = 'git log --pretty=format:"%h %s"'
	local commits = {}
	local idx = 1
	local handle = io.popen(cmd)

	for line in handle:lines() do
		local hash, message = line:match("^(%S+)%s+(.*)$")
		if hash then
			table.insert(commits, {
				hash = hash,
				message = message,
				display = string.format("%d - %s", idx, line),
				idx = idx,
			})
			idx = idx + 1
		end
	end
	handle:close()
	return commits
end

local function project_commit_picker(opts)
	opts = opts or {}
	local commits = get_project_commits()

	pickers
		.new(opts, {
			prompt_title = "Project Commits",
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
					-- Show the full diff for this commit across all files
					return { "git", "diff", entry.value .. "^!" }
				end,
			}),
			attach_mappings = function(prompt_bufnr, map)
				actions.select_default:replace(function()
					actions.close(prompt_bufnr)
					local selection = action_state.get_selected_entry()
					vim.cmd("tab Floggit diff " .. selection.value)
				end)
				return true
			end,
		})
		:find()
end

-- Create the command
vim.api.nvim_create_user_command("ProjectCommits", project_commit_picker, {})
