local builtin = require('telescope.builtin')
vim.keymap.set('n', '<space>/f', builtin.find_files, {})
vim.keymap.set('n', '<space>/g', builtin.git_files, {})
vim.keymap.set('n', '<space>/s', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

require('telescope').setup({
  defaults = {
    mappings = {
      i = {  -- Insert mode mappings
        ["<C-j>"] = require('telescope.actions').move_selection_next,
        ["<C-k>"] = require('telescope.actions').move_selection_previous,
        ["<ESC>"] = require('telescope.actions').close,
      },
    },
  },
})
