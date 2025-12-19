return {
  "akinsho/toggleterm.nvim",
  version = "*",

  opts = {
    size = function(term)
      if term.direction == "horizontal" then
        return 15
      elseif term.direction == "vertical" then
        return vim.o.columns * 0.4
      end
    end,

    open_mapping = nil,
    shade_terminals = true,
    shading_factor = 2,
    start_in_insert = true,

    direction = "float",

    float_opts = {
      border = "rounded",
      winblend = 0,
      highlights = {
        border = "FloatBorder",
        background = "Normal",
      },
      width = function()
        return math.floor(vim.o.columns * 0.9)
      end,
      height = function()
        return math.floor(vim.o.lines * 0.8)
      end,
    },
  },

  config = function(_, opts)
    require("toggleterm").setup(opts)

    vim.keymap.set("n", "<leader>t", function()
      require("toggleterm").toggle(1, nil, nil, "float")
    end, { desc = "Floating terminal" })

    vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { desc = "Exit terminal mode" })

    vim.api.nvim_create_autocmd("VimResized", {
      callback = function()
        local terms = require("toggleterm.terminal").get_all()
        for _, t in pairs(terms) do
          if t.direction == "float" and t:is_open() then
            t:resize({
              width = math.floor(vim.o.columns * 0.9),
              height = math.floor(vim.o.lines * 0.8),
            })
          end
        end
      end,
    })
  end,
}
