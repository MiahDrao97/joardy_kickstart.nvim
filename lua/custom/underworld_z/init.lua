local M = {}

M.descend_to_the_underworld = function()
  -- we're giving treesitter the edge here
  vim.highlight.priorities.treesitter = 126

  vim.api.nvim_set_hl(0, '@boolean', { fg = '#3070b4' })
  vim.api.nvim_set_hl(0, '@keyword', { fg = '#3070b4' })
  vim.api.nvim_set_hl(0, '@constant.builtin', { fg = '#3070b4' })
  vim.api.nvim_set_hl(0, '@type.builtin', { fg = '#3070b4' })
  vim.api.nvim_set_hl(0, '@variable.builtin', { fg = '#3070b4' })
  vim.api.nvim_set_hl(0, '@keyword.operator', { fg = '#3070b4' })
  vim.api.nvim_set_hl(0, '@keyword.function', { fg = '#3070b4', force = true })
  vim.api.nvim_set_hl(0, '@keyword.exception', { fg = '#ec4a90', force = true })
  vim.api.nvim_set_hl(0, '@keyword.conditional', { fg = '#ec4a90', force = true })
  vim.api.nvim_set_hl(0, '@keyword.return', { fg = '#ec4a90', force = true })
  vim.api.nvim_set_hl(0, '@keyword.repeat', { fg = '#ec4a90', force = true })
  vim.api.nvim_set_hl(0, '@lsp.type.typeParameter', { fg = '#ec4a90' })
  vim.api.nvim_set_hl(0, 'underworld_z.typeparam', { link = '@lsp.type.typeParameter' })
  vim.api.nvim_set_hl(0, '@lsp.type.type', { fg = '#e15ac1' })
  vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#ec4a90' })
  vim.api.nvim_set_hl(0, 'IncSearch', { fg = '#000000', bg = '#ec4a90' })
  vim.api.nvim_set_hl(0, 'MiniStatuslineModeInsert', { fg = '#000000', bg = '#ec4a90' })
  vim.api.nvim_set_hl(0, 'MiniStatuslineModeCommand', { fg = '#000000', bg = '#cfaf60' })
  vim.api.nvim_set_hl(0, 'MiniStatuslineModeVisual', { fg = '#000000', bg = '#cb9af7' })
  vim.api.nvim_set_hl(0, '@function.builtin', { fg = '#af7b48' })
  vim.api.nvim_set_hl(0, '@keyword.import', { fg = '#af7b48' })
  vim.api.nvim_set_hl(0, '@keyword.import.c_sharp', { link = '@keyword' }) -- link to keyword for c# (just 'using' kw)
  vim.api.nvim_set_hl(0, '@keyword.directive', { fg = '#af7b48' })
  vim.api.nvim_set_hl(0, '@lsp.type.builtin.zig', { fg = '#af7b48' })
  vim.api.nvim_set_hl(0, '@module', { fg = '#cdcdcd' })
  vim.api.nvim_set_hl(0, 'underworld_z.namespace', { link = '@module' })
  vim.api.nvim_set_hl(0, '@punctuation.delimiter', { link = '@operator' })
  vim.api.nvim_set_hl(0, '@punctuation.bracket', { fg = '#707f99' })
  vim.api.nvim_set_hl(0, '@punctuation.special', { fg = '#76eaff' })
  vim.api.nvim_set_hl(0, '@variable.parameter', { fg = '#cb9af7' })
  vim.api.nvim_set_hl(0, 'underworld_z.parameter', { fg = '#cb9af7' })
  vim.api.nvim_set_hl(0, '@lsp.type.enumMember', { fg = '#4fc1ff' })
  vim.api.nvim_set_hl(0, '@lsp.type.property', { fg = '#4fc1ff' })
  vim.api.nvim_set_hl(0, '@variable.member', { fg = '#4fc1ff' })
  vim.api.nvim_set_hl(0, '@property', { fg = '#4fc1ff' })
  vim.api.nvim_set_hl(0, 'underworld_z.property', { fg = '#4fc1ff' })
  vim.api.nvim_set_hl(0, '@lsp.type.errorTag', { fg = '#b4206a' })
  vim.api.nvim_set_hl(0, '@lsp.type.function', { fg = '#76eaff' })
  vim.api.nvim_set_hl(0, 'underworld_z.static_method', { fg = '#76eaff' })
  vim.api.nvim_set_hl(0, '@lsp.type.method', { fg = '#e0cf90' })
  vim.api.nvim_set_hl(0, '@function.method', { fg = '#e0cf90' })
  vim.api.nvim_set_hl(0, '@function.call', { fg = '#e0cf90' })
  vim.api.nvim_set_hl(0, '@lsp.type.string', { fg = '#c68f78' })
  vim.api.nvim_set_hl(0, '@lsp.type.number', { fg = '#ec4a90' })
  vim.api.nvim_set_hl(0, '@number', { fg = '#ec4a90' })
  vim.api.nvim_set_hl(0, '@lsp.type.variable', { fg = '#d491bd' })
  vim.api.nvim_set_hl(0, '@variable', { fg = '#d491bd' })
  vim.api.nvim_set_hl(0, '@lsp.type.interface', { fg = '#eab57a' })
  vim.api.nvim_set_hl(0, 'underworld_z.interface', { link = '@lsp.type.interface' })
  vim.api.nvim_set_hl(0, '@string', { fg = '#c68f78' })
  vim.api.nvim_set_hl(0, '@string.escape', { fg = '#ffe890' })
  vim.api.nvim_set_hl(0, '@character', { fg = '#c68f78' })
  vim.api.nvim_set_hl(0, 'Type', { fg = '#5ad1b3' })
  vim.api.nvim_set_hl(0, 'underworld_z.class', { link = 'Type' })
  vim.api.nvim_set_hl(0, 'underworld_z.struct', { fg = '#70ca70' })
  vim.api.nvim_set_hl(0, 'underworld_z.enum', { fg = '#e15ac1' })
  vim.api.nvim_set_hl(0, 'underworld_z.enumMember', { fg = '#cdcdcd' })
  vim.api.nvim_set_hl(0, '@attribute', { fg = '#5ad1b3' })
  vim.api.nvim_set_hl(0, '@constructor', { fg = '#5ad1b3' })
  vim.api.nvim_set_hl(0, '@operator', { fg = '#b9b9b9' })

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
      if token.type == 'property' then
        vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, 'underworld_z.property', {
          priority = 128, -- this puts it right at the top
        })
      end
      if token.type == 'method' and token.modifiers.static then
        vim.lsp.semantic_tokens.highlight_token(token, args.buf, args.data.client_id, 'underworld_z.static_method', {
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
    end,
  })
end

return M
