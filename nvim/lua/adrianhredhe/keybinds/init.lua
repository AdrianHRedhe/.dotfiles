-- COMMON KEYBINDS
require "keybinds.common-keybinds"

-- VSCODE SPECIFIC BINDINGS:
if vim.g.vscode then
    -- VSCODE Neovim
    require "keybinds.vscode-keybinds"
else
    -- Ordinary Neovim
    require "keybinds.keybinds"
end

