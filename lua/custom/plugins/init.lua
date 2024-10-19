require 'custom.plugins.remap'
require 'custom.plugins.set'

-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
--
--
return {
  {
    'theprimeagen/harpoon',
    config = function()
      local mark = require 'harpoon.mark'
      local ui = require 'harpoon.ui'

      vim.keymap.set('n', '<leader>a', mark.toggle_file)
      vim.keymap.set('n', '<leader>z', mark.clear_all)
      vim.keymap.set('n', '<C-e>', ui.toggle_quick_menu)
      vim.keymap.set('n', '<C-h>', function()
        ui.nav_file(1)
      end)
      vim.keymap.set('n', '<C-j>', function()
        ui.nav_file(2)
      end)
      vim.keymap.set('n', '<C-k>', function()
        ui.nav_file(3)
      end)
      vim.keymap.set('n', '<C-l>', function()
        ui.nav_file(4)
      end)
    end,
  },
  {
    'echasnovski/mini.pairs',
    config = require('mini.pairs').setup(),
  },
  {
    'vague2k/vague.nvim',
    --priority = 1000,
    config = function()
      require('vague').setup {
        transparent = false, -- don't set background
        style = {
          -- "none" is the same thing as default. But "italic" and "bold" are also valid options
          boolean = 'none',
          number = 'none',
          float = 'none',
          error = 'none',
          comments = 'italic',
          conditionals = 'none',
          functions = 'none',
          headings = 'bold',
          operators = 'none',
          strings = 'none',
          variables = 'none',

          -- keywords
          keywords = 'none',
          keyword_return = 'none',
          keywords_loop = 'none',
          keywords_label = 'none',
          keywords_exception = 'none',

          -- builtin
          builtin_constants = 'none',
          builtin_functions = 'none',
          builtin_types = 'none',
          builtin_variables = 'none',
        },
        -- Override colors
        colors = {
          comment = '#646477',
          builtin = '#cd9c61',
          func = '#ecca96',
          string = '#cea4e4',
          number = '#ec4a90',
          property = '#4fc1ff',
          constant = '#b4b4ce',
          parameter = '#b9a3ba',
          operator = '#96a3b2',
          keyword = '#e15ac1',
          type = '#4fc1ff',
        },
      }
      --vim.cmd.colorscheme 'vague'
    end,
  },
}
