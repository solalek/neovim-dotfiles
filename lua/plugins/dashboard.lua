return {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
        require("plugins-configs.dashboard")
    end,
    dependencies = { {'nvim-tree/nvim-web-devicons'}}
}
