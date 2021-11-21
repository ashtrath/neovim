local nvim = vim.g

nvim.dashboard_custom_header = {
    ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
    ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
    ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
    ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
    ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
    ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
}

nvim.dashboard_default_executive = 'telescope'

nvim.dashboard_custom_section = {
    a = {description = {'  > Browse File         '}, command = 'cd ~/ | Telescope file_browser'},
    b = {description = {'  > Find File           '}, command = 'Telescope find_files'},
    b = {description = {'  > Recents             '}, command = 'Telescope oldfiles'},
    c = {description = {'  > New File            '}, command = ':enew <CR>'},
    e = {description = {'  > Config              '}, command = ':cd ~/.config/nvim | :e init.vim'},
}

-- vim.g.dashboard_session_directory = '~/.cache/nvim/session'
nvim.dashboard_custom_footer = {'  '}
