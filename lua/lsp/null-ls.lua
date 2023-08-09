local null_ls = require("null-ls")
local formatting = null_ls.builtins.formatting

null_ls.setup({
	sources = {
		--****************Formatting********************
		--Lua Formatter
		formatting.stylua,
		--Python Formatter
		formatting.autopep8,
		--Web Formatter
		formatting.prettier.with({ extra_args = { "--no-semi" } }),
	},
})
