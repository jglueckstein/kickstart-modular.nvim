return {
  'mickael-menu/zk-nvim',
  config = function()
    require('zk').setup {
      picker = 'telescope',

      lsp = {
        config = {
          command = { 'zk', 'lsp' },
          name = 'zk',
        },
      },

      auto_attach = {
        enabled = true,
        filetypes = { 'markdown' },
      },
    }
  end,

  -- Create a new note after asking for its title
  vim.keymap.set('n', '<Leader>zn', "<Cmd>ZkNew { title = vim.fn.input('Title: ') }<CR>", {
    desc = 'Zettelkasten New Note (prompts for title)',
  }),

  -- Open notes
  vim.keymap.set('n', '<Leader>zo', "<Cmd>ZkNotes { sort = { 'modified' } }<CR>", {
    noremap = true,
    silent = false,
    desc = 'Zettelkasten Open Notes',
  }),

  -- Open notes associated with the selected tags
  vim.keymap.set('n', '<Leader>zt', '<Cmd>ZkTags<CR>', {
    noremap = true,
    silent = false,
    desc = 'Zettelkasten Open Notes By Tags',
  }),

  -- Search for the notes matching a given query
  vim.keymap.set(
    'n',
    '<Leader>zf',
    "<Cmd>ZkNotes { sort = { 'modified' }, match = {vim.fn.input('Search: ') } }<CR>",
    { noremap = true, silent = false, desc = 'Zettelkasten Search Notes (prompts for search term)' }
  ),

  -- Search for the notes matching the current visual selection
  vim.keymap.set('v', '<Leader>zf', ":'<,'>ZkMatch<CR>", {
    noremap = true,
    silent = false,
    desc = 'Zettelkasten Search Notes by Visual Selection',
  }),

  -- Create new daily journal entry
  vim.keymap.set('n', '<Leader>zj', function()
    require('zk').new { dir = 'journal/daily' }
  end, { noremap = true, silent = false, desc = '[Z]ettelkasten new [J]ournal entry' }),

  -- Create or edit yesterday's journal entry
  vim.keymap.set('n', '<Leader>zy', function()
    require('zk').new { dir = 'journal/daily', date = 'yesterday' }
  end, { noremap = true, silent = false, desc = "[Z]ettelkasten [Y]esterday's journal entry" }),
}
