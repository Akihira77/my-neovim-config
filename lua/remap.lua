vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

vim.keymap.set('n', '<leader>ee', 'oif err != nil {<CR>}<Esc>Oreturn err<Esc>')

vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')
vim.keymap.set('n', 'J', 'mzJ`z')

vim.keymap.set('n', '<leader>pv', vim.cmd.Ex, { desc = 'Go back to netrw' })

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move the lines to UP' })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Moves the lines to DOWN' })

-- greatest remap ever
vim.keymap.set('x', '<leader>p', [["_dP]], { desc = 'Paste lines without affecting current register' })

vim.keymap.set('n', '<leader>st', ':TodoTelescope<CR>', { desc = 'Listing TODO comments with Telescope', noremap = true, silent = true })

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Buka quickfix list untuk konflik
vim.keymap.set('n', '<leader>gc', '<cmd>GitConflictListQf<CR>', opts)

-- Pilih OURS
vim.keymap.set('n', '<leader>go', '<cmd>GitConflictChooseOurs<CR>', opts)

-- Pilih THEIRS
vim.keymap.set('n', '<leader>gt', '<cmd>GitConflictChooseTheirs<CR>', opts)

-- Pilih NONE (hapus semua dan gabungkan manual)
vim.keymap.set('n', '<leader>gn', '<cmd>GitConflictChooseNone<CR>', opts)

-- Pilih BOTH (gabung ours dan theirs)
vim.keymap.set('n', '<leader>gb', '<cmd>GitConflictChooseBoth<CR>', opts)

-- Pindah ke konflik selanjutnya/sebelumnya
vim.keymap.set('n', ']x', '<cmd>GitConflictNextConflict<CR>', opts)
vim.keymap.set('n', '[x', '<cmd>GitConflictPrevConflict<CR>', opts)
