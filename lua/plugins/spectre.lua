return {
  "nvim-pack/nvim-spectre",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {},
  keys = {
    {
      "<leader>sr",
      function()
        require("spectre").open()
      end,
      desc = "Search & Replace (Spectre)",
    },
  },
}
