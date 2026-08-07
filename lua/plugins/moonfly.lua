return {
  {
    "bluz71/vim-moonfly-colors",
    name = "moonfly",
    lazy = false,
    priority = 1000,
    init = function()
      vim.g.moonflyTransparent = true
      vim.g.moonflyItalics = true
      vim.g.moonflyCursorColor = true
    end,
  },
  { "folke/tokyonight.nvim", enabled = false },
  { "catppuccin/nvim", enabled = false },
}
