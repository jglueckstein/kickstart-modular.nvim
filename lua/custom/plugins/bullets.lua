-- /home/jon/.dotfiles/config/nvim/lua/custom/plugins/bullets.lua
--
-- This plugin automates the creation/editing of markdown lists.
--
-- In a markdown file start a bulleted list using "- ".  Press return to go to
-- the next line, a new list item will be created.  Or, in normal mode, pressing
-- "o" will open a new line with a new list item.
--
-- Numbered lists are automatically incremented.  If the list needs to be
-- renumbered, use "gN".
--
-- Check boxes can be ticked off in normal mode with "<leader>x.
--
-- To promote or demote a list item in insert mode, use <C-t> and <C-d>.  In
-- normal/visual modes, the default vim keys work for changing the indent level.
--
-- :h bullets

return {
  'bullets-vim/bullets.vim',
}
-- vim: ts=2 sts=2 sw=2 et
