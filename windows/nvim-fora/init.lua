-- VSCODE SPECIFIC BINDINGS:
if vim.g.vscode then
    -- VSCODE Neovim
    require "vscode-keybinds"
else
    -- Ordinary Neovim
    require "keybinds"
    require "plugins"
end


require "options"
