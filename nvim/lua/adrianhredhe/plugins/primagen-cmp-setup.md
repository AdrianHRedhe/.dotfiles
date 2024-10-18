	--require "plugins.mason",
	-- LSP MASON CONF
	--require "plugins.mason-conf"
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
]]
--
