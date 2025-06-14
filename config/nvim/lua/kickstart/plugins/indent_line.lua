return {
  { -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help ibl`
    main = 'ibl',
    opts = {},
    init = function()
      require('ibl').setup {
        scope = { enabled = false },
        indent = { char = '│' },
      }
    end,
  },
}
