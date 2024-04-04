-- [[ More Keymaps ]]

local map = vim.keymap.set

-- repurpose the q key for closing a window
-- Q instead of q to start recording a macro
map('n', 'Q', 'q', { silent = true, desc = 'start recording a macro' })
-- gQ instead of @q to run a macro called "q"
map('n', 'gQ', '@q', { silent = true, desc = 'run a macro called "q"' })
-- q provides fast quitting of window (and nvim, if last window)
map('n', 'q', ':pclose!<CR>:quit<CR>', { silent = true, desc = 'fast quitting current window' })

-- fast saving from all modes
map('n', '<Leader>w', ':write<CR>', { silent = true, desc = 'Save buffer' })
map('x', '<Leader>w', '<Esc>:write<CR>', { silent = true, desc = 'Save buffer' })
map('n', '<C-s>', ':<C-u>write<CR>', { silent = true, desc = 'Save buffer' })
map('x', '<C-s>', ':<C-u>write<CR>', { silent = true, desc = 'Save buffer' })
map('c', '<C-s>', '<C-u>write<CR>', { silent = true, desc = 'Save buffer' })

-- fast save and quit all windows with CTRL-q
map('n', '<C-q>', '<CMD>wqa<CR>', { silent = true, desc = 'save and quit all windows' })

-- fast exit from insert mode
map('i', 'jk', '<ESC>', { silent = true, desc = 'fast exit from insert mode' })
map('i', 'kj', '<ESC>', { silent = true, desc = 'fast exit from insert mode' })

-- telescope picker for todo-comments
map('n', '<leader>st', '<cmd>TodoTelescope<CR>', { desc = '[S]earch [T]odo comments in Telescope' })

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

-- Dev keymaps
map('n', '<LocalLeader>x', '<CMD>source %<CR>', { desc = 'Source This File' })
