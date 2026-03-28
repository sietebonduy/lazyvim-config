return {
  {
    "chrisgrieser/nvim-spider",
    keys = {
      {
        "w",
        "<cmd>lua require('spider').motion('w')<cr>",
        mode = { "n", "o", "x" },
        desc = "Spider W",
      },
      {
        "e",
        "<cmd>lua require('spider').motion('e')<cr>",
        mode = { "n", "o", "x" },
        desc = "Spider E",
      },
      {
        "b",
        "<cmd>lua require('spider').motion('b')<cr>",
        mode = { "n", "o", "x" },
        desc = "Spider B",
      },
    },
    opts = {},
  },

  {
    "j-hui/fidget.nvim",
    event = "LspAttach",
    opts = {},
  },

  {
    "sindrets/diffview.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      { "<leader>gD", "<cmd>DiffviewOpen<cr>", desc = "Diffview Open" },
      { "<leader>gQ", "<cmd>DiffviewClose<cr>", desc = "Diffview Close" },
      { "<leader>gH", "<cmd>DiffviewFileHistory %<cr>", desc = "Diffview File History" },
      { "<leader>gR", "<cmd>DiffviewFileHistory<cr>", desc = "Diffview Repo History" },
    },
    opts = {},
  },

  {
    "m4xshen/hardtime.nvim",
    dependencies = { "MunifTanjim/nui.nvim" },
    event = "VeryLazy",
    keys = {
      { "<leader>uH", "<cmd>Hardtime toggle<cr>", desc = "Toggle Hardtime" },
    },
    opts = {
      disable_mouse = false,
      max_count = 5,
      hint = true,
      restricted_keys = {
        ["h"] = { "n", "x" },
        ["j"] = { "n", "x" },
        ["k"] = { "n", "x" },
        ["l"] = { "n", "x" },
      },
    },
  },

  {
    "johmsalas/text-case.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    event = "VeryLazy",
    opts = {},
    cmd = {
      "Subs",
      "TextCaseStartReplacingCommand",
    },
    keys = {
      { "<leader>cS", "<cmd>Subs<cr>", desc = "Case-aware Substitute" },
    },
  },

  {
    "ThePrimeagen/vim-be-good",
    cmd = { "VimBeGood" },
    keys = {
      { "<leader>uv", "<cmd>VimBeGood<cr>", desc = "Vim Be Good" },
    },
  },
}
