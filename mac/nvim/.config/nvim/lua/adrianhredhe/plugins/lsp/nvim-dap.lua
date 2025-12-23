return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"nvim-neotest/nvim-nio",
		"rcarriga/nvim-dap-ui",
		"mfussenegger/nvim-dap-python",
		"theHamsta/nvim-dap-virtual-text",
	},
	config = function()
		local dap = require("dap")
		local dapui = require("dapui")
		local dap_python = require("dap-python")

		require("dapui").setup()
		require("nvim-dap-virtual-text").setup({
			commented = true,
		})
		dap_python.setup("uv")

		dap.listeners.after.event_initialized["dapui_config"] = function()
			dapui.open()
		end

		-- Add some nice UI things
		vim.fn.sign_define("DapBreakpoint", {
			text = "",
			texthl = "DiagnosticSignError",
			linehl = "",
			numhl = "",
		})

		vim.fn.sign_define("DapBreakpointRejected", {
			text = "", -- or "❌"
			texthl = "DiagnosticSignError",
			linehl = "",
			numhl = "",
		})

		vim.fn.sign_define("DapStopped", {
			text = "", -- or "→"
			texthl = "DiagnosticSignWarn",
			linehl = "Visual",
			numhl = "DiagnosticSignWarn",
		})

		-- local opts = { noremap = true, silent = true }

		-- Toggle breakpoint
		vim.keymap.set("n", "<leader>b", function()
			dap.toggle_breakpoint()
		end, { desc = "Add debug [B]reakpoint" })

		-- Continue / Start
		vim.keymap.set("n", "<leader>dc", function()
			dap.continue()
		end, { desc = "[Debug] [C]ontinue" })

		-- Step Over
		vim.keymap.set("n", "<leader>do", function()
			dap.step_over()
		end, { desc = "[D]ebug step [O]ver" })

		-- Step Into
		vim.keymap.set("n", "<leader>di", function()
			dap.step_into()
		end, { desc = "[Debug] step [I]nto" })

		-- Step Out
		vim.keymap.set("n", "<leader>dO", function()
			dap.step_out()
		end, { desc = "[D]ebug step [O]ut" })

		-- Keymap to terminate debugging
		vim.keymap.set("n", "<leader>dx", function()
			require("dap").terminate()
		end, { desc = "[D]ebug e[X]it" })

		-- Toggle DAP UI
		vim.keymap.set("n", "<leader>td", function()
			dapui.toggle()
		end, { desc = "[T]oggle [D]ebug UI" })
	end,
}
