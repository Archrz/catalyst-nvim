
return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local hooks = require("ibl.hooks")

		hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
			vim.api.nvim_set_hl(0, "MeloworldIndent", { fg = "#2e2e2e" })
			vim.api.nvim_set_hl(0, "MeloworldScope", { fg = "#80cbc4" })
		end)

		require("ibl").setup({
			indent = {
				char = "│",
				highlight = { "MeloworldIndent" },
			},
			scope = {
				enabled = true,
				highlight = { "MeloworldScope" },
				show_start = false,
				show_end = false,
			},
		})
	end,
}
