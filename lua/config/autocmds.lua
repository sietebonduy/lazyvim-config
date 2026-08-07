-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

local group = vim.api.nvim_create_augroup("skrach_autocmds", { clear = true })

vim.api.nvim_create_autocmd("LspAttach", {
  group = group,
  callback = function(args)
    vim.keymap.set("n", "gl", function()
      vim.diagnostic.open_float(nil, { border = "rounded", focusable = false })
    end, { buffer = args.buf, desc = "Line Diagnostics" })
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  group = group,
  pattern = "gitsigns-blame",
  callback = function(args)
    local win = vim.api.nvim_get_current_win()
    vim.wo[win].winhighlight = table.concat({
      "Normal:NormalFloat",
      "NormalNC:NormalFloat",
      "CursorLine:Visual",
      "WinBar:SnacksWinBar",
      "WinBarNC:SnacksWinBarNC",
      "WinSeparator:WinSeparator",
    }, ",")
    vim.wo[win].cursorline = true
    vim.wo[win].number = false
    vim.wo[win].relativenumber = false
    vim.keymap.set("n", "q", "<cmd>close<cr>", { buffer = args.buf, silent = true, desc = "Close blame window" })
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  group = group,
  pattern = { "asciidoc", "mail", "norg", "org", "rst" },
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.spell = true
  end,
})
