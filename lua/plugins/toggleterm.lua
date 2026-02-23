return {
  "akinsho/toggleterm.nvim",
  version = "*",
  keys = {
    {
      "<leader>t",
      "<cmd>ToggleTerm direction=float<cr>",
      desc = "ToggleTerm float",
    },
    {
      "<leader>th",
      "<cmd>ToggleTerm direction=horizontal<cr>",
      desc = "ToggleTerm horizontal",
    },
    {
      "<leader>tv",
      "<cmd>ToggleTerm direction=vertical<cr>",
      desc = "ToggleTerm vertical",
    },
    {
      "<leader>tt",
      "<cmd>ToggleTerm direction=tab<cr>",
      desc = "ToggleTerm tab",
    },
    {
      "<leader>gg",
      "<cmd>LazyGit<cr>",
      desc = "LazyGit (float)",
    },
  },

  opts = {
    size = function(term)
      if term.direction == "horizontal" then
        return 15
      elseif term.direction == "vertical" then
        return vim.o.columns * 0.4
      end
    end,

    open_mapping = [[<C-\>]],
    shade_terminals = true,
    shading_factor = 2,
    start_in_insert = true,
    close_on_exit = true,
    shell = vim.o.shell,

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

    vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { desc = "Exit terminal mode" })
    vim.keymap.set("t", "<C-h>", [[<C-\><C-n><C-w>h]], { desc = "Terminal left" })
    vim.keymap.set("t", "<C-j>", [[<C-\><C-n><C-w>j]], { desc = "Terminal down" })
    vim.keymap.set("t", "<C-k>", [[<C-\><C-n><C-w>k]], { desc = "Terminal up" })
    vim.keymap.set("t", "<C-l>", [[<C-\><C-n><C-w>l]], { desc = "Terminal right" })

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

    vim.api.nvim_create_user_command("LazyGit", function()
      if vim.fn.executable("lazygit") == 0 then
        vim.notify("lazygit not found in PATH", vim.log.levels.WARN)
        return
      end
      local Terminal = require("toggleterm.terminal").Terminal
      if not vim.g._toggleterm_lazygit then
        vim.g._toggleterm_lazygit = Terminal:new({
          cmd = "lazygit",
          hidden = true,
          direction = "float",
          close_on_exit = true,
        })
      end
      vim.g._toggleterm_lazygit:toggle()
    end, { desc = "Toggle LazyGit (float)" })
  end,
}
