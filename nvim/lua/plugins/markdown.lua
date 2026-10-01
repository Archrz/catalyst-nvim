
return {
	"MeanderingProgrammer/render-markdown.nvim",
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},
	ft = { "markdown" },
	opts = {
		latex = { enabled = false },
		code = {
			width = "block",
			right_pad = 1,
		},
		heading = {
			icons = {},
		},
	},
}
