require("neo-tree").setup({
	close_if_last_window = true,
	enable_git_status = true,
	enable_diagnostics = true,
	default_component_configs = {
		git_status = {
			symbols = {
				added = "✚",
				modified = "✹",
				deleted = "✖",
				renamed = "➜",
				untracked = "✱",
			}
		}
	},
	window = {
		position = "left",
		width = 25,
		mapping_options = {
			noremap = true,
			nowait = true,
		},
	}
})

vim.keymap.set('n', '<space>e', ':Neotree toggle<CR>', { noremap = true, silent = true})
