require "common-keybinds"

local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true}

-- VSCODE SPECIFIC KEYBINDS
-- keymap('n', '<leader>e', "<cmd>lua require('vscode').action('workbench.action.terminal.toggleTerminal')<CR>", opts)
keymap('n', '<leader>e', "<cmd>lua require('vscode').action('workbench.view.explorer')<CR>", opts)
-- quickopen on ctrl + p
keymap('n', '<C-p>', "<cmd>lua require('vscode').action('workbench.action.quickOpen')<CR>", opts)
-- Check git diff with leader
keymap('n', '<leader>gh', "<cmd>lua require('vscode').action('editor.action.dirtydiff.next')<CR>", opts)
keymap('n', '<leader>d', "<cmd>lua require('vscode').action('editor.action.showHover')<CR>", opts)
keymap('n', '<leader>pr', "<cmd>lua require('vscode').action('code-runner.run')<CR>", opts)






-- HARPOON MOVEMENTS.
keymap("n", '<leader>ha', "<cmd>lua require('vscode').action('vscode-harpoon.addEditor')<CR>", opts)
keymap("n", '<leader>ho', "<cmd>lua require('vscode').action('vscode-harpoon.editorQuickPick')<CR>", opts)
keymap("n", '<leader>he', "<cmd>lua require('vscode').action('vscode-harpoon.editEditors')<CR>", opts)
keymap("n", '<leader>h1', "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor1')<CR>", opts)
keymap("n", '<leader>h2', "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor2')<CR>", opts)
keymap("n", '<leader>h3', "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor3')<CR>", opts)
keymap("n", '<leader>h4', "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor4')<CR>", opts)
keymap("n", '<leader>h5', "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor5')<CR>", opts)
keymap("n", '<leader>h6', "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor6')<CR>", opts)
keymap("n", '<leader>h7', "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor7')<CR>", opts)
keymap("n", '<leader>h8', "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor8')<CR>", opts)
keymap("n", '<leader>h9', "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor9')<CR>", opts)


--- PROJECT MANAGER KEYBINDS
--keymap("n", '<leader>pa', "<cmd>lua require('vscode').action('projectManager.saveProject')<CR>", opts)
--keymap("n", '<leader>po', "<cmd>lua require('vscode').action('projectManager.listProjectsNewWindow')<CR>", opts)
--keymap("n", '<leader>pe', "<cmd>lua require('vscode').action('projectManager.editProjects')<CR>", opts)


-- MOVEMENTS CURRENTLY IMPLEMENTED IN VANILLA VSCODE INSTEAD

keymap('n', "C-k", "<cmd>lua require('vscode').action('workbench.action.previousEditorInGroup')<CR>", opts)
keymap('n', "C-l", "<cmd>lua require('vscode').action('workbench.action.nextEditorInGroup')<CR>", opts)


-- Prev implemented in vscode
--"before": ["<C-j>"], // Focus split window at left
--"commands": ["workbench.action.focusLeftGroup"]


--"before": ["<C-k>"], // Focus split window at right
--"commands": ["workbench.action.previousEditorInGroup"],
--"when": ["!activeEditorGroupEmpty"],


--"before": ["<C-l>"], // Focus split window at above
--"commands": ["workbench.action.nextEditorInGroup"],
--"when": ["!activeEditorGroupEmpty"],


-- VISUAL MODE ... 
--"before": ["<C-k>"], // Focus split window at right
--"commands": ["workbench.action.previousEditorInGroup"],
--"when": ["!activeEditorGroupEmpty"],


--"before": ["<C-l>"], // Focus split window at above
--"commands": ["workbench.action.nextEditorInGroup"],
--"when": ["!activeEditorGroupEmpty"],
