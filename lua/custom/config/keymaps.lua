-- [[ More Keymaps ]]

-- Config keymaps
vim.keymap.set('n', '<Leader>Ce', '<CMD>e $MYVIMRC<CR>', { desc = 'open [C]onfig file for [E]diting' })
vim.keymap.set('n', '<Leader>Cl', '<CMD>Lazy<CR>', { desc = '[C]onfig open [L]azy' })
vim.keymap.set('n', '<Leader>CL', '<CMD>Lazy sync<CR>', { desc = '[C]onfig run [L]azy sync' })
vim.keymap.set('n', '<Leader>Cm', '<CMD>Mason<CR>', { desc = '[C]onfig open [M]ason' })
