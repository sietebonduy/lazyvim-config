-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.o.termguicolors = true
vim.o.grepprg = "rg --vimgrep --smart-case --hidden"

vim.cmd("highlight Normal guibg=none")
vim.cmd("highlight NormalFloat guibg=none")

vim.g.lazyvim_colorscheme = "moonfly"

vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    vim.cmd("highlight Visual guibg=#1E1E1E guifg=NONE blend=15")
  end,
})
