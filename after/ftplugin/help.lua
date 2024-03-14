-- Help files suddenly started hiding links on 2024-03-13.  I figured out it was
-- conceallevel being set in /usr/share/nvim/runtime/ftplugin/help.vim
-- This article was helpful: https://vimways.org/2018/runtime-hackery/
vim.opt.conceallevel = 0
