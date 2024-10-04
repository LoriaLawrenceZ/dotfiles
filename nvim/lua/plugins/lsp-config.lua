return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		lazy = false,
		opts = {
			auto_install = true,
		},
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")

			-- Lua language server setup
			lspconfig.lua_ls.setup({
                capabilities = capabilities
            })

			-- TypeScript language server setup
			lspconfig.tsserver.setup({
                capabilities = capabilities
            })

			-- CSS language server setup
			lspconfig.cssmodules_ls.setup({
                capabilities = capabilities
            })

			-- HTML/HTMX language server setup
			lspconfig.html.setup({
                capabilities = capabilities
            })
			lspconfig.htmx.setup({
				capabilities = capabilities,
				filetypes = {
					"html",
					"htmlangular",
					"javascript",
					"javascriptreact",
					"typescript",
					"typescriptreact",
				},
			})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
