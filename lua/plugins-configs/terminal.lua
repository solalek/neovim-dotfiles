local function map(mode, lhs, rhs, opts)
    opts = opts or { noremap = true, silent = true }
    vim.api.nvim_set_keymap(mode, lhs, rhs, opts)
end


require("toggleterm").setup{

}

map(
    'n', '<space>t', ':ToggleTerm size=10 direction=horizontal<CR>', 
    { noremap = true, silent = true }
)
function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<esc>', [[<Cmd>q<CR>]], opts)
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<M-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<M-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<M-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<M-l>', [[<Cmd>wincmd l<CR>]], opts)
  vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
  vim.keymap.set('t', '<C-M-k>', [[<Cmd>resize +5<CR>]], { noremap = true, silent = true, buffer = 0 })
  vim.keymap.set('t', '<C-M-j>', [[<Cmd>resize -5<CR>]], { noremap = true, silent = true, buffer = 0 })
  vim.keymap.set('t', '<C-M-h>', [[<Cmd>vertical resize +5<CR>]], { noremap = true, silent = true, buffer = 0 })
  vim.keymap.set('t', '<C-M-l>', [[<Cmd>vertical resize -5<CR>]], { noremap = true, silent = true, buffer = 0 })
  vim.keymap.set('t', '<C-q>', [[<Cmd>qa<CR>]], { noremap = true, silent = true, buffer = 0 })
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')


