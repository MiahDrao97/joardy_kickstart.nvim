local M = {}

local colors = {
  ctrl_flow_pink = '#ec4a90',
  dark_blue = '#406aa6',
  eyesore_pink = '#f15ad1',
  cmd_mode_orange = '#cfaf60',
  violet = '#dd80fd',
  macro_orange = '#d68f50',
  namespace_white = '#cdcdd8',
  bracket_grey = '#6a7899',
  operator_white = '#b9b9b9',
  static_periwinkle = '#56e8f8',
  variable_periwinkle = '#80cae0',
  variable_pink_grey = '#984d88',
  variable_blue_grey = '#88b8e0',
  prop_blue_grey = '#7870b0',
  param_blue = '#4aa9e8',
  err_tag_maroon = '#a81a58',
  method_orange = '#f2cf90',
  interface_orange = '#f8b57a',
  string_rusty_orange = '#cb8b78',
  string_dusty_lavender = '#dbb6fa',
  string_escape_yellow = '#ffe890',
  variable_pink = '#fd92d8',
  struct_class_green = '#54e0aa',
  struct_green = '#84e488',
  comment_grey = '#4d5679',
  eyesore_orange = '#ff9e64',
  reference_orange = '#ffb670',
  bkgd = '#160022',
  deep_purple = '#9446b0',
}

M.descend_to_the_underworld = function()
  -- we're giving treesitter the edge here
  vim.highlight.priorities.treesitter = 126

  vim.api.nvim_set_hl(0, '@boolean', { link = '@constant.builtin' })
  vim.api.nvim_set_hl(0, '@keyword', { fg = colors.dark_blue, italic = false, bold = true })
  vim.api.nvim_set_hl(0, '@none.c_sharp', { fg = colors.dark_blue, bold = false })
  vim.api.nvim_set_hl(0, '@constant.builtin', { link = '@keyword' })
  vim.api.nvim_set_hl(0, '@type.builtin', { fg = colors.violet, bold = false })
  vim.api.nvim_set_hl(0, '@type.zig', { fg = colors.violet })
  vim.api.nvim_set_hl(0, '@variable.builtin', { link = '@keyword' })
  vim.api.nvim_set_hl(0, '@keyword.operator', { link = '@keyword' })
  vim.api.nvim_set_hl(0, '@keyword.function', { link = '@keyword' })
  vim.api.nvim_set_hl(0, '@keyword.exception', { fg = colors.ctrl_flow_pink, bold = true })
  vim.api.nvim_set_hl(0, '@keyword.conditional', { fg = colors.ctrl_flow_pink, bold = true })
  vim.api.nvim_set_hl(0, '@keyword.return', { fg = colors.ctrl_flow_pink, bold = true })
  vim.api.nvim_set_hl(0, '@keyword.repeat', { fg = colors.ctrl_flow_pink, bold = true })
  vim.api.nvim_set_hl(0, '@lsp.type.typeParameter', { fg = colors.ctrl_flow_pink })
  vim.api.nvim_set_hl(0, '@keyword.conditional.ternary.c_sharp', { link = '@punctuation.bracket' })
  vim.api.nvim_set_hl(0, 'underworld_z.typeparam', { link = '@lsp.type.typeParameter' })
  vim.api.nvim_set_hl(0, '@lsp.type.type', { fg = colors.violet, bold = false })
  vim.api.nvim_set_hl(0, '@lsp.type.keyword.cs', { fg = colors.violet, bold = false })
  vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = colors.ctrl_flow_pink })
  vim.api.nvim_set_hl(0, 'IncSearch', { fg = '#000000', bg = colors.ctrl_flow_pink })
  vim.api.nvim_set_hl(0, 'MiniStatuslineModeInsert', { fg = '#000000', bg = colors.ctrl_flow_pink })
  vim.api.nvim_set_hl(0, 'MiniStatuslineModeCommand', { fg = '#000000', bg = colors.cmd_mode_orange })
  vim.api.nvim_set_hl(0, 'MiniStatuslineModeVisual', { fg = '#000000', bg = colors.violet })
  vim.api.nvim_set_hl(0, '@function.builtin', { fg = colors.macro_orange, bold = true })
  vim.api.nvim_set_hl(0, '@function.macro', { fg = colors.macro_orange, bold = true })
  vim.api.nvim_set_hl(0, '@constant.macro.c_sharp', { fg = colors.comment_grey })
  vim.api.nvim_set_hl(0, '@keyword.import', { link = '@keyword' })
  vim.api.nvim_set_hl(0, '@keyword.import.cpp', { fg = colors.ctrl_flow_pink })
  vim.api.nvim_set_hl(0, '@keyword.import.c', { fg = colors.ctrl_flow_pink })
  vim.api.nvim_set_hl(0, '@keyword.import.zig', { fg = colors.macro_orange, bold = true }) -- link to keyword for c# (just 'using' kw)
  vim.api.nvim_set_hl(0, '@keyword.directive', { fg = colors.comment_grey })
  vim.api.nvim_set_hl(0, '@keyword.directive.define', { fg = colors.comment_grey })
  vim.api.nvim_set_hl(0, '@lsp.type.builtin.zig', { fg = colors.macro_orange, bold = true })
  vim.api.nvim_set_hl(0, '@module', { fg = colors.namespace_white })
  vim.api.nvim_set_hl(0, 'underworld_z.namespace', { link = '@module' })
  vim.api.nvim_set_hl(0, '@punctuation.delimiter', { fg = colors.operator_white })
  vim.api.nvim_set_hl(0, '@punctuation.bracket', { fg = colors.bracket_grey })
  vim.api.nvim_set_hl(0, '@punctuation.special', { fg = colors.static_periwinkle })
  vim.api.nvim_set_hl(0, '@variable.parameter', { fg = colors.param_blue })
  vim.api.nvim_set_hl(0, 'underworld_z.parameter', { link = '@variable.parameter' })
  vim.api.nvim_set_hl(0, '@lsp.type.enumMember', { fg = colors.param_blue, bold = false })
  vim.api.nvim_set_hl(0, '@lsp.type.property', { link = '@property' })
  vim.api.nvim_set_hl(0, '@variable.member', { link = '@property' })
  vim.api.nvim_set_hl(0, '@variable.capture', { fg = colors.variable_periwinkle, italic = true })
  vim.api.nvim_set_hl(0, '@variable.capture_group', { link = '@variable.capture' })
  vim.api.nvim_set_hl(0, '@variable.capture_use', { link = '@variable.capture' })
  vim.api.nvim_set_hl(0, '@property', { fg = colors.prop_blue_grey })
  vim.api.nvim_set_hl(0, 'underworld_z.property', { link = '@property' })
  vim.api.nvim_set_hl(0, 'underworld_z.deep_property', { fg = colors.deep_purple })
  vim.api.nvim_set_hl(0, '@lsp.type.errorTag', { fg = colors.err_tag_maroon })
  vim.api.nvim_set_hl(0, '@lsp.type.function', { fg = colors.static_periwinkle })
  vim.api.nvim_set_hl(0, 'Function', { fg = colors.static_periwinkle })
  vim.api.nvim_set_hl(0, 'underworld_z.static', { fg = colors.static_periwinkle })
  vim.api.nvim_set_hl(0, 'underworld_z.static_prop', { fg = colors.param_blue })
  vim.api.nvim_set_hl(0, 'underworld_z.method', { link = '@function.method' })
  vim.api.nvim_set_hl(0, '@lsp.type.method', { link = '@function.method' })
  vim.api.nvim_set_hl(0, '@function.c', { fg = colors.method_orange })
  vim.api.nvim_set_hl(0, '@function.method', { fg = colors.method_orange })
  vim.api.nvim_set_hl(0, '@function.call', { fg = colors.static_periwinkle })
  vim.api.nvim_set_hl(0, '@function.declaration_literal', { fg = colors.static_periwinkle })
  vim.api.nvim_set_hl(0, '@lsp.type.string', { link = '@string' })
  vim.api.nvim_set_hl(0, '@lsp.type.number', { link = '@number' })
  vim.api.nvim_set_hl(0, '@number', { fg = colors.ctrl_flow_pink })
  vim.api.nvim_set_hl(0, '@number.float', { link = '@number' })
  vim.api.nvim_set_hl(0, '@lsp.type.variable', { link = '@variable' })
  vim.api.nvim_set_hl(0, '@variable', { fg = colors.variable_blue_grey })
  vim.api.nvim_set_hl(0, '@lsp.type.interface', { fg = colors.interface_orange })
  vim.api.nvim_set_hl(0, 'underworld_z.interface', { link = '@lsp.type.interface' })
  vim.api.nvim_set_hl(0, '@string', { fg = colors.string_rusty_orange })
  vim.api.nvim_set_hl(0, '@string.escape', { fg = colors.string_escape_yellow })
  vim.api.nvim_set_hl(0, 'underworld_z.escape', { link = '@string.escape' })
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
  vim.api.nvim_set_hl(0, 'underworld_z.preprocessorText', { fg = colors.static_periwinkle })
  vim.api.nvim_set_hl(0, 'underworld_z.mutable', { link = '@variable' })
  vim.api.nvim_set_hl(0, 'underworld_z.macro', { link = '@function.macro' })
  vim.api.nvim_set_hl(0, 'underworld_z.control_flow', { fg = colors.ctrl_flow_pink })
  vim.api.nvim_set_hl(0, '@attribute', { link = 'Type' })
  vim.api.nvim_set_hl(0, '@constructor', { link = 'Type' })
  vim.api.nvim_set_hl(0, '@operator', { fg = colors.operator_white })
  vim.api.nvim_set_hl(0, '@constant', { fg = colors.param_blue })
  vim.api.nvim_set_hl(0, '@constant.c_sharp', { fg = colors.err_tag_maroon })
  vim.api.nvim_set_hl(0, '@comment', { fg = colors.comment_grey })
  vim.api.nvim_set_hl(0, '@label', { fg = colors.deep_purple })
  vim.api.nvim_set_hl(0, '@operator.reference', { fg = colors.reference_orange })
  vim.api.nvim_set_hl(0, '@operator.optional', { fg = colors.bracket_grey })
  vim.api.nvim_set_hl(0, '@operator.error', { fg = colors.err_tag_maroon })
  vim.api.nvim_set_hl(0, '@punctuation.ptr', { fg = colors.bracket_grey })
  vim.api.nvim_set_hl(0, '@lsp.typemod.typealias.defaultLibrary.rust', { link = '@lsp.typemod.typeAlias' })
  vim.api.nvim_set_hl(0, '@lsp.typemod.type.defaultLibrary', { link = '@lsp.type.type' })
  vim.api.nvim_set_hl(0, 'TodoFgNOTE', { fg = colors.struct_class_green })
  vim.api.nvim_set_hl(0, 'TodoBgNOTE', { bg = colors.struct_class_green, fg = '#000000' })

  -- background
  vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
  vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })

  -- the "exceptions"
  vim.api.nvim_create_autocmd('LspTokenUpdate', {
    callback = function(args)
      local token = args.data.token
      if token.type == 'typeParameter' then
        vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, 'underworld_z.typeparam', {
          priority = 131, -- this puts it right at the top
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
        if vim.bo.filetype == 'rust' then
          vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, 'underworld_z.enumMember', {
            priority = 128, -- this puts it right at the top
          })
        else
          vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, 'underworld_z.property', {
            priority = 128, -- this puts it right at the top
          })
        end
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
        vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, 'underworld_z.static_prop', {
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
          priority = 131, -- this puts it right at the top
        })
      end
      if token.type == 'namespace' then
        vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, 'underworld_z.namespace', {
          priority = 131, -- this puts it right at the top
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
      if token.type == 'function' then
        if vim.bo.filetype == 'rust' or vim.bo.filetype == 'lua' then
          vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, 'underworld_z.static', {
            priority = 131, -- this puts it right at the top
          })
        elseif vim.bo.filetype == 'zig' then
          vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, 'underworld_z.static', {
            priority = 127, -- this puts it right at the top
          })
        end
      end
      if token.type == 'struct' and vim.bo.filetype == 'zig' then
        vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, 'underworld_z.class', {
          priority = 131, -- this puts it right at the top
        })
      end
      if token.type == 'errorTag' then
        vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, 'underworld_z.error', {
          priority = 131, -- this puts it right at the top
        })
      end
      if token.type == 'preprocessorText' then
        vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, 'underworld_z.preprocessorText', {
          priority = 128, -- this puts it right at the top
        })
      end
      if token.type == 'selfTypeKeyword' and vim.bo.filetype == 'rust' then
        vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, 'underworld_z.class', {
          priority = 128, -- this puts it right at the top
        })
      end
      if token.type == 'typeAlias' and vim.bo.filetype == 'rust' then
        vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, 'underworld_z.class', {
          priority = 128, -- this puts it right at the top
        })
      end
      if (token.type == 'variable' or token.type == 'parameter') and vim.bo.filetype == 'rust' then
        if token.modifiers.mutable then
          vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, 'underworld_z.mutable', {
            priority = 131, -- this puts it right at the top
          })
        else
          vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, 'underworld_z.property', {
            priority = 131, -- this puts it right at the top
          })
        end
      end
      if token.type == 'variable' and token.modifiers.static and vim.bo.filetype == 'zig' then
        vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, 'underworld_z.static_prop', {
          priority = 131, -- this puts it right at the top
        })
      end
      if token.type == 'macro' and vim.bo.filetype == 'rust' then
        vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, 'underworld_z.macro', {
          priority = 128, -- this puts it right at the top
        })
      end
      if token.type == 'decorator' and vim.bo.filetype == 'rust' then
        vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, 'underworld_z.struct', {
          priority = 128, -- this puts it right at the top
        })
      end
      if token.type == 'builtinAttribute' and vim.bo.filetype == 'rust' then
        vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, 'underworld_z.struct', {
          priority = 128, -- this puts it right at the top
        })
      end
      if token.type == 'lifetime' and vim.bo.filetype == 'rust' then
        vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, 'underworld_z.static', {
          priority = 128, -- this puts it right at the top
        })
      end
      if token.type == 'derive' and vim.bo.filetype == 'rust' then
        vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, 'underworld_z.interface', {
          priority = 128, -- this puts it right at the top
        })
      end
      if token.type == 'constantName' then
        vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, 'underworld_z.static_prop', {
          priority = 129, -- this puts it right at the top
        })
      end
      if token.type == 'controlKeyword' then
        vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, 'underworld_z.control_flow', {})
      end
      if token.type == 'stringEscapeCharacter' then
        vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, 'underworld_z.escape', {
          priority = 128, -- this puts it right at the top
        })
      end
    end,
  })
end

return M
