local M = {}

M.descend_to_the_underworld = function()
  -- we're giving treesitter the edge here
  -- vim.highlight.priorities.treesitter = 126

  vim.api.nvim_set_hl(0, '@keyword', { fg = '#569cd6' })
  vim.api.nvim_set_hl(0, '@keyword.function', { fg = '#569cd6', force = true })
  vim.api.nvim_set_hl(0, '@keyword.exception', { fg = '#ec4a90', force = true })
  vim.api.nvim_set_hl(0, '@keyword.conditional', { fg = '#ec4a90', force = true })
  vim.api.nvim_set_hl(0, '@keyword.repeat', { fg = '#ec4a90', force = true })
  vim.api.nvim_set_hl(0, '@lsp.type.typeParameter', { fg = '#ec4a90' })
  vim.api.nvim_set_hl(0, '@lsp.type.type', { fg = '#e15ac1' })
  vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#ec4a90' })
  vim.api.nvim_set_hl(0, 'IncSearch', { fg = '#000000', bg = '#ec4a90' })
  vim.api.nvim_set_hl(0, 'MiniStatuslineModeCommand', { fg = '#000000', bg = '#ec4a90' })
  vim.api.nvim_set_hl(0, 'MiniStatuslineModeInsert', { fg = '#000000', bg = '#ee9f00' })
  vim.api.nvim_set_hl(0, '@function.builtin', { fg = '#b87b48' })
  vim.api.nvim_set_hl(0, '@keyword.import', { fg = '#b87b48' })
  vim.api.nvim_set_hl(0, '@lsp.type.builtin.zig', { fg = '#b87b48' })
  vim.api.nvim_set_hl(0, '@module', { fg = '#cdcdcd' })
  vim.api.nvim_set_hl(0, '@variable.parameter', { fg = '#cda0ea' })
  vim.api.nvim_set_hl(0, '@lsp.type.enumMember', { fg = '#4fc1ff' })
  vim.api.nvim_set_hl(0, '@lsp.type.property', { fg = '#4fc1ff' })
  vim.api.nvim_set_hl(0, '@lsp.type.errorTag', { fg = '#b4206a' })
  vim.api.nvim_set_hl(0, '@lsp.type.function', { fg = '#76eaff' })
  vim.api.nvim_set_hl(0, '@lsp.type.method', { fg = '#ecbb80' })
  vim.api.nvim_set_hl(0, '@lsp.type.string', { fg = '#cea4e4' })
  vim.api.nvim_set_hl(0, '@string', { fg = '#cea4e4' })
  -- vim.api.nvim_set_hl(0, '@lsp.type.keyword.zig', { fg = 'none' })

  -- background
  vim.api.nvim_set_hl(0, 'Normal', { bg = '#1a001a' })
  vim.api.nvim_set_hl(0, 'NormalFloat', { bg = '#1a001a' })
end

return M
