-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>cp", function()
  local path = vim.fn.expand("%")
  vim.fn.setreg("+", path)
end, { desc = "Copy relative file path" })

-- vim.keymap.set("n", "<leader>cp", function()
--   local root = vim.fn.system("git rev-parse --show-toplevel"):gsub("\n", "")
--   local file = vim.fn.expand("%:p")
--   local relative = file:gsub("^" .. root .. "/", "")
--   vim.fn.setreg("+", relative)
-- end, { desc = "Copy project-relative file path" })
