return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      opts.diagnostics = vim.tbl_deep_extend("force", opts.diagnostics or {}, {
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
    end,
  },
}
