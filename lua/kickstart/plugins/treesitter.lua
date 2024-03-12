return {
  { -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    opts = {
      -- jcg added python
      ensure_installed = { 'bash', 'c', 'html', 'lua', 'markdown', 'python', 'vim', 'vimdoc' },
      -- Autoinstall languages that are not installed
      auto_install = true,
      -- jcg in order to use both vimtex and treesitter highlighing, vimtex docs say to add additional_vim_regex_highlighting
      highlight = { enable = true, additional_vim_regex_highlighting = { 'markdown' } },
      indent = { enable = true },
    },
    config = function(_, opts)
      -- [[ Configure Treesitter ]] See `:help nvim-treesitter`

      ---@diagnostic disable-next-line: missing-fields
      require('nvim-treesitter.configs').setup(opts)

      -- There are additional nvim-treesitter modules that you can use to interact
      -- with nvim-treesitter. You should go explore a few and see what interests you:
      --
      --    - Incremental selection: Included, see `:help nvim-treesitter-incremental-selection-mod`
      --    - Show your current context: https://github.com/nvim-treesitter/nvim-treesitter-context
      --    - Treesitter + textobjects: https://github.com/nvim-treesitter/nvim-treesitter-textobjects
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
