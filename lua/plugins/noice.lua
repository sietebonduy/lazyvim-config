return {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
  opts = {
    cmdline = {
      enabled = true,
      view = "cmdline_popup",
      format = {
        cmdline = { pattern = "^:", icon = ":", lang = "vim" },
        search_down = { pattern = "^/", icon = "/", lang = "regex" },
        search_up = { pattern = "^%?", icon = "?", lang = "regex" },
        filter = { pattern = "^:%s*!", icon = "$", lang = "bash" },
        lua = { pattern = "^:%s*lua%s+", icon = "lua", lang = "lua" },
        help = { pattern = "^:%s*help%s+", icon = "?", lang = "vim" },
      },
    },
    messages = {
      enabled = true,
      view = "mini",
      view_error = "notify",
      view_warn = "notify",
    },
    popupmenu = { enabled = true },
    notify = { enabled = true, view = "notify" },
    lsp = {
      progress = { enabled = false },
      override = {
        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
        ["vim.lsp.util.stylize_markdown"] = true,
        ["cmp.entry.get_documentation"] = true,
      },
      hover = { enabled = true, silent = true },
      signature = {
        enabled = true,
        auto_open = { enabled = false },
      },
    },
    presets = {
      bottom_search = false,
      command_palette = true,
      long_message_to_split = true,
      inc_rename = false,
      lsp_doc_border = true,
    },
    routes = {
      {
        filter = { event = "msg_show", kind = "", find = "written" },
        opts = { skip = true },
      },
      {
        filter = { event = "msg_show", kind = "search_count" },
        opts = { skip = true },
      },
      {
        filter = { event = "msg_showmode" },
        opts = { skip = true },
      },
    },
    views = {
      cmdline_popup = {
        border = { style = "rounded", padding = { 0, 1 } },
        win_options = {
          winblend = 0,
          winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder",
        },
      },
    },
  },
}
