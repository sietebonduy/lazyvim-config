return {
  ---------------------------------------------------------------------------
  -- render-markdown.nvim — красивый рендер Markdown
  ---------------------------------------------------------------------------
  {
    "MeanderingProgrammer/render-markdown.nvim",
    ft = { "markdown" },
    opts = {
      heading = {
        enabled = true,
        sign = true,
      },
      code = {
        enabled = true,
        style = "full",
      },
      quote = {
        enabled = true,
        highlight = "RenderMarkdownQuote",
      },
      bullet = {
        enabled = true,
        icons = { "●", "○", "◆", "◇" },
      },
    },
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      { "nvim-mini/mini.icons", lazy = true },
    },
  },
}
