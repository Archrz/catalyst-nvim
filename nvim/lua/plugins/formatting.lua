
return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			rust = { "rustfmt" },
			sh = { "shfmt" },
			bash = { "shfmt" },
			json = { "prettier" },
			yaml = { "prettier" },
			markdown = { "prettier" },
			toml = { "taplo" },
		},
		format_on_save = {
			timeout_ms = 3000,
			lsp_format = "fallback",
		},
	},
}
