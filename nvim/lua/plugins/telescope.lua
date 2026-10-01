
return {
	"nvim-telescope/telescope.nvim",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	cmd = "Telescope",
	opts = {
		defaults = {
			prompt_prefix = "  ",
			selection_caret = " ",
			path_display = { "truncate" },
			sorting_strategy = "ascending",
			layout_config = {
				horizontal = {
					prompt_position = "top",
					preview_width = 0.55,
				},
			},
			mappings = {
				i = {
					["<C-k>"] = function(...)
						return require("telescope.actions").move_selection_previous(...)
					end,
					["<C-j>"] = function(...)
						return require("telescope.actions").move_selection_next(...)
					end,
					["<C-q>"] = function(...)
						local actions = require("telescope.actions")
						return (actions.send_selected_to_qflist + actions.open_qflist)(...)
					end,
					["<esc>"] = function(...)
						return require("telescope.actions").close(...)
					end,
				},
			},
		},
	},
	config = function(_, opts)
		require("telescope").setup(opts)
	end,
}
