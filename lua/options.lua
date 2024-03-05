-- [[ Setting options ]]
-- See `:help vim.opt`
-- NOTE: You can change these options as you wish!
--  For more options, you can see `:help option-list`

-- Make line numbers default
vim.opt.number = true
-- You can also add relative line numbers, for help with jumping.
--  Experiment for yourself to see if you like it!
-- vim.opt.relativenumber = true

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = 'a'

-- Don't show the mode, since it's already in status line
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.opt.clipboard = 'unnamedplus'

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- ----------------------------------------------------
-- My Customizations Below
-- ----------------------------------------------------

-- Show match for partly-typed search term
vim.o.incsearch = true

-- Try to keep space between cursor and edge of window
vim.o.scrolloff = 10
vim.o.sidescrolloff = 10

-- Line numbers
vim.o.number = true
vim.o.relativenumber = true

-- Number of screen lines to use for the command-line
vim.o.cmdheight = 2

-- Highlight the text line of the cursor
vim.o.cursorline = true

-- How cursorline is displayed
vim.o.cursorlineopt = 'both'

-- Highlight the screen columns specified
vim.o.colorcolumn = '80'

-- When on spell checking will be done
vim.o.spell = true

-- When on, an abandoned buffer is hidden vs. being unloaded
vim.o.hidden = true

-- Sane directions to open splits
vim.o.splitbelow = true
vim.o.splitright = true

-- To indicate an error, should we beep and/or flash the screen?
vim.o.errorbells = false
vim.o.visualbell = true

-- Directory names for undo files
vim.o.undodir = '/home/jon/.vimundo'

-- Maximum width of text that is being inserted.
vim.o.textwidth = 80

-- Tabs
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

-- Indents
vim.o.autoindent = true
vim.o.smartindent = true

-- Folding
vim.o.foldmethod = 'expr'
vim.o.foldexpr = 'nvim_treesitter#foldexpr()'

-- Make a backup before overwriting a file
vim.o.backup = false

-- Use a swapfile for the buffer
vim.o.swapfile = false

-- vim: ts=2 sts=2 sw=2 et
