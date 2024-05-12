--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

--Language servers
require("lspconfig").pyright.setup({ capabilities = capabilities })
require("lspconfig").tsserver.setup({ capabilities = capabilities })
require("lspconfig").svelte.setup({ capabilities = capabilities })
require("lspconfig").tailwindcss.setup({ capabilities = capabilities })
require("lspconfig").prismals.setup({})
require("lspconfig").cssls.setup({ capabilities = capabilities })
require("lspconfig").lua_ls.setup({
	settings = {
		Lua = {
			runtime = {
				version = "LuaJIT",
			},
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
			},
			telemetry = {
				enable = false,
			},
		},
	},
})
require("lspconfig").emmet_ls.setup({
	capabilities = capabilities,
	filetypes = { "html", "typescriptreact", "javascriptreact" },
})
require("lspconfig").angularls.setup({})
require("lspconfig").intelephense.setup({})
