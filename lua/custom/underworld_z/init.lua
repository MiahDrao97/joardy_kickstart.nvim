local M = {}

local colors = {
  ctrl_flow_pink = '#ec4a90',
  dark_blue = '#406aa6',
  eyesore_pink = '#f15ad1',
  cmd_mode_orange = '#cfaf60',
  violet = '#e088fa',
  macro_orange = '#c28f58',
  namespace_white = '#cdcdd8',
  bracket_grey = '#6a7899',
  operator_white = '#b9b9b9',
  static_periwinkle = '#56e8f8',
  variable_periwinkle = '#a0c4ef',
  variable_pink_grey = '#984d88',
  variable_blue_grey = '#90b2e8',
  prop_blue_grey = '#7870b0',
  param_blue = '#4aa9e8',
  err_tag_maroon = '#b4206a',
  method_orange = '#e0cf90',
  interface_orange = '#eab57a',
  string_rusty_orange = '#cb8b78',
  string_dusty_lavender = '#dbb6fa',
  string_escape_yellow = '#ffe890',
  variable_pink = '#d491bd',
  struct_class_green = '#54daad',
  struct_green = '#84e488',
  comment_grey = '#4d5679',
  eyesore_orange = '#ff9e64',
  reference_orange = '#f6b684',
  bkgd = '#160022',
}

M.descend_to_the_underworld = function()
  -- we're giving treesitter the edge here
  vim.highlight.priorities.treesitter = 126

  vim.api.nvim_set_hl(0, '@boolean', { link = '@constant.builtin' })
  vim.api.nvim_set_hl(0, '@keyword', { fg = colors.dark_blue, italic = false })
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
  vim.api.nvim_set_hl(0, '@keyword.import', { link = '@keyword' })
  vim.api.nvim_set_hl(0, '@keyword.import.zig', { fg = colors.macro_orange }) -- link to keyword for c# (just 'using' kw)
  vim.api.nvim_set_hl(0, '@keyword.directive', { fg = colors.eyesore_pink })
  vim.api.nvim_set_hl(0, '@lsp.type.builtin.zig', { fg = colors.macro_orange })
  vim.api.nvim_set_hl(0, '@module', { fg = colors.namespace_white })
  vim.api.nvim_set_hl(0, 'underworld_z.namespace', { link = '@module' })
  vim.api.nvim_set_hl(0, '@punctuation.delimiter', { fg = colors.operator_white })
  vim.api.nvim_set_hl(0, '@punctuation.bracket', { fg = colors.bracket_grey })
  vim.api.nvim_set_hl(0, '@punctuation.special', { fg = colors.static_periwinkle })
  vim.api.nvim_set_hl(0, '@variable.parameter', { fg = colors.param_blue })
  vim.api.nvim_set_hl(0, 'underworld_z.parameter', { link = '@variable.parameter' })
  vim.api.nvim_set_hl(0, '@lsp.type.enumMember', { fg = colors.param_blue })
  vim.api.nvim_set_hl(0, '@lsp.type.property', { link = '@property' })
  vim.api.nvim_set_hl(0, '@variable.member', { link = '@property' })
  vim.api.nvim_set_hl(0, '@variable.capture', { fg = colors.variable_periwinkle, italic = true })
  vim.api.nvim_set_hl(0, '@variable.capture_group', { link = '@variable.capture' })
  vim.api.nvim_set_hl(0, '@variable.capture_use', { link = '@variable.capture' })
  vim.api.nvim_set_hl(0, '@property', { fg = colors.prop_blue_grey })
  vim.api.nvim_set_hl(0, 'underworld_z.property', { link = '@property' })
  vim.api.nvim_set_hl(0, '@lsp.type.errorTag', { fg = colors.err_tag_maroon })
  vim.api.nvim_set_hl(0, '@lsp.type.function', { fg = colors.static_periwinkle })
  vim.api.nvim_set_hl(0, 'underworld_z.static', { fg = colors.static_periwinkle, italic = false })
  vim.api.nvim_set_hl(0, 'underworld_z.method', { link = '@function.method' })
  vim.api.nvim_set_hl(0, '@lsp.type.method', { link = '@function.method' })
  vim.api.nvim_set_hl(0, '@function.method', { fg = colors.method_orange })
  vim.api.nvim_set_hl(0, '@function.call', { fg = colors.eyesore_pink })
  vim.api.nvim_set_hl(0, '@lsp.type.string', { link = '@string' })
  vim.api.nvim_set_hl(0, '@lsp.type.number', { link = '@number' })
  vim.api.nvim_set_hl(0, '@number', { fg = colors.ctrl_flow_pink })
  vim.api.nvim_set_hl(0, '@number.float', { link = '@number' })
  vim.api.nvim_set_hl(0, '@lsp.type.variable', { link = '@variable' })
  vim.api.nvim_set_hl(0, '@variable', { fg = colors.variable_periwinkle })
  vim.api.nvim_set_hl(0, '@lsp.type.interface', { fg = colors.interface_orange })
  vim.api.nvim_set_hl(0, 'underworld_z.interface', { link = '@lsp.type.interface' })
  vim.api.nvim_set_hl(0, '@string', { fg = colors.string_rusty_orange })
  vim.api.nvim_set_hl(0, '@string.escape', { fg = colors.string_escape_yellow })
  vim.api.nvim_set_hl(0, '@character', { link = '@string' })
  vim.api.nvim_set_hl(0, 'Type', { fg = colors.struct_class_green })
  vim.api.nvim_set_hl(0, 'underworld_z.class', { link = 'Type' })
  vim.api.nvim_set_hl(0, 'underworld_z.struct', { fg = colors.struct_green })
  vim.api.nvim_set_hl(0, 'underworld_z.enum', { fg = colors.violet })
  vim.api.nvim_set_hl(0, 'underworld_z.enumMember', { link = '@lsp.type.enumMember' })
  vim.api.nvim_set_hl(0, 'underworld_z.delegate', { fg = colors.eyesore_pink })
  vim.api.nvim_set_hl(0, 'underworld_z.extn_method', { fg = colors.variable_pink })
  vim.api.nvim_set_hl(0, 'underworld_z.type', { fg = colors.violet })
  vim.api.nvim_set_hl(0, 'underworld_z.error', { fg = colors.err_tag_maroon })
  vim.api.nvim_set_hl(0, '@attribute', { link = 'Type' })
  vim.api.nvim_set_hl(0, '@constructor', { link = 'Type' })
  vim.api.nvim_set_hl(0, '@operator', { fg = colors.operator_white })
  vim.api.nvim_set_hl(0, '@constant', { fg = colors.param_blue })
  vim.api.nvim_set_hl(0, '@comment', { fg = colors.comment_grey })
  vim.api.nvim_set_hl(0, '@label', { fg = colors.prop_blue_grey })
  vim.api.nvim_set_hl(0, '@operator.reference', { fg = colors.reference_orange })
  vim.api.nvim_set_hl(0, '@operator.optional', { fg = colors.bracket_grey })
  vim.api.nvim_set_hl(0, '@operator.error', { fg = colors.err_tag_maroon })
  vim.api.nvim_set_hl(0, '@punctuation.ptr', { fg = colors.bracket_grey })

  -- background
  vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })

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
          priority = 131, -- this puts it right at the top
        })
      end
      if token.type == 'method' and not token.modifiers.static then
        vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, 'underworld_z.method', {
          priority = 131, -- this puts it right at the top
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
      if token.type == 'enumMember' then
        vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, 'underworld_z.enumMember', {
          priority = 128, -- this puts it right at the top
        })
      end
      if token.type == 'namespace' then
        vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, 'underworld_z.namespace', {
          priority = 128, -- this puts it right at the top
        })
      end
      if token.type == 'delegateName' then
        vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, 'underworld_z.delegate', {
          priority = 132, -- this puts it right at the top
        })
      end
      if token.type == 'extensionMethodName' then
        vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, 'underworld_z.extn_method', {
          priority = 132, -- this puts it right at the top
        })
      end
      if token.type == 'type' and vim.bo.filetype == 'zig' then
        vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, 'underworld_z.type', {
          priority = 131, -- this puts it right at the top
        })
      end
      if token.type == 'function' and vim.bo.filetype == 'zig' then
        vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, 'underworld_z.static', {
          priority = 131, -- this puts it right at the top
        })
      end
      if token.type == 'struct' and vim.bo.filetype == 'zig' then
        vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, 'underworld_z.class', {
          priority = 128, -- this puts it right at the top
        })
      end
      if token.type == 'errorTag' then
        vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, 'underworld_z.error', {
          priority = 128, -- this puts it right at the top
        })
      end
    end,
  })
end

return M
