
return {
	"karb94/neoscroll.nvim",
	event = "VeryLazy",
	opts = {
		hide_cursor = false,
		stop_eof = true,
		respect_scrolloff = true,
		cursor_scrolls_alone = true,
		duration_multiplier = 1.0,
		easing = "sine",
		mappings = {
			"<C-u>",
			"<C-d>",
			"<C-b>",
			"<C-f>",
			"zt",
			"zz",
			"zb",
		},
	},
}
