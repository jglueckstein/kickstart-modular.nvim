-- Syntax highlighting (defaults to enabled)
vim.g['vimtex_syntax_enabled'] = 1

-- Folding (defaults to disabled)
vim.g['vimtex_fold_enabled'] = 1

-- Use Zathura as the VimTeX PDF viewer
vim.g['vimtex_view_method'] = 'zathura'

-- Keymaps
vim.keymap.set('n', '<localleader>v', '<Plug>(vimtex-view)')
