local function map(mode, lhs, rhs, opts)
    opts = opts or { noremap = true, silent = true }
    vim.api.nvim_set_keymap(mode, lhs, rhs, opts)
end

map('n', '<M-s>', ':w<CR>') -- Save file
map('n', '<M-q>', ':q<CR>') -- Quit Neovim
map('n', '<C-q>', ':qa<CR>') -- Quit Neovim

-- Visual mode mappings
map('v', '<C-c>', '"+y') -- Copy selected text to clipboard
map('v', '<C-x>', '"+d') -- Cut selected text to clipboard

-- Insert mode mappings
map('i', 'jk', '<ESC>') -- Exit insert mode with 'jk'
map('i', 'kj', '<ESC>') -- Exit insert mode with 'kj'

-- Window navigation
map('n', '<M-h>', '<C-w>h') -- Move to the left window
map('n', '<M-j>', '<C-w>j') -- Move to the bottom window
map('n', '<M-k>', '<C-w>k') -- Move to the top window
map('n', '<M-l>', '<C-w>l') -- Move to the right window

-- Window resizing
map('n', '<C-M-k>', ':resize +5<CR>')
map('n', '<C-M-j>', ':resize -5<CR>')
map('n', '<C-M-h>', ':vertical resize +5<CR>')
map('n', '<C-M-l>', ':vertical resize -5<CR>')

-- Instert Mode Navigation
map('i', '<C-j>', '<Down>', { noremap = true, silent = true })
map('i', '<C-k>', '<Up>', { noremap = true, silent = true })
map('i', '<C-l>', '<Right>', { noremap = true, silent = true })
map('i', '<C-h>', '<Left>', { noremap = true, silent = true })
