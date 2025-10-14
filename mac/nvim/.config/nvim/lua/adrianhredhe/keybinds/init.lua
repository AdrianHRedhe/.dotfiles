-- COMMON KEYBINDS
require "adrianhredhe.keybinds.common-keybinds"

-- VSCODE SPECIFIC BINDINGS:
if vim.g.vscode then
    -- VSCODE Neovim
    require "adrianhredhe.keybinds.vscode-keybinds"
else
    -- Ordinary Neovim
    require "adrianhredhe.keybinds.keybinds"
end

