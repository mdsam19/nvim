require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "black" },
		javascript = { { "prettierd", "prettier" } },
		typescript = { { "prettierd", "prettier" } },
		typescriptreact = { { "prettierd", "prettier" } },
		javascriptreact = { { "prettierd", "prettier" } },
		css = { { "prettierd", "prettier" } },
		scss = { { "prettierd", "prettier" } },
		html = { { "prettierd", "prettier" } },
		svelte = { { "prettierd", "prettier" } },
	},
	format_on_save = {
		timeout_ms = 5000,
		lsp_fallback = true,
	},
})
