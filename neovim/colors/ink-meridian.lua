-- Ink Meridian — Neovim colourscheme
--
-- Every value below is drawn from the palette documented in the repository
-- README. Nothing is derived locally: the six tint_* entries are the only
-- values that are not taken verbatim from that palette, and they are the
-- documented 22% mixes over the background.
--
-- Dark only. Install: cp neovim/colors/ink-meridian.lua ~/.config/nvim/colors/

vim.o.background = "dark"
vim.o.termguicolors = true
vim.cmd("highlight clear")
vim.g.colors_name = "ink-meridian"

-- ============================================================================
-- Palette
-- ============================================================================

local p = {
  bg              = "#101623",
  fg              = "#CCD6EA",
  cursor          = "#83A8F2",
  cursor_text     = "#101623",
  selection       = "#26365A",
  selection_text  = "#E6ECF7",
  accent          = "#83A8F2",

  text_bright     = "#E6ECF7",
  text_muted      = "#AAB8D0",
  text_dim        = "#58657F",

  surface         = "#1A2233",
  surface_hl      = "#26365A",

  red             = "#DE6E7C",
  green           = "#7CBF8E",
  yellow          = "#D9B06E",
  blue            = "#6F96E8",
  magenta         = "#A687E0",
  cyan            = "#67B7CF",
  white           = "#AAB8D0",

  bright_red      = "#EC8B97",
  bright_green    = "#9DD4A7",
  bright_yellow   = "#E9C78C",
  bright_blue     = "#8DB0F2",
  bright_magenta  = "#BDA3EC",
  bright_cyan     = "#87CEE2",
  bright_white    = "#E6ECF7",

  -- Derived tints: 22% over bg, documented in the root README.
  tint_green      = "#283B3B",
  tint_red        = "#3D2937",
  tint_blue       = "#25324E",
  tint_magenta    = "#312F4D",
  tint_cyan       = "#233949",
  tint_yellow     = "#3C3834",
}

-- ============================================================================
-- Helpers
-- ============================================================================

local function hl(name, opts)
  vim.api.nvim_set_hl(0, name, opts)
end

-- Aliases: let Neovim resolve the chain instead of duplicating colours.
local function link(from, to)
  vim.api.nvim_set_hl(0, from, { link = to })
end

-- ============================================================================
-- Base UI
-- ============================================================================

-- Normal first: everything else builds on it.
hl("Normal", { fg = p.fg, bg = p.bg })
hl("NormalNC", { fg = p.fg, bg = p.bg })

-- Floating windows sit one step above the editor surface.
hl("NormalFloat", { fg = p.fg, bg = p.surface })
hl("FloatBorder", { fg = p.surface_hl, bg = p.surface })
hl("FloatTitle", { fg = p.bg, bg = p.accent, bold = true })
hl("FloatFooter", { fg = p.text_muted, bg = p.surface })

-- Window chrome
hl("WinSeparator", { fg = p.surface_hl })
hl("WinBar", { fg = p.text_muted, bg = p.bg })
hl("WinBarNC", { fg = p.text_dim, bg = p.bg })

-- Status line and tab line
hl("StatusLine", { fg = p.fg, bg = p.surface })
hl("StatusLineNC", { fg = p.text_dim, bg = p.surface })
link("StatusLineTerm", "StatusLine")
link("StatusLineTermNC", "StatusLineNC")
hl("TabLine", { fg = p.text_muted, bg = p.surface })
hl("TabLineFill", { bg = p.surface })
hl("TabLineSel", { fg = p.fg, bg = p.bg })

-- Popup menu
hl("Pmenu", { fg = p.fg, bg = p.surface })
hl("PmenuSel", { fg = p.text_bright, bg = p.surface_hl })
hl("PmenuSbar", { bg = p.surface })
hl("PmenuThumb", { bg = p.text_dim })
hl("PmenuMatch", { fg = p.accent, bold = true })
hl("PmenuMatchSel", { fg = p.accent, bg = p.surface_hl, bold = true })
hl("WildMenu", { fg = p.text_bright, bg = p.surface_hl })

-- Active line and columns
hl("CursorLine", { bg = p.surface })
hl("CursorLineNr", { fg = p.fg, bold = true })
hl("CursorLineFold", { fg = p.text_dim, bg = p.surface })
hl("CursorLineSign", { bg = p.surface })
hl("CursorColumn", { bg = p.surface })
hl("ColorColumn", { bg = p.surface })

-- Cursor
hl("Cursor", { fg = p.cursor_text, bg = p.cursor })
link("lCursor", "Cursor")
link("CursorIM", "Cursor")
hl("TermCursor", { fg = p.cursor_text, bg = p.cursor })
hl("TermCursorNC", { fg = p.cursor_text, bg = p.text_dim })

-- Selection
hl("Visual", { fg = p.selection_text, bg = p.selection })
link("VisualNOS", "Visual")

-- Search and matches
hl("Search", { fg = p.fg, bg = p.tint_blue })
hl("IncSearch", { fg = p.bg, bg = p.accent })
link("CurSearch", "IncSearch")
hl("Substitute", { fg = p.bright_red, bg = p.tint_red })
hl("MatchParen", { fg = p.bright_yellow, bg = p.tint_magenta, underline = true })

-- Invisible text
hl("Conceal", { fg = p.text_dim })
hl("SpecialKey", { fg = p.text_dim })
hl("NonText", { fg = p.text_dim })
hl("Whitespace", { fg = p.text_dim })
hl("EndOfBuffer", { fg = p.surface_hl })

-- Gutter
hl("LineNr", { fg = p.text_dim })
hl("SignColumn", { bg = p.bg })
hl("Folded", { fg = p.text_muted, bg = p.surface })
hl("FoldColumn", { fg = p.text_dim, bg = p.bg })

-- Messages and misc
hl("Directory", { fg = p.bright_blue })
hl("Title", { fg = p.bright_blue, bold = true })
hl("ErrorMsg", { fg = p.bright_red })
hl("WarningMsg", { fg = p.bright_yellow })
hl("ModeMsg", { fg = p.fg, bold = true })
hl("MoreMsg", { fg = p.bright_cyan })
hl("OkMsg", { fg = p.bright_green })
hl("Question", { fg = p.accent })
hl("QuickFixLine", { bg = p.tint_blue })
hl("MsgSeparator", { fg = p.surface_hl })
hl("MsgArea", { fg = p.fg, bg = p.bg })
hl("Underlined", { fg = p.accent, underline = true })
hl("Ignore", { fg = p.text_dim })
hl("Error", { fg = p.bright_red, bg = p.tint_red })
hl("Todo", { fg = p.bg, bg = p.bright_yellow, bold = true })
hl("Scrollbar", { fg = p.text_dim, bg = p.surface_hl })

-- Spelling
hl("SpellBad", { fg = p.bright_red, undercurl = true, sp = p.red })
hl("SpellCap", { fg = p.accent, undercurl = true, sp = p.accent })
hl("SpellLocal", { fg = p.bright_cyan, undercurl = true, sp = p.cyan })
hl("SpellRare", { fg = p.bright_magenta, undercurl = true, sp = p.magenta })

-- Health
hl("healthSuccess", { fg = p.bright_green })
hl("healthWarning", { fg = p.bright_yellow })
hl("healthError", { fg = p.bright_red })

-- LSP decorations
hl("LspInlayHint", { fg = p.blue, bg = p.bg, italic = true })
hl("LspCodeLens", { fg = p.text_dim })
hl("LspCodeLensSeparator", { fg = p.surface_hl })
hl("LspSignatureActiveParameter", { bg = p.tint_blue })
hl("LspReferenceText", { bg = p.surface_hl })
hl("LspReferenceRead", { bg = p.surface_hl })
hl("LspReferenceWrite", { bg = p.surface_hl })

-- ============================================================================
-- Classic vim syntax
-- ============================================================================

hl("Comment", { fg = p.text_dim, italic = true })

hl("Constant", { fg = p.bright_yellow })
hl("String", { fg = p.bright_green })
hl("Character", { fg = p.bright_green })
hl("Number", { fg = p.bright_yellow })
hl("Boolean", { fg = p.bright_yellow })
hl("Float", { fg = p.bright_yellow })

hl("Identifier", { fg = p.fg })
hl("Function", { fg = p.bright_blue })

hl("Statement", { fg = p.bright_magenta })
hl("Conditional", { fg = p.bright_magenta })
hl("Repeat", { fg = p.bright_magenta })
hl("Label", { fg = p.accent })
hl("Operator", { fg = p.bright_cyan })
hl("Keyword", { fg = p.bright_magenta })
hl("Exception", { fg = p.bright_magenta })

hl("PreProc", { fg = p.bright_magenta })
hl("Include", { fg = p.bright_magenta })
hl("Define", { fg = p.bright_magenta })
hl("Macro", { fg = p.bright_magenta })
hl("PreCondit", { fg = p.bright_magenta })

hl("Type", { fg = p.bright_cyan })
hl("StorageClass", { fg = p.bright_magenta })
hl("Structure", { fg = p.bright_cyan })
hl("Typedef", { fg = p.bright_cyan })

hl("Special", { fg = p.red })
hl("SpecialChar", { fg = p.bright_magenta })
hl("Tag", { fg = p.bright_magenta })
hl("Delimiter", { fg = p.text_muted })
hl("SpecialComment", { fg = p.text_muted, italic = true })
hl("Debug", { fg = p.bright_yellow })

-- ============================================================================
-- Treesitter
-- ============================================================================

-- Comments and errors
hl("@comment", { fg = p.text_dim, italic = true })
hl("@comment.documentation", { fg = p.text_muted, italic = true })
hl("@error", { fg = p.bright_red, bg = p.tint_red })
hl("@none", {})
hl("@preproc", { fg = p.bright_magenta })
hl("@define", { fg = p.bright_magenta })

-- Punctuation
hl("@punctuation", { fg = p.text_muted })
hl("@punctuation.bracket", { fg = p.fg })
hl("@punctuation.delimiter", { fg = p.fg })
hl("@punctuation.special", { fg = p.red })

-- Strings
hl("@string", { fg = p.bright_green })
hl("@string.documentation", { fg = p.bright_green })
hl("@string.regex", { fg = p.bright_yellow })
link("@string.regexp", "@string.regex")
hl("@string.escape", { fg = p.bright_magenta })
hl("@string.special", { fg = p.bright_yellow })
hl("@string.special.symbol", { fg = p.bright_magenta })
hl("@string.special.url", { fg = p.bright_cyan })
hl("@character", { fg = p.bright_green })
hl("@character.special", { fg = p.bright_magenta })

-- Literals
hl("@boolean", { fg = p.bright_yellow })
hl("@number", { fg = p.bright_yellow })
link("@float", "@number")

-- Functions
hl("@function", { fg = p.bright_blue })
hl("@function.builtin", { fg = p.bright_blue })
hl("@function.call", { fg = p.bright_blue })
hl("@function.macro", { fg = p.bright_magenta })
hl("@method", { fg = p.bright_blue })
hl("@method.call", { fg = p.bright_blue })
hl("@constructor", { fg = p.bright_blue })
hl("@parameter", { fg = p.text_bright })

-- Keywords
hl("@keyword", { fg = p.bright_magenta })
hl("@keyword.function", { fg = p.bright_magenta })
hl("@keyword.operator", { fg = p.bright_magenta })
hl("@keyword.return", { fg = p.bright_magenta })
hl("@keyword.coroutine", { fg = p.bright_magenta })
hl("@keyword.import", { fg = p.bright_magenta })
hl("@keyword.type", { fg = p.bright_magenta })
hl("@keyword.modifier", { fg = p.bright_magenta })
hl("@keyword.repeat", { fg = p.bright_magenta })
hl("@keyword.debug", { fg = p.bright_magenta })
hl("@keyword.exception", { fg = p.bright_magenta })
hl("@keyword.directive", { fg = p.bright_magenta })
hl("@keyword.conditional", { fg = p.bright_magenta })
hl("@keyword.conditional.ternary", { fg = p.bright_cyan })
hl("@conditional", { fg = p.bright_magenta })
hl("@repeat", { fg = p.bright_magenta })
hl("@debug", { fg = p.bright_magenta })
hl("@label", { fg = p.accent })
hl("@include", { fg = p.bright_magenta })
hl("@exception", { fg = p.bright_magenta })

-- Types
hl("@type", { fg = p.bright_cyan })
hl("@type.builtin", { fg = p.bright_cyan })
hl("@type.qualifier", { fg = p.bright_magenta })
hl("@type.definition", { fg = p.bright_cyan })
hl("@storageclass", { fg = p.bright_magenta })
hl("@structure", { fg = p.bright_cyan })
hl("@attribute", { fg = p.bright_yellow })
hl("@attribute.builtin", { fg = p.bright_yellow })

-- Fields, variables and constants
hl("@field", { fg = p.accent })
hl("@property", { fg = p.accent })
hl("@variable", { fg = p.fg })
hl("@variable.builtin", { fg = p.bright_yellow })
hl("@variable.parameter", { fg = p.text_bright })
hl("@variable.member", { fg = p.accent })
hl("@constant", { fg = p.bright_yellow })
hl("@constant.builtin", { fg = p.bright_yellow })
hl("@constant.macro", { fg = p.bright_magenta })
hl("@namespace", { fg = p.text_muted })
hl("@module", { fg = p.text_muted })
hl("@symbol", { fg = p.bright_magenta })
hl("@operator", { fg = p.bright_cyan })
hl("@enum", { fg = p.bright_cyan })

-- Tags
hl("@tag", { fg = p.bright_magenta })
hl("@tag.attribute", { fg = p.bright_yellow })
hl("@tag.delimiter", { fg = p.red })

-- Markup
hl("@markup.strong", { fg = p.bright_yellow, bold = true })
hl("@markup.emphasis", { fg = p.accent, italic = true })
hl("@markup.underline", { fg = p.bright_blue, underline = true })
hl("@markup.strikethrough", { fg = p.text_muted, strikethrough = true })
hl("@markup.heading", { fg = p.bright_blue, bold = true })
for level = 1, 6 do
  hl("@markup.heading." .. level, { fg = p.bright_blue, bold = true })
end
hl("@markup.link", { fg = p.bright_blue, italic = true })
hl("@markup.link.label", { fg = p.bright_blue, italic = true })
hl("@markup.link.url", { fg = p.bright_cyan })
hl("@markup.raw", { fg = p.bright_green })
hl("@markup.raw.block", { fg = p.bright_green, bg = p.surface })
hl("@markup.list", { fg = p.bright_magenta })
hl("@markup.list.marked", { fg = p.bright_magenta })
hl("@markup.list.unnumbered", { fg = p.bright_magenta })
hl("@markup.list.numbered", { fg = p.bright_magenta })
hl("@markup.quote", { fg = p.text_muted, bg = p.surface, italic = true })
hl("@markup.math", { fg = p.bright_yellow })
hl("@markup.environment", { fg = p.bright_magenta })
hl("@markup.environment.name", { fg = p.bright_magenta })
hl("@markup.comment", { fg = p.text_dim, italic = true })
hl("@markup.title", { fg = p.bright_blue, bold = true })

-- Diff inside treesitter (git commit buffers, diffview)
hl("@diff.plus", { fg = p.bright_green })
hl("@diff.minus", { fg = p.bright_red })
hl("@diff.delta", { fg = p.bright_blue })

-- Legacy @text.* aliases from nvim-treesitter 0.8 and earlier.
link("@text.literal", "@markup.raw")
link("@text.reference", "@markup.link")
link("@text.title", "@markup.heading")
link("@text.uri", "@markup.link.url")
link("@text.math", "@markup.math")
link("@text.environment", "@markup.environment")
link("@text.environment.name", "@markup.environment.name")
link("@text.strong", "@markup.strong")
link("@text.emphasis", "@markup.emphasis")
link("@text.underline", "@markup.underline")
link("@text.strike", "@markup.strikethrough")
hl("@text.note", { fg = p.accent, italic = true })
hl("@text.warning", { fg = p.bright_yellow, italic = true })
hl("@text.danger", { fg = p.bright_red, italic = true })

-- ============================================================================
-- LSP semantic tokens
-- ============================================================================

-- Linked to the treesitter groups so both highlighters agree.
link("@lsp.type.class", "@type")
link("@lsp.type.comment", "@comment")
link("@lsp.type.decorator", "@attribute")
link("@lsp.type.enum", "@enum")
link("@lsp.type.enumMember", "@constant")
link("@lsp.type.event", "@type")
link("@lsp.type.function", "@function")
link("@lsp.type.interface", "@type")
link("@lsp.type.keyword", "@keyword")
link("@lsp.type.macro", "@function.macro")
link("@lsp.type.method", "@method")
link("@lsp.type.modifier", "@keyword.modifier")
link("@lsp.type.namespace", "@namespace")
link("@lsp.type.number", "@number")
link("@lsp.type.operator", "@operator")
link("@lsp.type.parameter", "@parameter")
link("@lsp.type.property", "@property")
link("@lsp.type.regexp", "@string.regex")
link("@lsp.type.string", "@string")
link("@lsp.type.struct", "@type")
link("@lsp.type.type", "@type")
link("@lsp.type.typeParameter", "@type")
link("@lsp.type.variable", "@variable")

hl("@lsp.mod.readonly", { italic = true })
hl("@lsp.mod.deprecated", { strikethrough = true })
hl("@lsp.mod.static", { bold = true })
link("@lsp.typemod.variable.defaultLibrary", "@variable.builtin")
link("@lsp.typemod.function.defaultLibrary", "@function.builtin")
link("@lsp.typemod.keyword.documentation", "@comment.documentation")

-- ============================================================================
-- Diagnostics
-- ============================================================================

hl("DiagnosticError", { fg = p.bright_red })
hl("DiagnosticWarn", { fg = p.bright_yellow })
hl("DiagnosticInfo", { fg = p.bright_cyan })
hl("DiagnosticHint", { fg = p.accent })
hl("DiagnosticOk", { fg = p.bright_green })

-- Virtual text sits on the tint of the severity it reports.
hl("DiagnosticVirtualTextError", { fg = p.bright_red, bg = p.tint_red })
hl("DiagnosticVirtualTextWarn", { fg = p.bright_yellow, bg = p.tint_yellow })
hl("DiagnosticVirtualTextInfo", { fg = p.bright_cyan, bg = p.tint_cyan })
hl("DiagnosticVirtualTextHint", { fg = p.accent, bg = p.tint_blue })
hl("DiagnosticVirtualTextOk", { fg = p.bright_green, bg = p.tint_green })

hl("DiagnosticUnderlineError", { undercurl = true, sp = p.red })
hl("DiagnosticUnderlineWarn", { undercurl = true, sp = p.yellow })
hl("DiagnosticUnderlineInfo", { undercurl = true, sp = p.cyan })
hl("DiagnosticUnderlineHint", { undercurl = true, sp = p.accent })
hl("DiagnosticUnderlineOk", { undercurl = true, sp = p.green })

hl("DiagnosticSignError", { fg = p.bright_red, bg = p.bg })
hl("DiagnosticSignWarn", { fg = p.bright_yellow, bg = p.bg })
hl("DiagnosticSignInfo", { fg = p.bright_cyan, bg = p.bg })
hl("DiagnosticSignHint", { fg = p.accent, bg = p.bg })
hl("DiagnosticSignOk", { fg = p.bright_green, bg = p.bg })

link("DiagnosticFloatingError", "DiagnosticError")
link("DiagnosticFloatingWarn", "DiagnosticWarn")
link("DiagnosticFloatingInfo", "DiagnosticInfo")
link("DiagnosticFloatingHint", "DiagnosticHint")
link("DiagnosticFloatingOk", "DiagnosticOk")

hl("DiagnosticDeprecated", { fg = p.text_dim, strikethrough = true })
hl("DiagnosticUnnecessary", { fg = p.text_dim })

-- ============================================================================
-- Diff and git
-- ============================================================================

hl("DiffAdd", { fg = p.bright_green, bg = p.tint_green })
hl("DiffDelete", { fg = p.bright_red, bg = p.tint_red })
hl("DiffChange", { fg = p.fg, bg = p.tint_blue })
hl("DiffText", { fg = p.bright_blue, bg = p.tint_magenta })

link("diffAdded", "DiffAdd")
link("diffRemoved", "DiffDelete")
link("diffChanged", "DiffChange")
hl("Added", { fg = p.bright_green })
hl("Removed", { fg = p.bright_red })
hl("Changed", { fg = p.bright_blue })
hl("diffLine", { fg = p.bright_blue })
hl("diffSubname", { fg = p.bright_cyan })
hl("diffFile", { fg = p.bright_magenta })
hl("diffIndexLine", { fg = p.text_dim })
link("diffComment", "@comment")

-- vim-gitgutter (coexists with gitsigns definitions below)
hl("GitGutterAdd", { fg = p.bright_green, bg = p.bg })
hl("GitGutterChange", { fg = p.bright_yellow, bg = p.bg })
hl("GitGutterDelete", { fg = p.bright_red, bg = p.bg })
hl("GitGutterChangeDelete", { fg = p.bright_yellow, bg = p.bg })

-- ============================================================================
-- Terminal
-- ============================================================================

hl("Terminal", { fg = p.fg, bg = p.bg })
link("TermCursorLC", "TermCursor")

-- ANSI ordering matches ghostty/config.
vim.g.terminal_color_0 = p.surface
vim.g.terminal_color_1 = p.red
vim.g.terminal_color_2 = p.green
vim.g.terminal_color_3 = p.yellow
vim.g.terminal_color_4 = p.blue
vim.g.terminal_color_5 = p.magenta
vim.g.terminal_color_6 = p.cyan
vim.g.terminal_color_7 = p.white
vim.g.terminal_color_8 = p.text_dim
vim.g.terminal_color_9 = p.bright_red
vim.g.terminal_color_10 = p.bright_green
vim.g.terminal_color_11 = p.bright_yellow
vim.g.terminal_color_12 = p.bright_blue
vim.g.terminal_color_13 = p.bright_magenta
vim.g.terminal_color_14 = p.bright_cyan
vim.g.terminal_color_15 = p.bright_white

-- ============================================================================
-- Plugins
-- ============================================================================

-- lualine --------------------------------------------------------------
-- Mode badges follow tuicr: dark text on a bright accent fill.
hl("LualineNormal", { fg = p.fg, bg = p.surface })
hl("LualineInsert", { fg = p.bg, bg = p.bright_blue })
hl("LualineVisual", { fg = p.bg, bg = p.bright_magenta })
hl("LualineReplace", { fg = p.bg, bg = p.bright_red })
hl("LualineCommand", { fg = p.bg, bg = p.bright_yellow })
hl("LualineInactive", { fg = p.text_dim, bg = p.surface })

-- gitsigns -------------------------------------------------------------
hl("GitSignsAdd", { fg = p.bright_green, bg = p.bg })
hl("GitSignsChange", { fg = p.bright_yellow, bg = p.bg })
hl("GitSignsDelete", { fg = p.bright_red, bg = p.bg })
link("GitSignsAddLn", "DiffAdd")
link("GitSignsChangeLn", "DiffChange")
link("GitSignsDeleteLn", "DiffDelete")
hl("GitSignsAddInline", { bg = p.tint_green })
hl("GitSignsDeleteInline", { bg = p.tint_red })
hl("GitSignsChangeInline", { bg = p.tint_blue })
hl("GitSignsCurrentLineBlame", { fg = p.text_dim, italic = true })

-- telescope ------------------------------------------------------------
hl("TelescopeNormal", { fg = p.fg, bg = p.surface })
hl("TelescopeBorder", { fg = p.surface_hl, bg = p.surface })
hl("TelescopeTitle", { fg = p.bg, bg = p.accent, bold = true })
hl("TelescopePromptNormal", { fg = p.fg, bg = p.bg })
hl("TelescopePromptBorder", { fg = p.accent, bg = p.bg })
hl("TelescopePromptPrefix", { fg = p.accent, bg = p.bg })
hl("TelescopeResultsNormal", { fg = p.fg, bg = p.surface })
hl("TelescopeResultsBorder", { fg = p.surface_hl, bg = p.surface })
hl("TelescopePreviewNormal", { fg = p.fg, bg = p.surface })
hl("TelescopePreviewBorder", { fg = p.surface_hl, bg = p.surface })
hl("TelescopeSelection", { fg = p.text_bright, bg = p.surface_hl })
hl("TelescopeMultiSelection", { fg = p.text_muted, bg = p.tint_blue })
hl("TelescopeMatching", { fg = p.bright_yellow, bold = true })

-- nvim-cmp -------------------------------------------------------------
hl("CmpItemAbbr", { fg = p.fg })
hl("CmpItemAbbrDeprecated", { fg = p.text_dim, strikethrough = true })
hl("CmpItemAbbrMatch", { fg = p.bright_blue, bold = true })
hl("CmpItemAbbrMatchFuzzy", { fg = p.bright_blue })
hl("CmpItemMenu", { fg = p.text_dim })

-- Completion kinds, mapped by semantics.
local kind_colours = {
  { "Text", p.fg },
  { "Unit", p.fg },
  { "Method", p.bright_blue },
  { "Function", p.bright_blue },
  { "Constructor", p.bright_blue },
  { "Field", p.accent },
  { "Variable", p.accent },
  { "Property", p.accent },
  { "Class", p.bright_cyan },
  { "Interface", p.bright_cyan },
  { "Struct", p.bright_cyan },
  { "Enum", p.bright_cyan },
  { "EnumMember", p.bright_cyan },
  { "Module", p.text_muted },
  { "Namespace", p.text_muted },
  { "Constant", p.bright_yellow },
  { "Number", p.bright_yellow },
  { "Value", p.bright_yellow },
  { "Keyword", p.bright_magenta },
  { "Operator", p.bright_magenta },
  { "Reference", p.bright_magenta },
  { "Event", p.bright_magenta },
  { "Snippet", p.bright_green },
  { "Color", p.bright_green },
  { "File", p.bright_green },
  { "Folder", p.bright_green },
  { "TypeParameter", p.bright_cyan },
}

for _, kind in ipairs(kind_colours) do
  hl("CmpItemKind" .. kind[1], { fg = kind[2] })
end

-- blink.cmp ------------------------------------------------------------
hl("BlinkCmpMenu", { bg = p.surface })
hl("BlinkCmpMenuBorder", { fg = p.surface_hl, bg = p.surface })
hl("BlinkCmpMenuSelection", { fg = p.text_bright, bg = p.surface_hl })
hl("BlinkCmpLabel", { fg = p.fg })
hl("BlinkCmpLabelMatch", { fg = p.bright_blue, bold = true })
hl("BlinkCmpLabelDeprecated", { fg = p.text_dim, strikethrough = true })
hl("BlinkCmpDoc", { fg = p.fg, bg = p.surface })
hl("BlinkCmpDocBorder", { fg = p.surface_hl, bg = p.surface })
hl("BlinkCmpSignatureHelp", { fg = p.fg, bg = p.surface })
hl("BlinkCmpSignatureHelpBorder", { fg = p.surface_hl, bg = p.surface })
hl("BlinkCmpGhostText", { fg = p.blue, italic = true })
hl("BlinkCmpScrollBarThumb", { bg = p.text_dim })
hl("BlinkCmpScrollBarGutter", { bg = p.surface })

for _, kind in ipairs(kind_colours) do
  hl("BlinkCmpKind" .. kind[1], { fg = kind[2] })
end

-- neo-tree -------------------------------------------------------------
hl("NeoTreeNormal", { fg = p.fg, bg = p.surface })
hl("NeoTreeNormalNC", { fg = p.text_muted, bg = p.surface })
hl("NeoTreeEndOfBuffer", { fg = p.surface_hl, bg = p.surface })
hl("NeoTreeVertSplit", { fg = p.surface_hl, bg = p.surface })
hl("NeoTreeWinSeparator", { fg = p.surface_hl, bg = p.surface })
hl("NeoTreeFloatBorder", { fg = p.accent, bg = p.surface })
hl("NeoTreeFloatTitle", { fg = p.bg, bg = p.accent, bold = true })
hl("NeoTreeTitleBar", { fg = p.bg, bg = p.accent, bold = true })
hl("NeoTreeDirectoryName", { fg = p.bright_blue })
hl("NeoTreeDirectoryIcon", { fg = p.accent })
hl("NeoTreeFileName", { fg = p.fg })
hl("NeoTreeFileNameOpened", { fg = p.text_bright, italic = true })
hl("NeoTreeRootName", { fg = p.bright_magenta, bold = true })
hl("NeoTreeExpander", { fg = p.text_muted })
hl("NeoTreeIndentMarker", { fg = p.surface_hl })
hl("NeoTreeGitAdded", { fg = p.bright_green })
hl("NeoTreeGitModified", { fg = p.bright_yellow })
hl("NeoTreeGitDeleted", { fg = p.bright_red })
hl("NeoTreeGitRenamed", { fg = p.bright_blue })
hl("NeoTreeGitIgnored", { fg = p.text_dim })
hl("NeoTreeGitUntracked", { fg = p.bright_cyan })
hl("NeoTreeGitConflict", { fg = p.bright_red })

-- nvim-tree ------------------------------------------------------------
hl("NvimTreeNormal", { fg = p.fg, bg = p.surface })
hl("NvimTreeNormalNC", { fg = p.text_muted, bg = p.surface })
hl("NvimTreeEndOfBuffer", { fg = p.surface_hl, bg = p.surface })
hl("NvimTreeVertSplit", { fg = p.surface_hl, bg = p.surface })
hl("NvimTreeWinSeparator", { fg = p.surface_hl, bg = p.surface })
hl("NvimTreeFolderIcon", { fg = p.accent })
hl("NvimTreeFolderName", { fg = p.bright_blue })
hl("NvimTreeOpenedFolderName", { fg = p.bright_blue, bold = true })
hl("NvimTreeEmptyFolderName", { fg = p.text_muted })
hl("NvimTreeRootFolder", { fg = p.bright_magenta, bold = true })
hl("NvimTreeIndentMarker", { fg = p.surface_hl })
hl("NvimTreeGitDirty", { fg = p.bright_yellow })
hl("NvimTreeGitStaged", { fg = p.bright_blue })
hl("NvimTreeGitNew", { fg = p.bright_green })
hl("NvimTreeGitDeleted", { fg = p.bright_red })
hl("NvimTreeGitRenamed", { fg = p.bright_blue })
hl("NvimTreeGitIgnored", { fg = p.text_dim })
hl("NvimTreeExecFile", { fg = p.bright_green })
hl("NvimTreeSymlink", { fg = p.bright_cyan })
hl("NvimTreeSpecialFile", { fg = p.bright_yellow })

-- bufferline -----------------------------------------------------------
hl("BufferLineFill", { bg = p.surface })
hl("BufferLineBackground", { fg = p.text_muted, bg = p.surface })
hl("BufferLineBufferVisible", { fg = p.text_muted, bg = p.surface })
hl("BufferLineBufferSelected", { fg = p.fg, bg = p.bg, bold = true })
hl("BufferLineTab", { fg = p.text_muted, bg = p.surface })
hl("BufferLineTabSelected", { fg = p.bg, bg = p.accent, bold = true })
hl("BufferLineTabClose", { fg = p.bright_red, bg = p.surface })
hl("BufferLineSeparator", { fg = p.surface, bg = p.surface })
hl("BufferLineSeparatorSelected", { fg = p.bg, bg = p.bg })
hl("BufferLineSeparatorVisible", { fg = p.surface, bg = p.surface })
hl("BufferLineIndicatorSelected", { fg = p.accent, bg = p.bg })
hl("BufferLinePick", { fg = p.bright_yellow, bold = true })
hl("BufferLinePickSelected", { fg = p.accent, bold = true })
hl("BufferLineModified", { fg = p.bright_yellow, bg = p.surface })
hl("BufferLineModifiedSelected", { fg = p.bright_yellow, bg = p.bg })
hl("BufferLineModifiedVisible", { fg = p.bright_yellow, bg = p.surface })
hl("BufferLineDuplicate", { fg = p.text_dim })
hl("BufferLineCloseButton", { fg = p.text_dim, bg = p.surface })
hl("BufferLineCloseButtonSelected", { fg = p.bright_red, bg = p.bg })
hl("BufferLineCloseButtonVisible", { fg = p.text_dim, bg = p.surface })

-- which-key ------------------------------------------------------------
hl("WhichKey", { fg = p.accent, bold = true })
hl("WhichKeySeparator", { fg = p.text_dim })
hl("WhichKeyGroup", { fg = p.bright_magenta })
hl("WhichKeyDesc", { fg = p.bright_cyan })
hl("WhichKeyValue", { fg = p.text_muted })
hl("WhichKeyFloat", { bg = p.surface })
hl("WhichKeyIcon", { fg = p.bright_yellow })
hl("WhichKeyTitle", { fg = p.bg, bg = p.accent, bold = true })

-- indent-blankline -----------------------------------------------------
hl("IblIndent", { fg = p.surface_hl })
hl("IblScope", { fg = p.accent })
hl("IblWhitespace", { fg = p.surface_hl })
link("IndentBlanklineChar", "IblIndent")
link("IndentBlanklineContextChar", "IblScope")
link("IndentBlanklineSpaceChar", "IblWhitespace")

-- noice ----------------------------------------------------------------
hl("NoiceCmdlinePopup", { fg = p.fg, bg = p.surface })
hl("NoiceCmdlinePopupBorder", { fg = p.accent, bg = p.surface })
hl("NoiceCmdlinePopupTitle", { fg = p.bg, bg = p.accent, bold = true })
hl("NoiceCmdlineIcon", { fg = p.accent })
hl("NoiceCmdlineIconSearch", { fg = p.bright_yellow })
hl("NoiceCmdlineIconCmdLine", { fg = p.accent })
hl("NoicePopup", { bg = p.surface })
hl("NoicePopupBorder", { fg = p.surface_hl, bg = p.surface })
hl("NoicePopupmenu", { bg = p.surface })
hl("NoicePopupmenuBorder", { fg = p.surface_hl, bg = p.surface })
hl("NoicePopupmenuSelected", { fg = p.text_bright, bg = p.surface_hl })
hl("NoicePopupmenuMatch", { fg = p.bright_blue, bold = true })
hl("NoicePopupmenuSbar", { bg = p.surface })
hl("NoicePopupmenuThumb", { bg = p.text_dim })
hl("NoiceFormatTitle", { fg = p.bright_blue, bold = true })
hl("NoiceFormatEvent", { fg = p.text_dim })
hl("NoiceFormatLevelError", { fg = p.bright_red })
hl("NoiceFormatLevelWarn", { fg = p.bright_yellow })
hl("NoiceFormatProgressDone", { bg = p.accent })
hl("NoiceFormatProgressTodo", { bg = p.surface_hl })
hl("NoiceConfirm", { fg = p.fg })
hl("NoiceConfirmBorder", { fg = p.surface_hl })
hl("NoiceSplit", { bg = p.surface })
hl("NoiceSplitBorder", { fg = p.surface_hl, bg = p.surface })

-- nvim-notify ----------------------------------------------------------
hl("NotifyERRORBorder", { fg = p.tint_red })
hl("NotifyERRORIcon", { fg = p.bright_red })
hl("NotifyERRORTitle", { fg = p.bright_red })
hl("NotifyWARNBorder", { fg = p.tint_yellow })
hl("NotifyWARNIcon", { fg = p.bright_yellow })
hl("NotifyWARNTitle", { fg = p.bright_yellow })
hl("NotifyINFOBorder", { fg = p.tint_cyan })
hl("NotifyINFOIcon", { fg = p.bright_cyan })
hl("NotifyINFOTitle", { fg = p.bright_cyan })
hl("NotifyDEBUGBorder", { fg = p.surface })
hl("NotifyDEBUGIcon", { fg = p.text_muted })
hl("NotifyDEBUGTitle", { fg = p.text_muted })
hl("NotifyTRACEBorder", { fg = p.tint_blue })
hl("NotifyTRACEIcon", { fg = p.accent })
hl("NotifyTRACETitle", { fg = p.accent })

-- mini.icons -----------------------------------------------------------
hl("MiniIconsGrey", { fg = p.text_muted })
hl("MiniIconsRed", { fg = p.bright_red })
hl("MiniIconsOrange", { fg = p.bright_yellow })
hl("MiniIconsYellow", { fg = p.yellow })
hl("MiniIconsGreen", { fg = p.bright_green })
hl("MiniIconsCyan", { fg = p.bright_cyan })
hl("MiniIconsBlue", { fg = p.bright_blue })
hl("MiniIconsPurple", { fg = p.bright_magenta })
