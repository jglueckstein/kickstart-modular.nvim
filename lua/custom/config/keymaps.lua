-- [[ More Keymaps ]]

-- Config keymaps
vim.keymap.set('n', '<Leader>Ce', '<CMD>e $MYVIMRC<CR>', { desc = 'open [C]onfig file for [E]diting' })
vim.keymap.set('n', '<Leader>Cl', '<CMD>Lazy<CR>', { desc = '[C]onfig open [L]azy' })
vim.keymap.set('n', '<Leader>CL', '<CMD>Lazy sync<CR>', { desc = '[C]onfig run [L]azy sync' })
vim.keymap.set('n', '<Leader>Cm', '<CMD>Mason<CR>', { desc = '[C]onfig open [M]ason' })

-- Neotree keymaps
vim.keymap.set('n', '<Leader>tf', '<CMD>Neotree toggle reveal_force_cwd<CR>', { desc = 'neo[T]ree toggle [F]ile tree' })
vim.keymap.set('n', '<Leader>tF', '<CMD>Neotree reveal<CR>', { desc = 'neo[T]ree show [F]ile tree' })
vim.keymap.set('n', '<Leader>tw', '<CMD>Neotree float reveal_file=<cfile> reveal_force_cwd<CR>', { desc = 'neo[T]ree [W]ord under cursor file tree' })
vim.keymap.set('n', '<Leader>tb', '<CMD>Neotree toggle show buffers<CR>', { desc = 'neo[T]ree toggle [B]uffers in tree' })
vim.keymap.set('n', '<Leader>tg', '<CMD>Neotree float git_status<CR>', { desc = 'neo[T]ree show files [G]it status' })
