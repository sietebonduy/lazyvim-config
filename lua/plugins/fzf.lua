return {
  {
    "ibhagwan/fzf-lua",
    opts = function(_, opts)
      opts.winopts = vim.tbl_deep_extend("force", opts.winopts or {}, {
        preview = {
          wrap = true,
        },
      })

      opts.files = vim.tbl_deep_extend("force", opts.files or {}, {
        winopts = {
          preview = {
            wrap = true,
          },
        },
      })

      opts.grep = vim.tbl_deep_extend("force", opts.grep or {}, {
        winopts = {
          preview = {
            wrap = true,
          },
        },
      })
    end,
  },
}
