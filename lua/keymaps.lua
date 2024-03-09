-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- jcg repurpose the q key for closing a window
vim.keymap.set('n', 'Q', 'q', { silent = true, desc = 'start recording a macro' }) -- Q instead of q to start recording a macro
vim.keymap.set('n', 'gQ', '@q', { silent = true, desc = 'run a macro called "q"' }) -- gQ instead of @q to run a macro called "q"
vim.keymap.set('n', 'q', ':pclose!<CR>:quit<CR>', { silent = true, desc = 'fast quitting current window' }) -- q provides fast quitting of window (and nvim, if last window)

-- jcg fast saving from all modes
vim.keymap.set('n', '<Leader>w', ':write<CR>', { silent = true, desc = 'Save buffer' }) -- normal mode
vim.keymap.set('x', '<Leader>w', '<Esc>:write<CR>', { silent = true, desc = 'Save buffer' }) -- visual mode
vim.keymap.set('n', '<C-s>', ':<C-u>write<CR>', { silent = true, desc = 'Save buffer' }) -- normal mode
vim.keymap.set('x', '<C-s>', ':<C-u>write<CR>', { silent = true, desc = 'Save buffer' }) -- visual mode
vim.keymap.set('c', '<C-s>', '<C-u>write<CR>', { silent = true, desc = 'Save buffer' }) -- command-line mode

-- jcg fast save and quit all windows with CTRL-q
vim.keymap.set('n', '<C-q>', '<CMD>wqa<CR>', { silent = true, desc = 'save and quit all windows' })

-- jcg fast exit from insert mode
vim.keymap.set('i', 'jk', '<ESC>', { silent = true, desc = 'fast exit from insert mode' })
vim.keymap.set('i', 'kj', '<ESC>', { silent = true, desc = 'fast exit from insert mode' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- jcg telescope picker for todo-comments
vim.keymap.set('n', '<leader>st', '<cmd>TodoTelescope<CR>', { desc = '[S]earch [T]odo comments in Telescope' })

-- vim: ts=2 sts=2 sw=2 et
