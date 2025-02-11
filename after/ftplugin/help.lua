-- Help utilities
--

if vim.bo.buftype ~= 'help' then
  return
end

vim.opt_local.spell = false
vim.opt_local.list = false

local map = vim.keymap.set

map('n', '<Leader>o', 'gO', { remap = true, buffer = 0, desc = 'view table [o]f contents' })
map('n', 'o', "/'[a-z]\\{2,\\}'<CR>:nohlsearch<CR>zz", {
  silent = true,
  buffer = 0,
  desc = 'move to next option link',
})
map('n', 'O', "?'[a-z]\\{2,\\}'<CR>:nohlsearch<CR>zz", {
  silent = true,
  buffer = 0,
  desc = 'move to previous option link',
})
map('n', '<Tab>', '/|\\S\\+|<CR>:nohlsearch<CR>zz', {
  silent = true,
  buffer = 0,
  desc = 'move to next related link',
})
map('n', '<S-Tab>', '?|\\S\\+|<CR>:nohlsearch<CR>zz', {
  silent = true,
  buffer = 0,
  desc = 'move to previous related link',
})
map('n', 'p', '/\\*\\S\\+\\*<CR>:nohlsearch<CR>zz', {
  silent = true,
  buffer = 0,
  desc = 'move to next anchor link',
})
map('n', 'P', '?\\*\\S\\+\\*<CR>:nohlsearch<CR>zz', {
  silent = true,
  buffer = 0,
  desc = 'move to previous anchor link',
})
