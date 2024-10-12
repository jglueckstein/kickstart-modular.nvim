return {
  'akinsho/toggleterm.nvim',
  config = function()
    require('toggleterm').setup {
      open_mapping = '<C-\\>', -- in normal mode, this toggles the toggleterm window
      direction = 'float', -- choices are 'vertical', 'horizontal', 'tab', or 'float'
      hide_numbers = true, -- hide the numbers column in toggleterm buffers
      -- toggleterm shades terminal buffers, but you can specify other filetypes
      -- to receive the shading as well
      shade_filetypes = {},
      shade_terminals = true, -- turn shading on/off for toggleterm windows
      shading_factor = '-70', -- amount of shade to apply, as a percentage; default is -30
      start_in_insert = true, -- whether to open toggleterm buffers in insert mode
      insert_mappings = true, -- whether to apply the open_mapping to insert mode
      persist_size = true,
      float_opts = {
        border = 'curved',
      },
    }
  end,
}
