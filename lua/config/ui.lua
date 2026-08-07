local border_fg = "#f49586"
local transparent = "NONE"

local function set_highlights()
  vim.api.nvim_set_hl(0, "Visual", { bg = "#1E1E1E", blend = 15 })

  for _, group in ipairs({
    "FloatBorder",
    "WinSeparator",
    "VertSplit",
    "FzfLuaBorder",
    "LspInfoBorder",
    "LspFloatWinBorder",
    "DiagnosticFloatingError",
    "DiagnosticFloatingWarn",
    "DiagnosticFloatingInfo",
    "DiagnosticFloatingHint",
    "Cmdline",
    "CmdlineBorder",
    "CmdlinePopupBorder",
    "MsgSeparator",
    "NoiceCmdlinePopup",
    "NoiceCmdlinePopupBorder",
    "NoiceCmdline",
    "NoiceCmdlineIcon",
    "NoiceCmdlineIconSearch",
    "NoiceCmdlinePrompt",
    "NoiceCmdlinePopupTitle",
    "NoiceCmdlinePopupBorderSearch",
    "NoiceCmdlineIconInput",
    "NoiceCmdlinePopupBorderInput",
    "SnacksWinSeparator",
    "SnacksTitle",
    "SnacksFooter",
    "SnacksWinBar",
    "SnacksWinBarNC",
    "SnacksInputBorder",
    "SnacksInputTitle",
    "SnacksPickerTitle",
    "SnacksPickerInput",
    "SnacksPickerInputSearch",
    "SnacksPickerTotals",
    "SnacksPickerSpinner",
  }) do
    vim.api.nvim_set_hl(0, group, { fg = border_fg, bg = transparent })
  end

  for _, group in ipairs({
    "NormalFloat",
    "SnacksNormal",
    "SnacksNormalNC",
  }) do
    vim.api.nvim_set_hl(0, group, { bg = transparent })
  end

  for _, group in ipairs({
    "NoiceCmdlineIconInput",
    "NoiceCmdlineIconSearch",
    "SnacksInputIcon",
  }) do
    vim.api.nvim_set_hl(0, group, { fg = border_fg, bg = transparent })
  end

  for _, mode in ipairs({ "normal", "insert", "visual", "replace", "inactive" }) do
    vim.api.nvim_set_hl(0, "lualine_c_" .. mode, { bg = transparent })
  end
  vim.api.nvim_set_hl(0, "StatusLine", { bg = transparent })
  vim.api.nvim_set_hl(0, "StatusLineNC", { bg = transparent })
  vim.api.nvim_set_hl(0, "SnacksDashboardHeader", { fg = border_fg, bold = true })

  vim.api.nvim_set_hl(0, "TreesitterContext", { link = "CursorLine" })
  vim.api.nvim_set_hl(0, "TreesitterContextLineNumber", { link = "CursorLineNr" })
  vim.api.nvim_set_hl(0, "TreesitterContextBottom", { fg = border_fg, bg = transparent })

  for _, group in ipairs({
    "GitSignsAddPreview",
    "GitSignsDeletePreview",
    "GitSignsAddInline",
    "GitSignsDeleteInline",
    "GitSignsNoEOLPreview",
  }) do
    local ok, highlight = pcall(vim.api.nvim_get_hl, 0, { name = group, link = false })
    if ok then
      highlight.bg = nil
      highlight.ctermbg = nil
      highlight.blend = nil
      vim.api.nvim_set_hl(0, group, highlight)
    end
  end
end

local group = vim.api.nvim_create_augroup("skrach_ui", { clear = true })
vim.api.nvim_create_autocmd("ColorScheme", { group = group, callback = set_highlights })
vim.api.nvim_create_autocmd("User", {
  group = group,
  pattern = { "LazyVimStarted", "VeryLazy" },
  callback = set_highlights,
})
