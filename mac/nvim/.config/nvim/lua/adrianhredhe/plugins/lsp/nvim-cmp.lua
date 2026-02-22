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
				return {
					-- Load snippets based on filetype
					snippets = { snippets.gen_loader.from_lang() },
					mappings = {
						expand = "", -- Disable expansion (nvim-cmp handles this)
						jump_next = "<C-n>", -- Change keys for tabstop jumping
						jump_prev = "<C-p>", -- Change keys for tabstop jumping
						stop = "<C-c>", -- Keep stop as default
					},
				}
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
			mapping = cmp.mapping.preset.insert({
				-- Only activate when CMP menu is visible
				-- Select the [n]ext item
				["<C-n>"] = cmp.mapping(function(fallback)
					if cmp.visible() then
						cmp.select_next_item()
					else
						fallback() -- Let mini.snippets handle it
					end
				end, { "i", "s" }),

				-- Select the [p]revious item
				["<C-p>"] = cmp.mapping(function(fallback)
					if cmp.visible() then
						cmp.select_prev_item()
					else
						fallback() -- Let mini.snippets handle it
					end
				end, { "i", "s" }),

				-- Scroll the documentation window [b]ack / [f]orward
				["<C-b>"] = cmp.mapping.scroll_docs(-4),
				["<C-f>"] = cmp.mapping.scroll_docs(4),
				["<C-u>"] = cmp.mapping.scroll_docs(-4),
				["<C-d>"] = cmp.mapping.scroll_docs(4),

				-- Accept ([y]es) the completion.
				--  This will auto-import if your LSP supports it.
				--  This will expand snippets if the LSP sent a snippet.
				["<C-y>"] = cmp.mapping.confirm({ select = true }),

				-- Manually trigger a completion from nvim-cmp.
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
