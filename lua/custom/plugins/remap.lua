vim.keymap.set('n', '<leader>po', vim.cmd.Ex)

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

vim.keymap.set('x', '<leader>p', '"_dP')

vim.keymap.set('i', '<C-c>', '<Esc>')
vim.keymap.set('n', 'q', '<nop>')
vim.keymap.set('i', '<C-m>', '<nop>')
vim.keymap.set('n', '<C-s>', ':w<CR>')
vim.keymap.set('i', '<C-s>', '<ESC>:w<CR>')
vim.keymap.set('n', '<leader>e', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>E', vim.diagnostic.goto_prev)

vim.keymap.set('n', '<leader>y', '"+y')
vim.keymap.set('v', '<leader>y', '"+y')
vim.keymap.set('n', '<leader>Y', '"+Y')

vim.keymap.set('n', '<leader>s', ':%s/\\<<C-r><C-w>\\>/<C-r><C-r><C-w>/gI<Left><Left><Left>')
vim.keymap.set('n', '<C-b>', function()
  if vim.wo.relativenumber then
    vim.wo.relativenumber = false
  else
    vim.wo.relativenumber = true
  end
end)

local add_xml_summary = function()
  if vim.bo.filetype == 'cs' then
    vim.cmd [[execute "normal O/// <summary>\<CR>\<CR></summary>\<ESC>kA "]]
  elseif vim.bo.filetype == 'zig' then
    vim.cmd [[execute "normal O/// \<ESC>a"]]
  else
    vim.cmd [[ echo 'XML docs not configured for this filetype' ]]
  end
end

local add_xml_remarks = function()
  if vim.bo.filetype == 'cs' then
    vim.cmd [[execute "normal O/// <remarks>\<CR>\<CR></remarks>\<ESC>kA "]]
  else
    vim.cmd [[ echo 'XML docs not configured for this filetype' ]]
  end
end

local add_xml_inheritdoc = function()
  if vim.bo.filetype == 'cs' then
    vim.cmd [[execute "normal O/// <inheritdoc />"]]
  else
    vim.cmd [[ echo 'XML docs not configured for this filetype' ]]
  end
end

local add_xml_inheritdoc_cref = function()
  if vim.bo.filetype == 'cs' then
    vim.cmd [[execute "normal O/// <inheritdoc cref=\"\" />\<ESC>bhh"]]
  else
    vim.cmd [[ echo 'XML docs not configured for this filetype' ]]
  end
end

local add_xml_returns = function()
  if vim.bo.filetype == 'cs' then
    vim.cmd [[execute "normal O/// <returns></returns>\<ESC>bhh"]]
  else
    vim.cmd [[ echo 'XML docs not configured for this filetype' ]]
  end
end

local complete_xml_param = function()
  if vim.bo.filetype == 'cs' then
    vim.cmd [[execute "normal i></param>\<ESC>bhh"]]
  else
    vim.cmd [[ echo 'XML docs not configured for this filetype' ]]
  end
end

local complete_xml_typeparam = function()
  if vim.bo.filetype == 'cs' then
    vim.cmd [[execute "normal i></typeparam>\<ESC>bhh"]]
  else
    vim.cmd [[ echo 'XML docs not configured for this filetype' ]]
  end
end

local fix_usings = function()
  if vim.bo.filetype == 'cs' then
    vim.cmd [[ CsharpFixUsings ]]
  end
end

local fix_all = function()
  if vim.bo.filetype == 'cs' then
    vim.cmd [[ CsharpFixAll ]]
  end
end

vim.keymap.set('n', '<leader>xs', add_xml_summary)
vim.keymap.set('n', '<leader>xS', add_xml_remarks)
vim.keymap.set('n', '<leader>xi', add_xml_inheritdoc)
vim.keymap.set('n', '<leader>xI', add_xml_inheritdoc_cref)
vim.keymap.set('n', '<leader>xz', add_xml_returns)
vim.keymap.set('i', '<C-x><C-p>', complete_xml_param)
vim.keymap.set('i', '<C-x><C-t>', complete_xml_typeparam)
vim.keymap.set('i', '<C-r><C-e>', fix_usings)
vim.keymap.set('n', '<leader>re', fix_usings)
vim.keymap.set('n', '<leader>rw', fix_all)

return {}
