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
                    { icon = '  ', desc = 'Projects                   ', action = 'cd ~/projects | Telescope find_files', key = 'p'},
                    { icon = '  ', desc = 'Shell config               ', action = 'e ~/.zshrc', key = 's'},
                    { icon = '  ', desc = 'kitty config               ', action = 'e ~/.config/kitty/kitty.conf | cd ~/.config/kitty/', key = 't'},
                    { icon = '  ', desc = 'Hyprland config            ', action = 'cd ~/Hyprland/ | e ~/Hyprland/hypr/hyprland.conf', key = 'h' },
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
