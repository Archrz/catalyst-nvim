local servers = {
	"lua_ls",
	"bashls",
	"jsonls",
	"yamlls",
	"taplo",
	"marksman",
	"nil_ls",
	"rust_analyzer",
}

return {
	{
		"neovim/nvim-lspconfig",
		dependencies = { "saghen/blink.cmp" },
		config = function()
			local capabilities = require("blink.cmp").get_lsp_capabilities()

			vim.lsp.config("*", {
				capabilities = capabilities,
			})

			vim.lsp.config("lua_ls", {
				settings = {
					Lua = {
						diagnostics = { globals = { "vim" } },
						workspace = { checkThirdParty = false },
					},
				},
			})

			vim.lsp.config("rust_analyzer", {
				settings = {
					["rust-analyzer"] = {
						check = { command = "clippy" },
					},
				},
			})

			vim.lsp.enable(servers)
		end,
	},
}
