return {
  "bluz71/vim-moonfly-colors",
  name = "moonfly",
  lazy = false,
  priority = 1000,
  config = function()
    vim.g.moonflyTransparent = true -- если нужен прозрачный фон
    vim.g.moonflyItalics = true -- курсив
    vim.g.moonflyCursorColor = true -- цветной курсор
    vim.cmd.colorscheme("moonfly")
  end,
}
