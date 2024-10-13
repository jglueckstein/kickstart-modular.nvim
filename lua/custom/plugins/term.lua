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
      -- whether to have terminal windows all the same size; only applies to
      -- horizontal or vertical directions
      persist_size = true,
      close_on_exit = true, -- whether to close terminal window when process exits
      shell = vim.o.shell, -- change the default shell
      -- this field is only relevant if direction is set to 'float'
      float_opts = {
        -- The border key is *almost* the same as 'nvim_open_win'
        -- see :h nvim_open_win for details on borders however
        -- the 'curved' border is a custom border type
        -- not natively supported but implemented in this plugin.
        -- Choices include single, double, shadow, curved, ...
        border = 'curved',
        -- like `size`, width, height, row, and col can be a number or function
        -- which is passed the current terminal
        height = 100, -- height in character cells
        winblend = 3, -- 0 (opaque) to 100 (transparent)
      },
    }
  end,
}
