return {
  'vim-test/vim-test',
  dependencies = { 'preservim/vimux' },
  config = function()
    vim.keymap.set('n', '<leader>rt', ':TestNearest<CR>', { desc = 'Run test files in the nearest cursor' })
    vim.keymap.set('n', '<leader>rT', ':TestFile<CR>', { desc = 'Run current test file' })
    vim.keymap.set('n', '<leader>ra', ':TestSuite<CR>', { desc = 'Run test suite' })
    vim.keymap.set('n', '<leader>rl', ':TestLast<CR>', { desc = 'Run the last test' })
    vim.keymap.set('n', '<leader>rg', ':TestVisit<CR>', { desc = 'Visit the last run file test' })
    vim.cmd 'let test#strategy = "vimux"'
  end,
}
