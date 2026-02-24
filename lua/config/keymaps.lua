-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>cp", function()
  local file = vim.fn.expand("%:p")
  if file == "" then
    vim.notify("No file path for current buffer", vim.log.levels.WARN)
    return
  end

  local ok_root, root = pcall(vim.fn.system, { "git", "rev-parse", "--show-toplevel" })
  if ok_root and vim.v.shell_error == 0 then
    root = root:gsub("\n", "")
  else
    root = vim.fn.getcwd()
  end

  local rel = file
  if root ~= "" then
    rel = file:gsub("^" .. vim.pesc(root) .. "/?", "")
  end

  vim.fn.setreg("+", rel)
  vim.notify("Copied: " .. rel, vim.log.levels.INFO)
end, { desc = "Copy project-relative file path" })

vim.api.nvim_set_hl(0, "TelescopeBorder", { fg = "#f49586" })
vim.api.nvim_set_hl(0, "FzfLuaBorder", { fg = "#f49586" })

vim.keymap.set("n", "<leader>fw", function()
  vim.ui.input({ prompt = "Open file:line " }, function(input)
    if not input or input == "" then
      return
    end

    local path, line, col = input:match("^(.-):(%d+):(%d+)$")
    if not path then
      path, line = input:match("^(.-):(%d+)$")
    end
    if not path then
      path = input
    end

    local ok_root, root = pcall(vim.fn.system, { "git", "rev-parse", "--show-toplevel" })
    if ok_root and vim.v.shell_error == 0 then
      root = root:gsub("\n", "")
    else
      root = vim.fn.getcwd()
    end

    local full = path
    if root ~= "" and not path:match("^/") then
      full = root .. "/" .. path
    end

    vim.cmd("edit " .. vim.fn.fnameescape(full))
    if line then
      local lnum = tonumber(line) or 1
      local cnum = tonumber(col) or 1
      vim.api.nvim_win_set_cursor(0, { lnum, math.max(cnum - 1, 0) })
    end
  end)
end, { desc = "Open file:line" })

-- vim.keymap.set("n", "<leader>cp", function()
--   local root = vim.fn.system("git rev-parse --show-toplevel"):gsub("\n", "")
--   local file = vim.fn.expand("%:p")
--   local relative = file:gsub("^" .. root .. "/", "")
--   vim.fn.setreg("+", relative)
-- end, { desc = "Copy project-relative file path" })
