
return {
	"nvim-mini/mini.surround",
	version = "*",
	event = { "BufReadPre", "BufNewFile" },
	opts = {
		mappings = {
			add = "gsa",
			delete = "gsd",
			replace = "gsr",
			find = "gsf",
			find_left = "gsF",
			highlight = "gsh",
			update_n_lines = "gsn",
		},
	},
}
