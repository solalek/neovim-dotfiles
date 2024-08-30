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
    }
}
