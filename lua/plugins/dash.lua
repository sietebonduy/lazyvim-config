return {
  {
    "rizzatti/dash.vim",
    keys = {
      { "<leader>K", "<cmd>DashWord<cr>", desc = "Dash word under cursor" },
      { "<leader>dK", "<cmd>Dash<cr>", desc = "Dash search" },
    },
    init = function()
      vim.g.dash_map = {}
      vim.g.dash_filetype_map = {
        lua = { "lua", "neovim" },
        vim = { "vim", "neovim" },
        markdown = { "markdown" },
        sh = { "bash" },
        zsh = { "bash" },
        fish = { "bash" },
        json = { "json" },
        yaml = { "yaml" },
        toml = { "toml" },
        dockerfile = { "docker" },
        typescript = { "typescript", "nodejs" },
        javascript = { "javascript", "nodejs" },
        typescriptreact = { "typescript", "react" },
        javascriptreact = { "javascript", "react" },
        ruby = { "ruby", "rails", "rspec", "bundler", "rubygems", "rack", "sidekiq", "redis", "postgresql" },
        eruby = { "ruby", "rails", "rspec", "bundler", "rubygems", "rack", "sidekiq", "redis", "postgresql" },
        rake = { "ruby", "rails", "rake", "bundler", "rubygems" },
        gemspec = { "ruby", "bundler", "rubygems" },
        haml = { "ruby", "rails" },
        slim = { "ruby", "rails" },
        rust = { "rust" },
      }
    end,
  },
}
