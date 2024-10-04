return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua, -- FORMATTING for Lua
				null_ls.builtins.formatting.prettier, -- FORMATTING for js, js react, ts, tst react, vue, css, scss, less, html, json, jsonc, yaml, markdown, markdown.mdx, graphql, handlebars, svelte, astro, html angular
				null_ls.builtins.diagnostics.codespell, -- DIAGNOSTICS for misspelling
				null_ls.builtins.diagnostics.markuplint, -- DIAGNOSTICS for HTML
				null_ls.builtins.diagnostics.markdownlint, -- DIAGNOSTICS for markdown
				null_ls.builtins.diagnostics.selene, -- DIAGNOSTICS for Lua
				null_ls.builtins.diagnostics.semgrep, -- DIAGNOSTICS for ts, ts react, ruby, python, java, go
				null_ls.builtins.diagnostics.stylelint, -- DIAGNOSTICS for, scss, less, css, sass
				null_ls.builtins.diagnostics.todo_comments, -- DIAGNOSTICS for TODO
			},
		})

		vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
	end,
}
