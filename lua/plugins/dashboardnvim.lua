return {
  'nvimdev/dashboard-nvim',
  config = function()
    require('dashboard').setup {
      theme = 'doom',
      config = {
        header = {
          '', -- Empty strings for spacing
          '',
          '',
          '',
          '',
          '',
          '',
          '',
          '',
          '',
          '',
          '',
          '',
          ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
          ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
          ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
          ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
          ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
          ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
          '',
          '',
          '',
          '',
          '',
        },
        center = {
          {
            icon = " ",
            icon_hl = 'OrgAdmin',
            desc = "All Gravy Web App",
            action = function()
              vim.cmd("cd ~/all-gravy/org-admin| Telescope find_files")
            end,
          },
          {
            icon = " ",
            icon_hl = 'API',
            desc = "All Gravy API",
            action = function()
              vim.cmd("cd ~/all-gravy/api| Telescope find_files")
            end,
          },
          {
            icon = " ",
            icon_hl = 'Native',
            desc = "All Gravy Mobile App",
            action = function()
              vim.cmd("cd ~/all-gravy/native| Telescope find_files")
            end,
          },
        },
      },

    }
  end,
}
