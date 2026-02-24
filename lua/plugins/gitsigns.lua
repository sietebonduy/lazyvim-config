return {
  "lewis6991/gitsigns.nvim",
  keys = {
    {
      "<leader>gB",
      function()
        require("gitsigns").blame_line({ full = true })
      end,
      desc = "Git Blame Line (Full)",
    },
  },
  opts = {
    current_line_blame = true,
    current_line_blame_formatter = "<author>, <author_time:%Y-%m-%d> - <summary>",
    current_line_blame_opts = {
      delay = 300,
      virt_text_pos = "right_align",
    },
    preview_config = {
      border = "rounded",
      style = "minimal",
    },
  },
}
