return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = { 'nvim-lua/plenary.nvim' },
  keys = {
    { '<C-f>',      function() require('telescope.builtin').find_files() end,                                      mode = 'n', desc = 'Find files' },
    { '<C-p>',      function() require('telescope.builtin').live_grep() end,                                       mode = 'n', desc = 'Live grep' },
    { '<leader>ll', function() require('telescope.builtin').grep_string({ search = vim.fn.input("grep > ") }) end, mode = 'n', desc = 'Grep string' },
  },
  config = function()
    require('telescope').setup({
      defaults = {
        theme = "ivy",
        layout_strategy = "horizontal",
        sorting_strategy = "descending",
      },
      pickers = {
        find_files = {
          find_command = { 'rg', '--files', '--hidden', '--glob', '!**/.git/*' },
          hidden = true,
        },
      },
    })
  end,
}
