-- /home/jon/.dotfiles/config/nvim/lua/custom/plugins/md-preview.lua
--
-- These plugins display markdown-formatted files.  markdown-preview has to be
-- started manually, and opens the document in a new tab in the default web
-- browser.  This document is synced to the file in nvim, so edits are displayed
-- live and moving around in the editor is mirrored in the displayed document.
-- render-markdown automatically renders the document in the following modes:
-- normal, command-line editing, and terminal.
--
-- render-markdown also offers a completion source, so I've set that up for cmp.
--
-- :h render-markdown
-- :h markdown-preview

local cmp = require 'cmp'
return {
  {
    'iamcco/markdown-preview.nvim',
    cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
    build = 'cd app && yarn install',
    init = function()
      vim.g.mkdp_filetypes = { 'markdown' }
    end,
    ft = { 'markdown' },
  },
  {
    'MeanderingProgrammer/render-markdown.nvim',
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
    -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {
      html = { comment = { conceal = false } },
    },
  },
  cmp.setup {
    sources = cmp.config.sources {
      { name = 'render-markdown' },
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
