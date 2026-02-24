-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "moonfly",
  callback = function()
    -- статуслайн / globalstatus
    vim.api.nvim_set_hl(0, "StatusLine", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "NONE" })

    -- lualine
    for _, mode in ipairs({ "normal", "insert", "visual", "replace", "inactive" }) do
      vim.api.nvim_set_hl(0, "lualine_c_" .. mode, { bg = "NONE" })
    end
  end,
})

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local bufnr = args.buf
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client and client.supports_method and client:supports_method("textDocument/inlayHint") then
      local ih = vim.lsp.inlay_hint
      if ih and ih.enable then
        ih.enable(true, { bufnr = bufnr })
        vim.keymap.set("n", "<leader>uh", function()
          local enabled = ih.is_enabled and ih.is_enabled({ bufnr = bufnr }) or false
          ih.enable(not enabled, { bufnr = bufnr })
        end, { buffer = bufnr, desc = "Toggle Inlay Hints" })
      end
    end

    vim.keymap.set("n", "gl", function()
      vim.diagnostic.open_float(nil, { border = "rounded", focusable = false })
    end, { buffer = bufnr, desc = "Line Diagnostics" })
  end,
})
