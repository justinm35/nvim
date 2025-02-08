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
												icon_hl = 'Accounting',
                        desc = "Clio Accounting Repo",
                        action = function()
                            vim.cmd("cd ~/clio/accounting | Telescope find_files")
                        end,
                    },
                    {
                        icon = " ",
												icon_hl = 'Manage',
                        desc = "Clio Manage Repo",
                        action = function()
                            vim.cmd("cd ~/clio/themis | Telescope find_files")
                        end,
                    },
                },
            },

        }
    end,
}
