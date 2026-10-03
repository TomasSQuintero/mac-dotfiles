vim.cmd("hi clear")
if vim.fn.exists("syntax_on") == 1 then
  vim.cmd("syntax reset")
end
vim.o.termguicolors = true
vim.g.colors_name = "miasma"

local p = {
  bg          = "#222222",
  bg_dark     = "#1a1a1a",
  bg_float    = "#262620",
  bg_highlight= "#2a2a24", -- cursorline
  bg_visual   = "#384038", -- selection
  bg_search   = "#4a4030",

  fg          = "#c2c2b0",
  fg_dark     = "#a8a895",
  fg_gutter   = "#4e4e42",
  comment     = "#6c6c60",

  black       = "#222222",
  black_br    = "#666666",
  red         = "#685742",
  red_br      = "#8a6a52",
  green       = "#5f875f",
  green_br    = "#7fa86f",
  yellow      = "#b36d43",
  yellow_br   = "#c9a554",
  blue        = "#78824b",
  blue_br     = "#8f9c5a",
  magenta     = "#bb7744",
  magenta_br  = "#cf9a63",
  cyan        = "#bb7744",
  cyan_br     = "#c9a554",
  white       = "#d7c483",
  white_br    = "#e6d9a8",

  border      = "#44443a",
  error       = "#a35a4a", -- brightened red, purely for diagnostics legibility
  none        = "NONE",
}

local hl = function(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- ===== Editor UI =====
hl("Normal",        { fg = p.fg, bg = p.bg })
hl("NormalFloat",   { fg = p.fg, bg = p.bg_float })
hl("NormalNC",      { fg = p.fg, bg = p.bg })
hl("FloatBorder",   { fg = p.border, bg = p.bg_float })
hl("FloatTitle",    { fg = p.yellow_br, bg = p.bg_float, bold = true })

hl("Cursor",        { fg = p.bg, bg = p.green })
hl("CursorIM",      { link = "Cursor" })
hl("CursorLine",    { bg = p.bg_highlight })
hl("CursorColumn",  { bg = p.bg_highlight })
hl("CursorLineNr",  { fg = p.yellow_br, bold = true })
hl("LineNr",        { fg = p.fg_gutter })
hl("SignColumn",    { fg = p.fg_gutter, bg = p.none })
hl("ColorColumn",   { bg = p.bg_highlight })

hl("Visual",        { bg = p.bg_visual })
hl("VisualNOS",     { bg = p.bg_visual })
hl("Search",        { fg = p.bg, bg = p.yellow_br })
hl("IncSearch",     { fg = p.bg, bg = p.magenta_br })
hl("Substitute",    { fg = p.bg, bg = p.red_br })
hl("MatchParen",    { fg = p.white_br, bg = p.border, bold = true })

hl("Directory",     { fg = p.blue_br })
hl("Title",         { fg = p.yellow_br, bold = true })
hl("Question",      { fg = p.green_br })
hl("MoreMsg",       { fg = p.green_br })
hl("ModeMsg",       { fg = p.fg, bold = true })
hl("ErrorMsg",      { fg = p.error, bold = true })
hl("WarningMsg",    { fg = p.yellow_br })
hl("NonText",       { fg = p.fg_gutter })
hl("SpecialKey",    { fg = p.fg_gutter })
hl("Whitespace",    { fg = p.fg_gutter })
hl("EndOfBuffer",   { fg = p.bg })

hl("Folded",        { fg = p.comment, bg = p.bg_dark, italic = true })
hl("FoldColumn",    { fg = p.fg_gutter, bg = p.none })

hl("VertSplit",     { fg = p.border, bg = p.bg })
hl("WinSeparator",  { fg = p.border, bg = p.bg })
hl("StatusLine",    { fg = p.fg, bg = p.bg_dark })
hl("StatusLineNC",  { fg = p.comment, bg = p.bg_dark })
hl("WinBar",        { fg = p.fg, bg = p.bg })
hl("WinBarNC",      { fg = p.comment, bg = p.bg })

hl("TabLine",       { fg = p.comment, bg = p.bg_dark })
hl("TabLineFill",   { bg = p.bg_dark })
hl("TabLineSel",    { fg = p.white_br, bg = p.bg, bold = true })

hl("Pmenu",         { fg = p.fg, bg = p.bg_float })
hl("PmenuSel",      { fg = p.bg, bg = p.yellow_br, bold = true })
hl("PmenuSbar",     { bg = p.bg_dark })
hl("PmenuThumb",    { bg = p.border })
hl("WildMenu",      { fg = p.bg, bg = p.yellow_br })
hl("QuickFixLine",  { bg = p.bg_highlight, bold = true })

hl("SpellBad",      { sp = p.error, undercurl = true })
hl("SpellCap",      { sp = p.blue_br, undercurl = true })
hl("SpellLocal",    { sp = p.cyan_br, undercurl = true })
hl("SpellRare",     { sp = p.magenta_br, undercurl = true })

-- ===== Diff =====
hl("DiffAdd",       { fg = p.green_br, bg = p.bg_dark })
hl("DiffChange",    { fg = p.yellow_br, bg = p.bg_dark })
hl("DiffDelete",    { fg = p.red_br, bg = p.bg_dark })
hl("DiffText",      { fg = p.white_br, bg = p.bg_highlight, bold = true })

-- ===== Syntax =====
hl("Comment",       { fg = p.comment, italic = true })

hl("Constant",      { fg = p.magenta_br })
hl("String",        { fg = p.green_br })
hl("Character",     { fg = p.green_br })
hl("Number",        { fg = p.magenta_br })
hl("Boolean",       { fg = p.magenta_br, bold = true })
hl("Float",         { fg = p.magenta_br })

hl("Identifier",    { fg = p.white })
hl("Function",      { fg = p.yellow_br, bold = true })

hl("Statement",     { fg = p.blue_br, bold = true })
hl("Conditional",   { fg = p.blue_br })
hl("Repeat",        { fg = p.blue_br })
hl("Label",         { fg = p.blue_br })
hl("Operator",      { fg = p.fg })
hl("Keyword",       { fg = p.blue_br, bold = true })
hl("Exception",     { fg = p.error })

hl("PreProc",       { fg = p.cyan_br })
hl("Include",       { fg = p.cyan_br })
hl("Define",        { fg = p.cyan_br })
hl("Macro",         { fg = p.cyan_br })
hl("PreCondit",     { fg = p.cyan_br })

hl("Type",          { fg = p.yellow, bold = true })
hl("StorageClass",  { fg = p.yellow })
hl("Structure",     { fg = p.yellow })
hl("Typedef",       { fg = p.yellow })

hl("Special",       { fg = p.magenta_br })
hl("SpecialChar",   { fg = p.magenta_br })
hl("Tag",           { fg = p.yellow_br })
hl("Delimiter",     { fg = p.fg_dark })
hl("SpecialComment",{ fg = p.comment, bold = true })
hl("Debug",         { fg = p.error })

hl("Underlined",    { fg = p.blue_br, underline = true })
hl("Ignore",        { fg = p.comment })
hl("Error",         { fg = p.error, bold = true })
hl("Todo",          { fg = p.bg, bg = p.yellow_br, bold = true })

-- ===== Diagnostics =====
hl("DiagnosticError", { fg = p.error })
hl("DiagnosticWarn",  { fg = p.yellow_br })
hl("DiagnosticInfo",  { fg = p.blue_br })
hl("DiagnosticHint",  { fg = p.green_br })
hl("DiagnosticOk",    { fg = p.green_br })

hl("DiagnosticUnderlineError", { sp = p.error, undercurl = true })
hl("DiagnosticUnderlineWarn",  { sp = p.yellow_br, undercurl = true })
hl("DiagnosticUnderlineInfo",  { sp = p.blue_br, undercurl = true })
hl("DiagnosticUnderlineHint",  { sp = p.green_br, undercurl = true })

hl("DiagnosticVirtualTextError", { fg = p.error, bg = p.bg_dark })
hl("DiagnosticVirtualTextWarn",  { fg = p.yellow_br, bg = p.bg_dark })
hl("DiagnosticVirtualTextInfo",  { fg = p.blue_br, bg = p.bg_dark })
hl("DiagnosticVirtualTextHint",  { fg = p.green_br, bg = p.bg_dark })

-- ===== LSP =====
hl("LspReferenceText",  { bg = p.bg_highlight })
hl("LspReferenceRead",  { bg = p.bg_highlight })
hl("LspReferenceWrite", { bg = p.bg_highlight, underline = true })
hl("LspCodeLens",       { fg = p.comment })
hl("LspInlayHint",      { fg = p.fg_gutter, bg = p.bg_dark, italic = true })

-- ===== Git =====
hl("GitSignsAdd",    { fg = p.green_br })
hl("GitSignsChange", { fg = p.yellow_br })
hl("GitSignsDelete", { fg = p.red_br })

-- ===== Treesitter =====
hl("@variable",           { fg = p.fg })
hl("@variable.builtin",   { fg = p.magenta_br, italic = true })
hl("@variable.parameter", { fg = p.white })
hl("@variable.member",    { fg = p.white })

hl("@constant",           { fg = p.magenta_br })
hl("@constant.builtin",   { fg = p.magenta_br, bold = true })
hl("@string",             { fg = p.green_br })
hl("@string.escape",      { fg = p.cyan_br })
hl("@character",          { fg = p.green_br })
hl("@number",             { fg = p.magenta_br })
hl("@boolean",            { fg = p.magenta_br, bold = true })

hl("@function",           { fg = p.yellow_br, bold = true })
hl("@function.builtin",   { fg = p.yellow_br, italic = true })
hl("@function.call",      { fg = p.yellow_br })
hl("@method",             { fg = p.yellow_br })
hl("@method.call",        { fg = p.yellow_br })
hl("@constructor",        { fg = p.yellow })

hl("@keyword",            { fg = p.blue_br, bold = true })
hl("@keyword.function",   { fg = p.blue_br })
hl("@keyword.return",     { fg = p.blue_br, bold = true })
hl("@conditional",        { fg = p.blue_br })
hl("@repeat",             { fg = p.blue_br })
hl("@operator",           { fg = p.fg })

hl("@type",               { fg = p.yellow, bold = true })
hl("@type.builtin",       { fg = p.yellow, italic = true })
hl("@attribute",          { fg = p.cyan_br })
hl("@namespace",          { fg = p.white })
hl("@property",           { fg = p.white })
hl("@field",              { fg = p.white })

hl("@comment",            { fg = p.comment, italic = true })
hl("@punctuation.delimiter", { fg = p.fg_dark })
hl("@punctuation.bracket",   { fg = p.fg_dark })
hl("@tag",                { fg = p.yellow_br })
hl("@tag.attribute",      { fg = p.white })
hl("@tag.delimiter",      { fg = p.fg_dark })

-- ===== Telescope (optional, ignored gracefully if not installed) =====
hl("TelescopeBorder",        { fg = p.border, bg = p.bg_float })
hl("TelescopeNormal",        { fg = p.fg, bg = p.bg_float })
hl("TelescopeSelection",     { bg = p.bg_highlight, bold = true })
hl("TelescopePromptBorder",  { fg = p.border, bg = p.bg_float })
hl("TelescopeTitle",         { fg = p.yellow_br, bold = true })
