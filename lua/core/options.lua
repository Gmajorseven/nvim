vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.number = true
vim.opt.relativenumber = true

--vim.cmd [[
  --highlight Normal guibg=none
  --highlight NonText guibg=none
  --highlight Normal ctermbg=none
  --highlight NonText ctermbg=none
--]]

-- Navigate vim panes with Ctrl + hjkl
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

-- Close vim panes with Ctrl + q
vim.keymap.set('n', '<c-d>', ':q<CR>')
