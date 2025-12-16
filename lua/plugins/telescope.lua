local telescope_builtin = require('telescope.builtin')
return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = { 'nvim-lua/plenary.nvim' },
  keys = {
    { '<C-f>', telescope_builtin.find_files, mode = 'n', desc = 'Find files' },
    { '<C-p>', telescope_builtin.live_grep,  mode = 'n', desc = 'Live grep' },
    { '<C-b>', telescope_builtin.buffers,    mode = 'n', desc = 'Buffers' },
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
          find_command = { "rg", "--files",
            -- "--hidden",
            -- "--no-ignore",
            "--glob", "!**/.git/*" },
          hidden = false,
        },
      },
    })
  end,
}
