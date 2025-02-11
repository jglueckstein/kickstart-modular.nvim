-- lua/custom/plugins/telescope.lua
-- Plugin: telescope.nvim
-- Inspired by Grok https://x.com/i/grok/share/w1VdJbYrmZ4gQkN5HmwiAGRWm and
-- Rafi https://github.com/rafi/vim-config/blob/master/lua/rafi/plugins/telescope.lua

local telescope = require 'telescope'
local pickers = require 'telescope.pickers'
local finders = require 'telescope.finders'
local actions = require 'telescope.actions'
local action_state = require 'telescope.actions.state'
local conf = require('telescope.config').values

-- Custom actions

local myactions = {}

function myactions.get_zsh_history()
  local history_file = os.getenv 'HOME' .. '/.zsh_history'
  local history = {}
  local file = io.open(history_file, 'r')
  if file then
    for line in file:lines() do
      line = line:match '^: %d+:%d+;(.+)' or line -- Strip timestamp if present
      table.insert(history, line)
    end
    file:close()
  end
  -- Limit to 500 most recent commands
  return { items = vim.list_slice(history, math.max(1, #history - 499)) }
end

-- Custom pickers

local zsh_history = function(opts)
  opts = opts or {}
  pickers.new(opts, {
    prompt_title = '[ Zsh History ]',
    finder = finders.new_table {
      results = myactions.get_zsh_history().items,
      entry_maker = function(entry)
        return {
          value = entry,
          display = entry,
          ordinal = entry,
        }
      end,
    },
    sorter = conf.generic_sorter {},
    previewer = false,
  })
end

-- telescope.setup {
--   pickers = {
--     zsh_history = {
--       prompt_title = '[ Zsh History ]',
--       finder = finders.new_table {
--         results = myactions.get_zsh_history().items,
--         entry_maker = function(entry)
--           return {
--             value = entry,
--             display = entry,
--             ordinal = entry,
--           }
--         end,
--       },
--       sorter = conf.generic_sorter {},
--     },
--   },
--   extensions = {},
-- }

-- Create a custom command to open the picker
vim.api.nvim_create_user_command('ZshHistory', function()
  require(zsh_history {})
end, {})

return {
  telescope.setup {
    pickers = {
      buffers = {
        mappings = {
          i = {
            ['<c-d>'] = 'delete_buffer',
          },
          n = {
            ['d'] = 'delete_buffer',
          },
        },
      },
    },
  },
}
