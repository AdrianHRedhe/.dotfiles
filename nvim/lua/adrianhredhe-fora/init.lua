-- VSCODE SPECIFIC BINDINGS:
if vim.g.vscode then
    -- VSCODE Neovim
else
    -- Ordinary Neovim
    require "adrianhredhe/plugins"
end

require "adrianhredhe.keybinds"
require "adrianhredhe.options"
