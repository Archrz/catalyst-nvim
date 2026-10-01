local M = {}

function M.load()
	local bg = "#0d0d0d"
	local bg_panel = "#000000"
	local bg_float = "#0d0d0d"
	local bg_sel = "#2d3640"
	local bg_line = "#1a1a1a"
	local fg = "#e6e1cf"
	local fg_subtle = "#8E959E"
	local border = "#2d3640"
	local accent = "#ffb454"
	local hint = "#39bae6"
	local blue = "#39bae6"
	local green = "#a6e3a1"
	local yellow = "#e6b673"
	local orange = "#ffb454"
	local red = "#f07178"
	local red_bold = "#f07178"
	local comment = "#686868"
	local lnum = "#2d3640"
	local lnum_act = "#8E959E"

	vim.cmd("highlight clear")
	vim.cmd("set termguicolors")

	local function hl(group, opts)
		vim.api.nvim_set_hl(0, group, opts)
	end

	hl("Normal", { fg = fg, bg = "NONE" })
	hl("NormalFloat", { fg = fg, bg = bg_float })
	hl("NormalNC", { fg = fg, bg = "NONE" })
	hl("CursorLine", { bg = bg_line })
	hl("CursorLineNr", { fg = lnum_act, bold = true })
	hl("LineNr", { fg = lnum })
	hl("SignColumn", { bg = "NONE" })
	hl("ColorColumn", { bg = bg_panel })
	hl("Visual", { bg = bg_sel })
	hl("VisualNOS", { bg = bg_sel })
	hl("Search", { fg = bg, bg = orange })
	hl("IncSearch", { fg = bg, bg = accent })
	hl("MatchParen", { fg = accent, bold = true, underline = true })

	hl("StatusLine", { fg = fg_subtle, bg = bg_panel })
	hl("StatusLineNC", { fg = fg_subtle, bg = bg_panel })
	hl("WinSeparator", { fg = border })
	hl("FloatBorder", { fg = accent, bg = bg_float })
	hl("TabLine", { fg = fg_subtle, bg = bg_panel })
	hl("TabLineSel", { fg = fg, bg = bg })
	hl("TabLineFill", { bg = bg_panel })
	hl("Pmenu", { fg = fg, bg = bg_float })
	hl("PmenuSel", { fg = bg, bg = accent })
	hl("PmenuSbar", { bg = bg_panel })
	hl("PmenuThumb", { bg = fg_subtle })

	hl("Comment", { fg = comment, italic = true })
	hl("Keyword", { fg = accent })
	hl("Conditional", { fg = accent })
	hl("Repeat", { fg = accent })
	hl("Statement", { fg = accent })
	hl("Operator", { fg = fg_subtle })
	hl("Function", { fg = blue })
	hl("Identifier", { fg = fg })
	hl("Type", { fg = yellow })
	hl("StorageClass", { fg = yellow })
	hl("Structure", { fg = yellow })
	hl("Typedef", { fg = yellow })
	hl("String", { fg = green })
	hl("Character", { fg = green })
	hl("Number", { fg = orange })
	hl("Float", { fg = orange })
	hl("Boolean", { fg = orange })
	hl("Constant", { fg = orange })
	hl("Special", { fg = accent })
	hl("SpecialChar", { fg = hint })
	hl("Tag", { fg = red })
	hl("Delimiter", { fg = fg_subtle })
	hl("Punctuation", { fg = fg_subtle })
	hl("PreProc", { fg = accent })
	hl("Include", { fg = accent })
	hl("Define", { fg = accent })
	hl("Macro", { fg = accent })
	hl("Error", { fg = red_bold })
	hl("Todo", { fg = bg, bg = accent, bold = true })

	hl("@keyword", { fg = accent })
	hl("@keyword.function", { fg = accent })
	hl("@keyword.return", { fg = accent })
	hl("@function", { fg = blue })
	hl("@function.builtin", { fg = hint })
	hl("@function.call", { fg = blue })
	hl("@method", { fg = blue })
	hl("@method.call", { fg = blue })
	hl("@constructor", { fg = blue })
	hl("@type", { fg = yellow })
	hl("@type.builtin", { fg = yellow })
	hl("@string", { fg = green })
	hl("@string.escape", { fg = hint })
	hl("@string.regex", { fg = hint })
	hl("@number", { fg = orange })
	hl("@float", { fg = orange })
	hl("@boolean", { fg = orange })
	hl("@constant", { fg = orange })
	hl("@constant.builtin", { fg = orange })
	hl("@variable", { fg = fg })
	hl("@variable.builtin", { fg = red })
	hl("@variable.member", { fg = green })
	hl("@variable.parameter", { fg = fg_subtle, italic = true })
	hl("@property", { fg = green })
	hl("@attribute", { fg = blue })
	hl("@tag", { fg = red })
	hl("@tag.attribute", { fg = orange })
	hl("@tag.delimiter", { fg = fg_subtle })
	hl("@operator", { fg = fg_subtle })
	hl("@punctuation.bracket", { fg = fg_subtle })
	hl("@punctuation.delimiter", { fg = fg_subtle })
	hl("@comment", { fg = comment, italic = true })
	hl("@label", { fg = red })
	hl("@namespace", { fg = yellow })
	hl("@field", { fg = green })
	hl("@storageclass.lifetime", { fg = orange, italic = true })

	hl("DiagnosticError", { fg = red_bold })
	hl("DiagnosticWarn", { fg = orange })
	hl("DiagnosticInfo", { fg = blue })
	hl("DiagnosticHint", { fg = hint })
	hl("DiagnosticUnderlineError", { undercurl = true, sp = red_bold })
	hl("DiagnosticUnderlineWarn", { undercurl = true, sp = orange })
	hl("DiagnosticUnderlineInfo", { undercurl = true, sp = blue })
	hl("DiagnosticUnderlineHint", { undercurl = true, sp = hint })

	hl("GitSignsAdd", { fg = green })
	hl("GitSignsChange", { fg = yellow })
	hl("GitSignsDelete", { fg = red })
	hl("DiffAdd", { bg = "#1a2410" })
	hl("DiffChange", { bg = "#2a2210" })
	hl("DiffDelete", { fg = red, bg = "#2a1010" })
	hl("DiffText", { bg = "#3a3010" })

	hl("@markup.heading", { fg = fg, bold = true })
	hl("@markup.italic", { fg = blue, italic = true })
	hl("@markup.strong", { fg = blue, bold = true })
	hl("@markup.link.label", { fg = blue, italic = true })
	hl("@markup.link.url", { fg = hint })
	hl("@markup.raw", { fg = green })
	hl("@markup.list", { fg = orange })
end

return M
