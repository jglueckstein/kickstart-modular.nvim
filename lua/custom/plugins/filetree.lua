return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  config = function()
    require('neo-tree').setup {
      sources = {
        'filesystem',
        'buffers',
        'git_status',
        'document_symbols',
      },
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
        },
        follow_current_file = { enabled = true },
      },
      default_component_configs = {
        git_status = {
          symbols = {
            -- Change type
            added = '✚', --
            deleted = '✖',
            modified = '',
            renamed = '',
            -- Status type
            untracked = '',
            ignored = '',
            unstaged = '',
            staged = '',
            conflict = '',
          },
        },
        diagnostics = {
          symbols = {
            hint = ' ',
            info = ' ',
            warn = ' ',
            error = '󰌵',
          },
          highlights = {
            hint = 'DiagnosticSignHint',
            info = 'DiagnosticSignInfo',
            warn = 'DiagnosticSignWarn',
            error = 'DiagnosticSignError',
          },
        },
      },
      window = { position = 'right' },
    }
  end,
}
