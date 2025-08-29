return { -- You can easily change to a different colorscheme.
  'catppuccin/nvim',
  priority = 1000, -- Make sure to load this before all the other start plugins.
  init = function()
    vim.cmd.colorscheme 'catppuccin-mocha'

    -- You can configure highlights by doing something like:
    vim.cmd.hi 'Comment gui=none'

    vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none', fg = 'none' })
    vim.api.nvim_set_hl(0, 'FloatBorder', { bg = 'none', fg = 'none' })
    vim.api.nvim_set_hl(0, 'TelescopeNormal', { bg = 'none', fg = 'none' })
    vim.api.nvim_set_hl(0, 'TelescopeBorder', { bg = 'none', fg = 'none' })
    vim.api.nvim_set_hl(0, 'LineNrAbove', { fg = 'blue' })
    vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = 'yellow' })
    vim.api.nvim_set_hl(0, 'LineNrBelow', { fg = 'magenta' })
  end,
  config = function()
    require('catppuccin').setup {
      no_italic = false,
      no_bold = false,
      no_underline = true,
      flavour = 'mocha',
      term_colors = true,
      transparent_background = true,

      integrations = {
        cmp = true,
        fzf = true,
        hop = true,
        mason = true,
        nvimtree = false,
        neotree = true,
        dashboard = false,
        dap = true,
        dap_ui = true,
        which_key = true,
        telescope = true,
      },
    }
  end,
}
