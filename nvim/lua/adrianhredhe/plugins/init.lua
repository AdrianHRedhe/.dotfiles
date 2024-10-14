-- Modify Lua package path to include 'adrianhredhe/'
local config_path = vim.fn.stdpath('config') .. '/lua/adrianhredhe/'
package.path = package.path .. ';' .. config_path .. '?.lua'

-- Install lazy.nvim if not installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)



-- Setup Lazy.nvim and load plugins
require("lazy").setup({
    -- Tokyonight theme
--    require "plugins/tokyonight-theme"
    
    {
    "folke/tokyonight.nvim",
    priority = 1000, -- Ensure it loads first
    config = function()
      vim.cmd([[colorscheme tokyonight]])
    end,
    },

    -- vim-surround plugin
    require "adrianhredhe/plugins/vim-surround",
    -- repeat plugin 
    require "plugins/vim-repeat",
    --  This is for another
    require "plugins/vim-fanfingtastic",
    --  NERDTREE
    require "plugins/nerdtree",
    -- TELESCOPE
    require "plugins.telescope",
    -- WHICH KEY
    require "plugins.which-key",
    -- LSP MASON
    --require "plugins.mason",
    -- LSP MASON CONF
    --require "plugins.mason-conf"
})

--[[
-- Setup MASON
require('mason').setup()

-- Optional setup if you're using mason-lspconfig
require('mason-lspconfig').setup({
    -- Ensure servers are automatically installed when starting neovim
    automatic_installation = true,
})



-- SETUP IN PLUGIN .lua files 
{
    'neovim/nvim-lspconfig', -- Configurations for Nvim LSP
    dependencies = { 'williamboman/mason-lspconfig.nvim' },
},

-- Autocompletion
{
    'hrsh7th/nvim-cmp', -- Completion engine
    dependencies = {
        'hrsh7th/cmp-nvim-lsp', -- LSP completion source for nvim-cmp
        'hrsh7th/cmp-buffer',   -- Buffer completions
        'hrsh7th/cmp-path',     -- Path completions
        'saadparwaiz1/cmp_luasnip', -- Snippet completions
        'L3MON4D3/LuaSnip',     -- Snippet engine
    },
},



-- CODE COMPLETION

-- Setup nvim-cmp
local cmp = require('cmp')

cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body) -- Luasnip is the snippet engine
    end,
  },
  mapping = {
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
  },
  sources = {
    { name = 'nvim_lsp' },   -- LSP completions
    { name = 'buffer' },     -- Buffer completions
    { name = 'path' },       -- Path completions
    { name = 'luasnip' },    -- Snippet completions
  },
})
-- Setup nvim-cmp
local cmp = require('cmp')

cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body) -- Luasnip is the snippet engine
    end,
  },
  mapping = {
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<Tab>'] = cmp.mapping.select_next_item(),
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),
  },
  sources = {
    { name = 'nvim_lsp' },   -- LSP completions
    { name = 'buffer' },     -- Buffer completions
    { name = 'path' },       -- Path completions
    { name = 'luasnip' },    -- Snippet completions
  },
})
]]--
