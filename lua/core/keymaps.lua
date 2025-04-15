local opts = { noremap = true, silent = true }
local keymap = vim.keymap.set

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Split window
keymap("n", "ss", ":split<CR><C-w>w", opts)
keymap("n", "sv", ":vsplit<CR><C-w>w", opts)

-- Neo-tree
keymap('n', '<C-n>', ':Neotree filesystem reveal left<CR>', {})

-- Telescope
--local builtin = require('telescope.builtin')
--keymap('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
--keymap('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
--keymap('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
--keymap('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

