local colors = require("darker-theme.colors")

local theme = {}
local c = colors.get_colors()
local s = colors.get_styles()

local default = {
  ColorColumn     = { bg = c.line, },
  --   Conceal"
  --   Cursor"
  --   CursorIM"
  CursorColumn    = { bg = c.line, },
  CursorLine      = { bg = c.line, },
  Directory       = { fg = c.blue, },
  DiffAdd         = { fg = c.addfg, bg = c.addbg, },
  DiffChange      = { fg = c.changefg, bg = c.changebg, },
  DiffDelete      = { fg = c.background, bg = c.delbg, },
  DiffText        = { fg = c.background, bg = c.blue, },
  ErrorMsg        = { fg = c.background, bg = c.red, style = s.standout },
  VertSplit       = { fg = c.window, bg = c.none, },
  Folded          = { fg = c.comment, bg = c.darkcolumn, },
  FoldColumn      = { bg = c.darkcolumn, },
  SignColumn      = { bg = c.darkcolumn, },
  --   Incsearch"
  LineNr          = { fg = c.selection, bg = c.none, },
  CursorLineNr    = { fg = c.yellow, bg = c.none, },
  MatchParen      = { fg = c.background, bg = c.changebg, },
  ModeMsg         = { fg = c.green, bg = c.none, },
  MoreMsg         = { fg = c.green, bg = c.none, },
  NonText         = { fg = c.selection, bg = c.none, },
  Pmenu           = { fg = c.foreground, bg = c.selection, },
  PmenuSel        = { fg = c.foreground, bg = c.selection, style = s.inverse },
  --   PmenuSbar"
  --   PmenuThumb"
  Question        = { fg = c.green, bg = c.none, },
  Search          = { fg = c.background, bg = c.yellow, },
  SpecialKey      = { fg = c.selection, bg = c.none, },
  SpellCap        = { fg = c.blue, bg = c.darkblue, style = s.underline },
  SpellLocal      = { fg = c.aqua, bg = c.darkcyan, style = s.underline },
  SpellBad        = { fg = c.red, bg = c.darkred, style = s.underline },
  SpellRare       = { fg = c.purple, bg = c.darkpurple, style = s.underline },
  StatusLine      = { fg = c.comment, bg = c.background, style = s.inverse },
  StatusLineNC    = { fg = c.window, bg = c.comment, style = s.inverse },
  TabLine         = { fg = c.foreground, bg = c.darkcolumn, style = s.inverse },
  --   TabLineFill"
  --   TabLineSel"
  Title           = { fg = c.yellow, bg = c.none, style = s.none },
  Visual          = { fg = c.none, bg = c.selection, style = s.none },
  --   VisualNos"
  WarningMsg      = { fg = c.red, bg = c.none, style = s.none, },
  LongLineWarning = { fg = c.none, bg = c.longlinewarn, style = s.underline, },
  --   WildMenu"
  Normal          = { fg = c.foreground, bg = c.background, style = s.none, },
  Comment         = { fg = c.comment, bg = c.none, style = s.none, },
  Constant        = { fg = c.red, bg = c.none, style = s.none, },
  String          = { fg = c.green, bg = c.none, style = s.none, },
  --   Character"
  --   Number"
  --   Boolean"
  --   Float"
  Identifier      = { fg = c.purple, bg = c.none, style = s.none, },
  Function        = { fg = c.yellow, bg = c.none, style = s.none, },
  Statement       = { fg = c.blue, bg = c.none, style = s.none, },
  --   Conditional"
  --   Repeat"
  --   Label"
  Operator        = { fg = c.aqua, bg = c.none, style = s.none, },
  --   Keyword"
  --   Exception"
  PreProc         = { fg = c.aqua, bg = c.none, style = s.none, },
  --   Include"
  --   Define"
  --   Macro"
  --   PreCondit"
  Type            = { fg = c.orange, bg = c.none, style = s.none, },
  --   StorageClass"
  Structure       = { fg = c.aqua, bg = c.none, style = s.none, },
  --   Typedef"
  Special         = { fg = c.green, bg = c.none, style = s.none, },
  --   SpecialChar"
  --   Tag"
  --   Delimiter"
  --   SpecialComment"
  --   Debug"
  Underlined      = { fg = c.blue, bg = c.none, style = s.none, },
  Ignore          = { fg = c.none, bg = c.none, style = s.none, },
  Error           = { fg = c.red, bg = c.darkred, style = s.underline, },
  Todo            = { fg = c.addfg, bg = c.none, style = s.none, },
  qfLineNr        = { fg = c.yellow, bg = c.none, style = s.none, },
  -- Diff Syntax Highlighting:"{{{
  ----   diffOldFile
  ----   diffNewFile
  ----   diffFile
  ----   diffOnly
  ----   diffIdentical
  ----   diffDiffer
  ----   diffBDiffer
  ----   diffIsA
  ----   diffNoEOL
  ----   diffCommon
  ----   diffChanged
  diffRemoved     = { link = "Constant", },
  diffAdded       = { link = "Special", },




  ["@text.literal"]      = { link = "Comment" },
  ["@text.reference"]    = { link = "Identifier" },
  ["@text.title"]        = { link = "Title" },
  ["@text.uri"]          = { link = "Underlined" },
  ["@text.underline"]    = { link = "Underlined" },
  ["@text.todo"]         = { link = "Todo" },
  ["@comment"]           = { link = "Comment" },
  ["@punctuation"]       = { link = "Delimiter" },
  ["@constant"]          = { link = "Constant" },
  ["@constant.builtin"]  = { link = "Special" },
  ["@constant.macro"]    = { link = "Define" },
  ["@define"]            = { link = "Define" },
  ["@macro"]             = { link = "Macro" },
  ["@string"]            = { link = "String" },
  ["@string.escape"]     = { link = "SpecialChar" },
  ["@string.special"]    = { link = "SpecialChar" },
  ["@character"]         = { link = "Character" },
  ["@character.special"] = { link = "SpecialChar" },
  ["@number"]            = { link = "Number" },
  ["@boolean"]           = { link = "Boolean" },
  ["@float"]             = { link = "Float" },
  ["@function"]          = { link = "Function" },
  ["@function.builtin"]  = { link = "Special" },
  ["@function.macro"]    = { link = "Macro" },
  ["@parameter"]         = { link = "Identifier" },
  ["@method"]            = { link = "Function" },
  ["@field"]             = { link = "Identifier" },
  ["@property"]          = { link = "Identifier" },
  ["@constructor"]       = { link = "Special" },
  ["@conditional"]       = { link = "Conditional" },
  ["@repeat"]            = { link = "Repeat" },
  ["@label"]             = { link = "Label" },
  ["@operator"]          = { link = "Operator" },
  ["@keyword"]           = { link = "Keyword" },
  ["@exception"]         = { link = "Exception" },
  ["@variable"]          = { link = "Identifier" },
  ["@type"]              = { link = "Type" },
  ["@type.definition"]   = { link = "Typedef" },
  ["@storageclass"]      = { link = "StorageClass" },
  ["@structure"]         = { link = "Structure" },
  ["@namespace"]         = { link = "Identifier" },
  ["@include"]           = { link = "Include" },
  ["@preproc"]           = { link = "PreProc" },
  ["@debug"]             = { link = "Debug" },
  ["@tag"]               = { link = "Tag" },
}











-- Comment                   = { fg = },
-- Identifier                = { fg = },
-- Title                     = { fg = },
-- Underlined                = { fg = },
-- Todo                      = { fg = },
-- Delimiter                 = { fg = },
-- Constant                  = { fg = },
-- Special                   = { fg = },
-- Define                    = { fg = },
-- Macro                     = { fg = },
-- String                    = { fg = },
-- SpecialChar               = { fg = },
-- Character                 = { fg = },
-- Number                    = { fg = },
-- Boolean                   = { fg = },
-- Float                     = { fg = },
-- Function                  = { fg = },
-- Conditional               = { fg = },
-- Repeat                    = { fg = },
-- Label                     = { fg = },
-- Operator                  = { fg = },
-- Keyword                   = { fg = },
-- Exception                 = { fg = },
-- Type                      = { fg = },
-- Typedef                   = { fg = },
-- StorageClass              = { fg = },
-- Structure                 = { fg = },
-- Include                   = { fg = },
-- PreProc                   = { fg = },
-- Debug                     = { fg = },
-- Tag                       = { fg = },




theme.apply_highlight = function(theme) -- theme は仮名
  for group_name, hi_table in pairs(theme) do
    theme.highlight(group_name, hi_table)
  end
end

theme.highlight = function(group_name, hi_table)
  if hi_table.link then
    -- highlight! Comment MiniStatuslineInactive
    local hi_cmd = string.format("hi! %s %s", group_name, hi_table.link)
    vim.cmd(hi_cmd)
  elseif (hi_table.style or hi_table.fg or hi_table.bg or hi_table.sp) then
    local style = hi_table.style and "gui=" .. hi_table.style or "gui=NONE"
    local fg = hi_table.fg and "guifg=" .. hi_table.fg or "guifg=NONE"
    local bg = hi_table.bg and "guibg=" .. hi_table.bg or "guibg=NONE"
    local sp = hi_table.sp and "guisp=" .. hi_table.sp or "guisp=NONE"

    -- highlight! Comment gui=xxx guifg=xx guibg=xx guisp=xx
    local hi_cmd = string.format("hi! %s %s %s %s %s", group_name, style, fg, bg, sp)
    vim.cmd(hi_cmd)
  else
    error(string.format('color "%s" table does not exist', group_name))
  end
end

theme.override = function(default, conf)
  if type(conf) == "table" then
    for key, value in pairs(default) do
      -- if not de
    end
  end
end

theme.setup = function(conf)
  local overridden_theme = theme.override(default, conf.overrides.colors)

  theme.apply_highlight(overridden_theme)
end

return theme
