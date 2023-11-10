-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- repurpose the q key for closing a window
vim.keymap.set("n", "Q", "q", { silent = true, desc = 'start recording a macro'})                     -- Q instead of q to start recording a macro
vim.keymap.set("n", "gQ", "@q", { silent = true, desc = 'run a macro called "q"'})                   -- gQ instead of @q to run a macro called "q"
vim.keymap.set("n", "q", ":pclose!<CR>:quit<CR>", { silent = true, desc = 'fast quitting current window'}) -- q provides fast quitting of window (and nvim, if last window)

-- fast saving from all modes
vim.keymap.set("n", "<Leader>w", ":write<CR>", { silent = true, desc = 'Save buffer'})    -- normal mode
vim.keymap.set("x", "<Leader>w", "<Esc>:write<CR>", { silent = true, desc = 'Save buffer'})   -- visual mode
vim.keymap.set("n", "<C-s>", ":<C-u>write<CR>", { silent = true, desc = 'Save buffer'})   -- normal mode
vim.keymap.set("x", "<C-s>", ":<C-u>write<CR>", { silent = true, desc = 'Save buffer'})   -- visual mode
vim.keymap.set("c", "<C-s>", "<C-u>write<CR>", { silent = true, desc = 'Save buffer'})    -- command-line mode

-- fast save and quit all windows with CTRL-q
vim.keymap.set("n", "<C-q>", "<CMD>wqa<CR>", { silent = true, desc = 'save and quit all windows'})

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

-- vim: ts=2 sts=2 sw=2 et
