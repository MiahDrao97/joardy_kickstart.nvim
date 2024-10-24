local M = {}

local colors = {
  ctrl_flow_pink = '#ec4a90',
  dark_blue = '#3070b4',
  eyesore_pink = '#e15ac1',
  cmd_mode_orange = '#cfaf60',
  violet = '#cb9ffa',
  macro_orange = '#c28f58',
  namespace_white = '#cdcdcd',
  bracket_grey = '#6a7899',
  operator_white = '#b9b9b9',
  static_periwinkle = '#66f2ff',
  prop_blue_grey = '#84a8cf',
  param_blue = '#4aa9f0',
  err_tag_maroon = '#b4206a',
  method_orange = '#e0cf90',
  interface_orange = '#eab57a',
  string_rusty_orange = '#c68f78',
  string_escape_yellow = '#ffe890',
  variable_pink = '#d491bd',
  struct_class_green = '#5ad1b3',
  struct_green = '#70ca70',
  comment_grey = '#565f89',
}

M.descend_to_the_underworld = function()
  -- we're giving treesitter the edge here
  vim.highlight.priorities.treesitter = 126

  vim.api.nvim_set_hl(0, '@boolean', { link = '@keyword' })
  vim.api.nvim_set_hl(0, '@keyword', { fg = colors.dark_blue })
  vim.api.nvim_set_hl(0, '@constant.builtin', { link = '@keyword' })
  vim.api.nvim_set_hl(0, '@type.builtin', { fg = colors.violet })
  vim.api.nvim_set_hl(0, '@variable.builtin', { link = '@keyword' })
  vim.api.nvim_set_hl(0, '@keyword.operator', { link = '@keyword' })
  vim.api.nvim_set_hl(0, '@keyword.function', { link = '@keyword' })
  vim.api.nvim_set_hl(0, '@keyword.exception', { fg = colors.ctrl_flow_pink })
  vim.api.nvim_set_hl(0, '@keyword.conditional', { fg = colors.ctrl_flow_pink })
  vim.api.nvim_set_hl(0, '@keyword.return', { fg = colors.ctrl_flow_pink })
  vim.api.nvim_set_hl(0, '@keyword.repeat', { fg = colors.ctrl_flow_pink })
  vim.api.nvim_set_hl(0, '@lsp.type.typeParameter', { fg = colors.ctrl_flow_pink })
  vim.api.nvim_set_hl(0, 'underworld_z.typeparam', { link = '@lsp.type.typeParameter' })
  vim.api.nvim_set_hl(0, '@lsp.type.type', { fg = colors.violet })
  vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = colors.ctrl_flow_pink })
  vim.api.nvim_set_hl(0, 'IncSearch', { fg = '#000000', bg = colors.ctrl_flow_pink })
  vim.api.nvim_set_hl(0, 'MiniStatuslineModeInsert', { fg = '#000000', bg = colors.ctrl_flow_pink })
  vim.api.nvim_set_hl(0, 'MiniStatuslineModeCommand', { fg = '#000000', bg = colors.cmd_mode_orange })
  vim.api.nvim_set_hl(0, 'MiniStatuslineModeVisual', { fg = '#000000', bg = colors.violet })
  vim.api.nvim_set_hl(0, '@function.builtin', { fg = colors.macro_orange })
  vim.api.nvim_set_hl(0, '@keyword.import', { fg = colors.macro_orange })
  vim.api.nvim_set_hl(0, '@keyword.import.c_sharp', { link = '@keyword' }) -- link to keyword for c# (just 'using' kw)
  vim.api.nvim_set_hl(0, '@keyword.directive', { fg = colors.macro_orange })
  vim.api.nvim_set_hl(0, '@lsp.type.builtin.zig', { fg = colors.macro_orange })
  vim.api.nvim_set_hl(0, '@module', { fg = colors.namespace_white })
  vim.api.nvim_set_hl(0, 'underworld_z.namespace', { link = '@module' })
  vim.api.nvim_set_hl(0, '@punctuation.delimiter', { link = '@operator' })
  vim.api.nvim_set_hl(0, '@punctuation.bracket', { fg = colors.bracket_grey })
  vim.api.nvim_set_hl(0, '@punctuation.special', { fg = colors.static_periwinkle })
  vim.api.nvim_set_hl(0, '@variable.parameter', { fg = colors.param_blue })
  vim.api.nvim_set_hl(0, 'underworld_z.parameter', { link = '@variable.parameter' })
  vim.api.nvim_set_hl(0, '@lsp.type.enumMember', { fg = colors.static_periwinkle })
  vim.api.nvim_set_hl(0, '@lsp.type.property', { link = '@property' })
  vim.api.nvim_set_hl(0, '@variable.member', { link = '@property' })
  vim.api.nvim_set_hl(0, '@property', { fg = colors.prop_blue_grey })
  vim.api.nvim_set_hl(0, 'underworld_z.property', { link = '@property' })
  vim.api.nvim_set_hl(0, '@lsp.type.errorTag', { fg = colors.err_tag_maroon })
  vim.api.nvim_set_hl(0, '@lsp.type.function', { fg = colors.static_periwinkle })
  vim.api.nvim_set_hl(0, 'underworld_z.static', { fg = colors.static_periwinkle })
  vim.api.nvim_set_hl(0, '@lsp.type.method', { link = '@function.method' })
  vim.api.nvim_set_hl(0, '@function.method', { fg = colors.method_orange })
  vim.api.nvim_set_hl(0, '@function.call', { fg = colors.method_orange })
  vim.api.nvim_set_hl(0, '@lsp.type.string', { link = '@string' })
  vim.api.nvim_set_hl(0, '@lsp.type.number', { link = '@number' })
  vim.api.nvim_set_hl(0, '@number', { fg = colors.ctrl_flow_pink })
  vim.api.nvim_set_hl(0, '@lsp.type.variable', { link = '@variable' })
  vim.api.nvim_set_hl(0, '@variable', { fg = colors.variable_pink })
  vim.api.nvim_set_hl(0, '@lsp.type.interface', { fg = colors.interface_orange })
  vim.api.nvim_set_hl(0, 'underworld_z.interface', { link = '@lsp.type.interface' })
  vim.api.nvim_set_hl(0, '@string', { fg = colors.string_rusty_orange })
  vim.api.nvim_set_hl(0, '@string.escape', { fg = colors.string_escape_yellow })
  vim.api.nvim_set_hl(0, '@character', { link = '@string' })
  vim.api.nvim_set_hl(0, 'Type', { fg = colors.struct_class_green })
  vim.api.nvim_set_hl(0, 'underworld_z.class', { link = 'Type' })
  vim.api.nvim_set_hl(0, 'underworld_z.struct', { fg = colors.struct_green })
  vim.api.nvim_set_hl(0, 'underworld_z.enum', { fg = colors.violet })
  vim.api.nvim_set_hl(0, 'underworld_z.enumMember', { fg = colors.static_periwinkle })
  vim.api.nvim_set_hl(0, '@attribute', { link = 'Type' })
  vim.api.nvim_set_hl(0, '@constructor', { link = 'Type' })
  vim.api.nvim_set_hl(0, '@operator', { fg = colors.operator_white })
  vim.api.nvim_set_hl(0, '@constant', { fg = colors.param_blue })

  -- background
  vim.api.nvim_set_hl(0, 'Normal', { bg = '#1a001a' })
  vim.api.nvim_set_hl(0, 'NormalFloat', { bg = '#1a001a' })

  -- the "exceptions"
  vim.api.nvim_create_autocmd('LspTokenUpdate', {
    callback = function(args)
      local token = args.data.token
      if token.type == 'typeParameter' then
        vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, 'underworld_z.typeparam', {
          priority = 128, -- this puts it right at the top
        })
      end
      if token.type == 'interface' then
        vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, 'underworld_z.interface', {
          priority = 128, -- this puts it right at the top
        })
      end
      if token.type == 'class' then
        vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, 'underworld_z.class', {
          priority = 128, -- this puts it right at the top
        })
      end
      if token.type == 'parameter' then
        vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, 'underworld_z.parameter', {
          priority = 128, -- this puts it right at the top
        })
      end
      if token.type == 'property' and not token.modifiers.static then
        vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, 'underworld_z.property', {
          priority = 128, -- this puts it right at the top
        })
      end
      if token.type == 'method' and token.modifiers.static then
        vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, 'underworld_z.static', {
          priority = 128, -- this puts it right at the top
        })
      end
      if token.type == 'property' and token.modifiers.static then
        vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, 'underworld_z.static', {
          priority = 128, -- this puts it right at the top
        })
      end
      if token.type == 'struct' and vim.bo.filetype == 'cs' then
        vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, 'underworld_z.struct', {
          priority = 128, -- this puts it right at the top
        })
      end
      if token.type == 'enum' then
        vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, 'underworld_z.enum', {
          priority = 128, -- this puts it right at the top
        })
      end
      if token.type == 'enumMember' and vim.bo.filetype == 'cs' then
        vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, 'underworld_z.enumMember', {
          priority = 128, -- this puts it right at the top
        })
      end
      if token.type == 'namespace' then
        vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, 'underworld_z.namespace', {
          priority = 128, -- this puts it right at the top
        })
      end
    end,
  })
end

return M
