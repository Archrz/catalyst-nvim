
return {
	"y3owk1n/undo-glow.nvim",
	version = "*",
	event = "VeryLazy",
	opts = {
		animation = {
			enabled = true,
			duration = 200,
			animation_type = "zoom",
		},
		highlights = {
			undo = { hl_color = { bg = "#2e1a1a" } },
			redo = { hl_color = { bg = "#1a2e1a" } },
			yank = { hl_color = { bg = "#2e2c1a" } },
			paste = { hl_color = { bg = "#1a2a2e" } },
			search = { hl_color = { bg = "#2a1a2e" } },
		},
	},
	config = function(_, opts)
		local ug = require("undo-glow")
		ug.setup(opts)

		vim.keymap.set("n", "u", ug.undo, { noremap = true, desc = "Undo with glow" })
		vim.keymap.set("n", "<C-r>", ug.redo, { noremap = true, desc = "Redo with glow" })

		vim.api.nvim_create_autocmd("TextYankPost", {
			desc = "Highlight when yanking text",
			callback = function()
				ug.yank()
			end,
		})
	end,
}
