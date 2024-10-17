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
}
