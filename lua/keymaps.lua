-- [[ Basic Keymaps ]]

-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Forward and backward
vim.keymap.set('n', 'gb', '<C-o>', { desc = 'Go Back' })
vim.keymap.set('n', 'gf', '<C-i>', { desc = 'Go Forward' })

-- Vertical and hortizontal splits
vim.keymap.set('n', '<leader>v', ':vsplit<CR>', { desc = 'Vertical split' })
vim.keymap.set('n', '<leader>s', ':split<CR>', { desc = 'Horizontal split' })

-- Split resizing with arrow keys
vim.keymap.set('n', '<Up>', ':resize +2<CR>', { desc = 'Increase window height' })
vim.keymap.set('n', '<Down>', ':resize -2<CR>', { desc = 'Decrease window height' })
vim.keymap.set('n', '<Left>', ':vertical resize -2<CR>', { desc = 'Decrease window width' })
vim.keymap.set('n', '<Right>', ':vertical resize +2<CR>', { desc = 'Increase window width' })

-- Split and open the builtin terminal
vim.keymap.set('n', '<leader>t', ':split | terminal<CR>', { desc = 'Terminal (horizontal split)' })
vim.keymap.set('n', '<leader>vt', ':vsplit | terminal<CR>', { desc = 'Terminal (vertical split)' })

-- Highlight when yanking text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })
