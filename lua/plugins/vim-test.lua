return {
  'vim-test/vim-test',
  dependencies = { 'preservim/vimux' },
  config = function()
    vim.keymap.set('n', '<leader>t', ':TestNearest<CR>', { desc = 'Run test files in the nearest cursor' })
    vim.keymap.set('n', '<leader>T', ':TestFile<CR>', { desc = 'Run current test file' })
    vim.keymap.set('n', '<leader>a', ':TestSuite<CR>', { desc = 'Run test suite' })
    vim.keymap.set('n', '<leader>l', ':TestLast<CR>', { desc = 'Run the last test' })
    vim.keymap.set('n', '<leader>g', ':TestVisit<CR>', { desc = 'Visit the last run file test' })
    vim.cmd 'let test#strategy = "vimux"'
  end,
}
