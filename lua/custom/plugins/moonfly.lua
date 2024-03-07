-- TODO: make statusbar use the color scheme (or change statusbars)
return {
  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`
    'bluz71/vim-moonfly-colors',
    name = 'moonfly',
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- whether to color the cursor or not
      vim.g.moonflyCursorColor = true

      -- whether to use italics for comments and certain HTML elements
      vim.g.moonflyItalics = true

      -- whether to use colors in floating windows
      vim.g.moonflyNormalFloat = true

      -- whether to use colors in terminal windows
      vim.g.moonflyTerminalColors = true

      -- whether to use a transparent background
      vim.g.moonflyTransparent = false

      -- whether to use undercurls for spelling and linting errors
      vim.g.moonflyUndercurls = true

      -- whether to underline matching parentheses
      vim.g.moonflyUnderlineMatchParen = false

      -- whether to display diagnostic virtual text in color
      vim.g.moonflyVirtualTextColor = false

      -- specifies the style of window separators; 0 none; 1 block; 2 line
      vim.g.moonflyWinSeparator = 1

      -- Load the colorscheme here
      vim.cmd.colorscheme 'moonfly'

      -- You can configure highlights by doing something like
      -- NOTE: the follwing command turns off highlighting for comments.
      -- Todo-comment highlighting still works, however.
      vim.cmd.hi 'Comment gui=none'
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
