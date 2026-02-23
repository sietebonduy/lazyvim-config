return {
  "snacks.nvim",
  opts = function(_, opts)
    opts.styles = opts.styles or {}
    opts.styles.terminal = vim.tbl_deep_extend("force", opts.styles.terminal or {}, {
      border = "rounded",
      backdrop = false,
      wo = {
        winhighlight = table.concat({
          "Normal:NormalFloat",
          "NormalNC:NormalFloat",
          "FloatBorder:FloatBorder",
          "WinSeparator:FloatBorder",
          "FloatTitle:FloatBorder",
          "FloatFooter:FloatBorder",
        }, ","),
      },
    })

    opts.terminal = opts.terminal or {}
    opts.terminal.win = vim.tbl_deep_extend("force", opts.terminal.win or {}, {
      style = "terminal",
    })
  end,
}
