-- [[ More Keymaps ]]

local map = vim.keymap.set

-- Config keymaps
map('n', '<Leader>Ce', '<CMD>e $MYVIMRC<CR>', { desc = 'open [C]onfig file for [E]diting' })
map('n', '<Leader>Cl', '<CMD>Lazy<CR>', { desc = '[C]onfig open [L]azy' })
map('n', '<Leader>CL', '<CMD>Lazy sync<CR>', { desc = '[C]onfig run [L]azy sync' })
map('n', '<Leader>Cm', '<CMD>Mason<CR>', { desc = '[C]onfig open [M]ason' })

-- Neotree keymaps
map('n', '<Leader>tf', '<CMD>Neotree toggle reveal_force_cwd<CR>', { desc = 'neo[T]ree toggle [F]ile tree' })
map('n', '<Leader>tF', '<CMD>Neotree reveal<CR>', { desc = 'neo[T]ree show [F]ile tree' })
map('n', '<Leader>tw', '<CMD>Neotree float reveal_file=<cfile> reveal_force_cwd<CR>', { desc = 'neo[T]ree [W]ord under cursor file tree' })
map('n', '<Leader>tb', '<CMD>Neotree toggle show buffers<CR>', { desc = 'neo[T]ree toggle [B]uffers in tree' })
map('n', '<Leader>tg', '<CMD>Neotree float git_status<CR>', { desc = 'neo[T]ree show files [G]it status' })

-- Tab keymaps
map('n', '<A-j>', '<CMD>tabnext<CR>', { desc = 'Next Tab' })
map('n', '<A-k>', '<CMD>tabprevious<CR>', { desc = 'Previous Tab' })
map('n', '<A-]>', '<CMD>tabnext<CR>', { desc = 'Next Tab' })
map('n', '<A-[>', '<CMD>tabprevious<CR>', { desc = 'Previous Tab' })
map('n', '<C-Tab>', '<CMD>tabnext<CR>', { desc = 'Next Tab' })
map('n', '<C-S-Tab>', '<CMD>tabprevious<CR>', { desc = 'Previous Tab' })
map('n', '<A-{>', '<CMD>-tabmove<CR>', { desc = 'Move Tab Backwards' })
map('n', '<A-}>', '<CMD>+tabmove<CR>', { desc = 'Move Tab Forward' })
map('n', 'st', '<CMD>tabnew<CR>', { desc = 'Window [S]plit: new [T]ab' })
