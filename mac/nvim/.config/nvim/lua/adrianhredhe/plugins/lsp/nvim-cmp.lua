-- Autocompletion
return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = {
		{
			"echasnovski/mini.snippets", -- Snippet runtime: expands triggers into code templates
			dependencies = "rafamadriz/friendly-snippets", -- Premade snippets for most languages
			event = "InsertEnter",
			opts = function()
				local snippets = require("mini.snippets")
				return { snippets = { snippets.gen_loader.from_lang() } } -- Load snippets based on filetype
			end,
		},
		"abeldekat/cmp-mini-snippets", -- nvim-cmp source for mini.snippets
		-- Adds other completion capabilities.
		--  nvim-cmp does not ship with all sources by default. They are split
		--  into multiple repos for maintenance purposes.
		"hrsh7th/cmp-nvim-lsp", -- LSP completion source for nvim-cmp
		"hrsh7th/cmp-path", -- Path completions
		"hrsh7th/cmp-buffer", -- Buffer completions
	},
	config = function()
		-- See `:help cmp`
		local cmp = require("cmp")

		cmp.setup({
			snippet = {
				expand = function(args)
					local insert = MiniSnippets.config.expand.insert or MiniSnippets.default_insert
					insert({ body = args.body })
					cmp.resubscribe({ "TextChangedI", "TextChangedP" })
					require("cmp.config").set_onetime({ sources = {} })
				end,
			},
			completion = { completeopt = "menu,menuone,noinsert" },

			-- For an understanding of why these mappings were
			-- chosen, you will need to read `:help ins-completion`
			--
			-- No, but seriously. Please read `:help ins-completion`, it is really good!
			mapping = cmp.mapping.preset.insert({
				-- Select the [n]ext item
				["<C-n>"] = cmp.mapping.select_next_item(),
				-- Select the [p]revious item
				["<C-p>"] = cmp.mapping.select_prev_item(),

				-- Scroll the documentation window [b]ack / [f]orward
				["<C-b>"] = cmp.mapping.scroll_docs(-4),
				["<C-f>"] = cmp.mapping.scroll_docs(4),
				["<C-u>"] = cmp.mapping.scroll_docs(-4),
				["<C-d>"] = cmp.mapping.scroll_docs(4),

				-- Accept ([y]es) the completion.
				--  This will auto-import if your LSP supports it.
				--  This will expand snippets if the LSP sent a snippet.
				["<C-y>"] = cmp.mapping.confirm({ select = true }),

				-- If you prefer more traditional completion keymaps,
				-- you can uncomment the following lines
				--['<CR>'] = cmp.mapping.confirm { select = true },
				--['<Tab>'] = cmp.mapping.select_next_item(),
				--['<S-Tab>'] = cmp.mapping.select_prev_item(),

				-- Manually trigger a completion from nvim-cmp.
				--  Generally you don't need this, because nvim-cmp will display
				--  completions whenever it has completion options available.
				["<C-Space>"] = cmp.mapping.complete({}),
			}),
			sources = {
				{ name = "lazydev", group_index = 0 },
				{ name = "nvim_lsp" }, -- LSP completions
				{ name = "buffer" }, -- Buffer completions
				{ name = "mini_snippets" }, -- Snippet completions
				{ name = "path" }, -- Path completions
			},

			-- Dadbod autocomplete
			cmp.setup.filetype({ "sql" }, {
				sources = {
					{ name = "vim-dadbod-completion" }, -- LSP completions basically
					{ name = "buffer" }, -- Buffer completions
				},
			}),
		})
	end,
}
