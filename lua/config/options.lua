-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

if vim.loader then
  vim.loader.enable()
end

vim.o.termguicolors = true
vim.o.grepprg = "rg --vimgrep --smart-case --hidden"

vim.cmd("highlight Normal guibg=none")
vim.cmd("highlight NormalFloat guibg=none")

vim.g.lazyvim_colorscheme = "moonfly"

local function set_ui_borders()
  vim.cmd("highlight Visual guibg=#1E1E1E guifg=NONE blend=15")

  -- Consistent red borders for floating windows & common UIs
  local border_fg = "#f49586"
  local border_bg = "NONE"
  vim.api.nvim_set_hl(0, "FloatBorder", { fg = border_fg, bg = border_bg })
  vim.api.nvim_set_hl(0, "WinSeparator", { fg = border_fg, bg = border_bg })
  vim.api.nvim_set_hl(0, "VertSplit", { fg = border_fg, bg = border_bg })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
  vim.api.nvim_set_hl(0, "TelescopeBorder", { fg = border_fg, bg = border_bg })
  vim.api.nvim_set_hl(0, "FzfLuaBorder", { fg = border_fg, bg = border_bg })
  vim.api.nvim_set_hl(0, "LspInfoBorder", { fg = border_fg, bg = border_bg })
  vim.api.nvim_set_hl(0, "LspFloatWinBorder", { fg = border_fg, bg = border_bg })
  vim.api.nvim_set_hl(0, "DiagnosticFloatingError", { fg = border_fg, bg = border_bg })
  vim.api.nvim_set_hl(0, "DiagnosticFloatingWarn", { fg = border_fg, bg = border_bg })
  vim.api.nvim_set_hl(0, "DiagnosticFloatingInfo", { fg = border_fg, bg = border_bg })
  vim.api.nvim_set_hl(0, "DiagnosticFloatingHint", { fg = border_fg, bg = border_bg })

  -- ToggleTerm + cmdline styling
  vim.api.nvim_set_hl(0, "ToggleTermBorder", { fg = border_fg, bg = border_bg })
  vim.api.nvim_set_hl(0, "Cmdline", { fg = border_fg, bg = "NONE" })
  vim.api.nvim_set_hl(0, "CmdlineBorder", { fg = border_fg, bg = border_bg })
  vim.api.nvim_set_hl(0, "CmdlinePopupBorder", { fg = border_fg, bg = border_bg })
  vim.api.nvim_set_hl(0, "MsgSeparator", { fg = border_fg, bg = border_bg })

  -- Noice cmdline popup
  vim.api.nvim_set_hl(0, "NoiceCmdlinePopup", { fg = border_fg, bg = "NONE" })
  vim.api.nvim_set_hl(0, "NoiceCmdlinePopupBorder", { fg = border_fg, bg = border_bg })
  vim.api.nvim_set_hl(0, "NoiceCmdline", { fg = border_fg, bg = "NONE" })
  vim.api.nvim_set_hl(0, "NoiceCmdlineIcon", { fg = border_fg, bg = "NONE" })
  vim.api.nvim_set_hl(0, "NoiceCmdlineIconSearch", { fg = border_fg, bg = "NONE" })
  vim.api.nvim_set_hl(0, "NoiceCmdlinePrompt", { fg = border_fg, bg = "NONE" })
  vim.api.nvim_set_hl(0, "NoiceCmdlinePopupTitle", { fg = border_fg, bg = border_bg })
  vim.api.nvim_set_hl(0, "NoiceCmdlinePopupBorderSearch", { fg = border_fg, bg = border_bg })

  -- Snacks windows/terminal accents
  vim.api.nvim_set_hl(0, "SnacksNormal", { bg = "NONE" })
  vim.api.nvim_set_hl(0, "SnacksNormalNC", { bg = "NONE" })
  vim.api.nvim_set_hl(0, "SnacksWinSeparator", { fg = border_fg, bg = border_bg })
  vim.api.nvim_set_hl(0, "SnacksTitle", { fg = border_fg, bg = border_bg })
  vim.api.nvim_set_hl(0, "SnacksFooter", { fg = border_fg, bg = border_bg })
  vim.api.nvim_set_hl(0, "SnacksWinBar", { fg = border_fg, bg = border_bg })
  vim.api.nvim_set_hl(0, "SnacksWinBarNC", { fg = border_fg, bg = border_bg })

  -- Snacks picker input
  vim.api.nvim_set_hl(0, "SnacksPickerTitle", { fg = border_fg, bg = "NONE" })
  vim.api.nvim_set_hl(0, "SnacksPickerInput", { fg = border_fg, bg = "NONE" })
  vim.api.nvim_set_hl(0, "SnacksPickerInputSearch", { fg = border_fg, bg = "NONE" })
  vim.api.nvim_set_hl(0, "SnacksPickerTotals", { fg = border_fg, bg = "NONE" })
  vim.api.nvim_set_hl(0, "SnacksPickerSpinner", { fg = border_fg, bg = "NONE" })

  -- Treesitter context: match current line styling
  vim.api.nvim_set_hl(0, "TreesitterContext", { link = "CursorLine" })
  vim.api.nvim_set_hl(0, "TreesitterContextLineNumber", { link = "CursorLineNr" })
  vim.api.nvim_set_hl(0, "TreesitterContextBottom", { fg = border_fg, bg = "NONE" })
end

vim.api.nvim_create_autocmd("ColorScheme", { callback = set_ui_borders })
vim.api.nvim_create_autocmd("VimEnter", { callback = set_ui_borders })
vim.api.nvim_create_autocmd({ "BufWinEnter", "WinEnter" }, { callback = set_ui_borders })
vim.api.nvim_create_autocmd("User", {
  pattern = { "LazyVimStarted", "VeryLazy" },
  callback = set_ui_borders,
})

-- Diagnostics UI polish
vim.diagnostic.config({
  severity_sort = true,
  update_in_insert = false,
  underline = true,
  virtual_text = {
    spacing = 2,
    prefix = "●",
    current_line = true,
  },
  float = {
    border = "rounded",
    source = "always",
    header = "",
    prefix = "",
  },
})

do
  local signs = {
    Error = "",
    Warn = "",
    Info = "",
    Hint = "󰌵",
  }
  for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
  end
end

vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded" })
vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = "rounded" })
