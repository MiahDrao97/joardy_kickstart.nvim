local M = {}

M.descend_to_the_underworld = function()
  -- we're giving treesitter the edge here
  vim.highlight.priorities.treesitter = 126

  vim.api.nvim_set_hl(0, '@boolean', { fg = '#3070b4' })
  vim.api.nvim_set_hl(0, '@keyword', { fg = '#3070b4' })
  vim.api.nvim_set_hl(0, '@keyword.operator', { fg = '#3070b4' })
  vim.api.nvim_set_hl(0, '@keyword.function', { fg = '#3070b4', force = true })
  vim.api.nvim_set_hl(0, '@keyword.exception', { fg = '#ec4a90', force = true })
  vim.api.nvim_set_hl(0, '@keyword.conditional', { fg = '#ec4a90', force = true })
  vim.api.nvim_set_hl(0, '@keyword.return', { fg = '#ec4a90', force = true })
  vim.api.nvim_set_hl(0, '@keyword.repeat', { fg = '#ec4a90', force = true })
  vim.api.nvim_set_hl(0, '@lsp.type.typeParameter', { fg = '#ec4a90' })
  vim.api.nvim_set_hl(0, '@lsp.type.type', { fg = '#e15ac1' })
  vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#ec4a90' })
  vim.api.nvim_set_hl(0, 'IncSearch', { fg = '#000000', bg = '#ec4a90' })
  vim.api.nvim_set_hl(0, 'MiniStatuslineModeInsert', { fg = '#000000', bg = '#ec4a90' })
  vim.api.nvim_set_hl(0, 'MiniStatuslineModeCommand', { fg = '#000000', bg = '#cfaf60' })
  vim.api.nvim_set_hl(0, 'MiniStatuslineModeVisual', { fg = '#000000', bg = '#cb9af7' })
  vim.api.nvim_set_hl(0, '@function.builtin', { fg = '#af7b48' })
  vim.api.nvim_set_hl(0, '@keyword.import', { fg = '#af7b48' })
  vim.api.nvim_set_hl(0, '@lsp.type.builtin.zig', { fg = '#af7b48' })
  vim.api.nvim_set_hl(0, '@module', { fg = '#cdcdcd' })
  vim.api.nvim_set_hl(0, '@variable.parameter', { fg = '#cb9af7' })
  vim.api.nvim_set_hl(0, '@lsp.type.enumMember', { fg = '#4fc1ff' })
  vim.api.nvim_set_hl(0, '@lsp.type.property', { fg = '#4fc1ff' })
  vim.api.nvim_set_hl(0, '@lsp.type.errorTag', { fg = '#b4206a' })
  vim.api.nvim_set_hl(0, '@lsp.type.function', { fg = '#76eaff' })
  vim.api.nvim_set_hl(0, '@lsp.type.method', { fg = '#dfbf70' })
  vim.api.nvim_set_hl(0, '@lsp.type.string', { fg = '#cd9af7' })
  vim.api.nvim_set_hl(0, '@lsp.type.number', { fg = '#ec4a90' })
  vim.api.nvim_set_hl(0, '@lsp.type.variable', { fg = '#d491bd' })
  vim.api.nvim_set_hl(0, '@string', { fg = '#cd9af7' })
  vim.api.nvim_set_hl(0, '@character', { fg = '#cd9af7' })
  vim.api.nvim_set_hl(0, 'Type', { fg = '#5ad1b3' })
  vim.api.nvim_set_hl(0, '@operator', { fg = '#b9b9b9' })
  -- vim.api.nvim_set_hl(0, '@lsp.type.keyword.zig', { fg = 'none' })

  -- background
  vim.api.nvim_set_hl(0, 'Normal', { bg = '#140014' })
  vim.api.nvim_set_hl(0, 'NormalFloat', { bg = '#140014' })
end

return M
