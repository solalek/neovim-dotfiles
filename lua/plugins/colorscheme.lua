return { 
    {
        "rose-pine/neovim", 
        name = "rose-pine",
        config = function()
            vim.cmd([[colorscheme rose-pine]])
        end,
    },
    {
        "Shatur/neovim-ayu",
    },
    {
    	'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' }
	},
    {
        "shaunsingh/nord.nvim",
    },
    { 
        "EdenEast/nightfox.nvim" 
    },
    {
        'marko-cerovac/material.nvim'
    },
    {
        'projekt0n/github-nvim-theme'
    },
    {
        "bluz71/vim-moonfly-colors",
        name = "moonfly", 
        lazy = false, 
        priority = 1000
    }
}
