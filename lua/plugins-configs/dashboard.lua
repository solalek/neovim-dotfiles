require('dashboard').setup {
    theme = 'doom', -- theme for the dashboard
            config = {
                header = {
                    '', '', '', '',
                    '[[███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗]]',
                    '[[████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║]]',
                    '[[██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║]]',
                    '[[██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║]]',
                    '[[██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║]]',
                    '[[╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝]]',
                    '                                                          ',
                    '', 'Enjoy coding', '',
                    '                    ',
                },
                center = {
                    { icon = '  ', desc = 'New File                   ', action = 'enew', key = 'n' },
                    { icon = '  ', desc = 'Find File                  ', action = 'Telescope find_files', key = 'f' },
                    { icon = '󰙰  ', desc = 'Recent Files               ', action = 'Telescope oldfiles', key = 'r' },
                    { icon = '  ', desc = 'Shell config               ', action = 'e ~/.zshrc', key = 's'},
                    { icon = '  ', desc = 'Neovim config              ', action = 'cd ~/.config/nvim | e ~/.config/nvim/init.lua', key = 'e'},
                    { icon = '󰩈  ', desc = 'Quit                       ', action = 'qa', key = 'q' },
                },
                footer = {
                    '               ',
                    "Have a nice day",
                    '               '
                }
    }
}
