return {
  'tpope/vim-fugitive',
  keys = {
    { '<leader>gs', '<cmd>Git<CR>', desc = 'Open Status' },
    { '<leader>gcc', '<cmd>Git commit<CR>', { noremap = true, silent = false }, desc = 'Create new commit' },
    { '<leader>gca', '<cmd>Git add . | Git commit -a<CR>', { noremap = true, silent = false }, desc = 'Create new commit (add all)' },
    { '<leader>gp', '<cmd>Git push -u origin<CR>', { noremap = true }, desc = 'Push commit to origin' },
    {
      '<leader>gac',
      function()
        local file = vim.fn.expand '%'
        if file == '' or vim.fn.filereadable(file) == 0 then
          print 'No file to track or file does not exist!'
          return
        end
        if vim.bo.modified then
          vim.cmd 'write'
          print 'Saved file'
        end
        local result = vim.fn.system('git add ' .. vim.fn.shellescape(file))
        if vim.v.shell_error ~= 0 then
          print('Error adding file: ' .. result)
          return
        end
      end,
      { desc = 'Track current file' },
    },
  },
}
