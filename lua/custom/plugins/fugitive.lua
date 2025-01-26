return {
  'tpope/vim-fugitive',
  keys = {
    { '<leader>gs', '<cmd>Git<CR>', desc = 'Open Status' },
    { '<leader>gb', '<cmd>Git branch<CR>', desc = 'Open branches' },
    { '<leader>gcc', '<cmd>Git commit<CR>', { noremap = true, silent = false }, desc = 'Create new commit' },
    { '<leader>gca', '<cmd>Git add . | Git commit -a<CR>', { noremap = true, silent = false }, desc = 'Create new commit (add all)' },
  },
}
