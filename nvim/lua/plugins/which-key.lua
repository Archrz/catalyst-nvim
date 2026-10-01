
return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		icons = {
			mappings = true,
		},
		spec = {
			{ "<leader>f", group = "find" },
			{ "<leader>g", group = "git" },
			{ "<leader>c", group = "code" },
			{ "<leader>r", group = "rename" },
			{ "<leader>n", group = "misc" },
			{ "<leader>x", group = "diagnostics" },
		},
	},
}
