return {
  'akinsho/toggleterm.nvim',
  config = function()
    require('toggleterm').setup {
      open_mapping = '<C-\\>',
      direction = 'float',
      shade_terminals = true,
      insert_mappings = true,
      float_opts = {
        border = 'curved',
      },
    }
  end,
}
