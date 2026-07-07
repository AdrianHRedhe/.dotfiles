return {
	"scalameta/nvim-metals",
	ft = { "scala", "java" },
	dependencies = {
		"mfussenegger/nvim-dap",
	},
	opts = function()
		local metals_config = require("metals").bare_config()
		metals_config.capabilities = require("cmp_nvim_lsp").default_capabilities()

		-- Debug settings if you're using nvim-dap
		local dap = require("dap")

		dap.configurations.scala = {
			{
				type = "scala",
				request = "launch",
				name = "RunOrTest",
				metals = {
					runType = "runOrTestFile",
					--args = { "firstArg", "secondArg", "thirdArg" }, -- here just as an example
				},
			},
			{
				type = "scala",
				request = "launch",
				name = "Test Target",
				metals = {
					runType = "testTarget",
				},
			},
		}

		metals_config.on_attach = function(client, bufnr)
			-- Call setup_dap without arguments, or explicitly pass bufnr if it's a number
			if type(bufnr) == "number" then
				require("metals").setup_dap()
			else
				-- In some versions, bufnr might be a function to get the buffer
				require("metals").setup_dap()
			end
		end
		-- metals_config.on_attach = function(client, bufnr)
		-- require("metals").setup_dap()
		-- end
		return metals_config
	end,
	config = function(self, metals_config)
		local nvim_metals_group = vim.api.nvim_create_augroup("nvim-metals", { clear = true })
		vim.api.nvim_create_autocmd("FileType", {
			pattern = self.ft,
			callback = function()
				require("metals").initialize_or_attach(metals_config)
			end,
			group = nvim_metals_group,
		})
	end,
}
