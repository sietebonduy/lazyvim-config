return {
  "snacks.nvim",
  opts = function(_, opts)
    vim.g.snacks_animate = true
    vim.g.snacks_scroll = true

    vim.api.nvim_create_autocmd("User", {
      pattern = "VeryLazy",
      callback = function()
        vim.g.snacks_animate = true
        vim.g.snacks_scroll = true
        if rawget(_G, "Snacks") and Snacks.scroll and not Snacks.scroll.enabled then
          Snacks.scroll.enable()
        end
      end,
    })

    opts.styles = opts.styles or {}
    opts.styles.terminal = vim.tbl_deep_extend("force", opts.styles.terminal or {}, {
      border = "rounded",
      backdrop = false,
      wo = {
        winhighlight = table.concat({
          "Normal:NormalFloat",
          "NormalNC:NormalFloat",
          "FloatBorder:FloatBorder",
          "WinSeparator:FloatBorder",
          "FloatTitle:SnacksTitle",
          "FloatFooter:SnacksFooter",
          "WinBar:SnacksWinBar",
          "WinBarNC:SnacksWinBarNC",
        }, ","),
      },
    })

    opts.terminal = opts.terminal or {}
    opts.terminal.win = vim.tbl_deep_extend("force", opts.terminal.win or {}, {
      style = "terminal",
      wo = { winbar = "" },
    })

    opts.picker = vim.tbl_deep_extend("force", opts.picker or {}, {
      prompt = " ",
      show_delay = 80,
      focus = "input",
      limit_live = 5000,
      layout = {
        cycle = true,
        preset = function()
          return vim.o.columns >= 120 and "default" or "vertical"
        end,
      },
      win = {
        input = {
          border = "rounded",
          wo = {
            winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder,FloatTitle:SnacksTitle,FloatFooter:SnacksFooter",
          },
        },
        list = {
          border = "rounded",
          wo = {
            winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder",
          },
        },
        preview = {
          border = "rounded",
          wo = {
            winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder",
          },
        },
      },
      formatters = {
        file = {
          filename_first = true,
          truncate = "left",
          min_width = 30,
        },
      },
      previewers = {
        file = {
          max_size = 512 * 1024,
          max_line_length = 300,
        },
      },
    })

    opts.dashboard = vim.tbl_deep_extend("force", opts.dashboard or {}, {
      preset = {
        header = [[
   ▄████████    ▄█   ▄█▄    ▄████████    ▄████████  ▄████████    ▄█    █▄    
  ███    ███   ███ ▄███▀   ███    ███   ███    ███ ███    ███   ███    ███   
  ███    █▀    ███▐██▀     ███    ███   ███    ███ ███    █▀    ███    ███   
  ███         ▄█████▀     ▄███▄▄▄▄██▀   ███    ███ ███         ▄███▄▄▄▄███▄▄ 
▀███████████ ▀▀█████▄    ▀▀███▀▀▀▀▀   ▀███████████ ███        ▀▀███▀▀▀▀███▀  
         ███   ███▐██▄   ▀███████████   ███    ███ ███    █▄    ███    ███   
   ▄█    ███   ███ ▀███▄   ███    ███   ███    ███ ███    ███   ███    ███   
 ▄████████▀    ███   ▀█▀   ███    ███   ███    █▀  ████████▀    ███    █▀    
               ▀           ███    ███                                        
   ]],
      },
    })

    vim.api.nvim_set_hl(0, "SnacksDashboardHeader", { fg = "#f49586", bold = true })

    opts.animate = opts.animate or {}
    opts.scroll = vim.tbl_deep_extend("force", opts.scroll or {}, {
      enabled = true,
      animate = {
        duration = { step = 18, total = 320 },
        easing = "outQuad",
      },
      animate_repeat = {
        delay = 100,
        duration = { step = 10, total = 120 },
        easing = "outQuad",
      },
    })
  end,
}
