return {
  "snacks.nvim",
  opts = function(_, opts)
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
