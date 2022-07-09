local null_ls = require("null-ls")

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics
local action = null_ls.builtins.code_actions

null_ls.setup({
	sources = {
		-- formatters
		formatting.gofmt,
		formatting.goimports,
		formatting.prettier,
		formatting.eslint,
		formatting.codespell.with({ filetypes = { "markdown" } }),

		-- diagnostics
		diagnostics.eslint,

		-- actions
		action.eslint,
	},
	on_attach = function(client)
		if client.resolved_capabilities.document_formatting then
			vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting()")
		end
	end,
})
