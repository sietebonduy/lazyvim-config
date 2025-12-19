return {

  ---------------------------------------------------------------------------
  -- 1. Obsidian.nvim — интеграция с Obsidian vault
  ---------------------------------------------------------------------------
  {
    "epwalsh/obsidian.nvim",
    version = "*",
    lazy = true,
    event = {
      "BufReadPre /Users/sietebonduy/Library/Mobile Documents/iCloud~md~obsidian/Documents/ObsidianVault/**.md",
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    opts = {
      workspaces = {
        {
          name = "vault",
          path = "/Users/sietebonduy/Library/Mobile Documents/iCloud~md~obsidian/Documents/ObsidianVault",
        },
      },
      disable_frontmatter = false,
      completion = { nvim_cmp = true },
      ui = { enable = true },
    },
  },

  ---------------------------------------------------------------------------
  -- 2. render-markdown.nvim — красивый рендер Markdown
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
      "nvim-mini/mini.icons",
    },
  },
}
