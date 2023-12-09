-- [[ Setting options ]]
-- See `:help vim.o`
-- NOTE: You can change these options as you wish!

-- Set highlight on search
vim.o.hlsearch = false

-- Make line numbers default
vim.wo.number = true

-- Enable mouse mode
vim.o.mouse = 'a'

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.o.clipboard = 'unnamedplus'

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect,noinsert'

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true

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
