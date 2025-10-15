require "adrianhredhe.keybinds"
require "adrianhredhe.options"

-- Dont load plugins to vscode
if vim.g.vscode then
    -- VSCODE Neovim
else
    -- Ordinary Neovim
    require "adrianhredhe/plugins"
end

