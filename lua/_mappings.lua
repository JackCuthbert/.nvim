function nmap(keys, command)
    vim.api.nvim_set_keymap('n', keys, command, {noremap = true, silent = true})
end

function vmap(keys, command)
    vim.api.nvim_set_keymap('v', keys, command, {noremap = true, silent = true})
end

-- Telescope
nmap('<leader>ff', '<CMD>Telescope find_files<CR>')
nmap('<leader>fg', '<CMD>Telescope live_grep<CR>')
nmap('<leader>fb', '<CMD>Telescope buffers<CR>')
nmap('<leader>fh', '<CMD>Telescope help_tags<CR>')

-- Easier window nav
nmap('<C-J>', '<C-W><C-J>')
nmap('<C-K>', '<C-W><C-K>')
nmap('<C-L>', '<C-W><C-L>')
nmap('<C-H>', '<C-W><C-H>')

-- Manage buffers (barbar)
nmap('<S-H>', ':BufferPrevious<CR>')
nmap('<S-L>', ':BufferNext<CR>')
nmap('<C-q>', ':BufferClose<CR>')

-- NvimTree
nmap('<C-N>', ':NvimTreeToggle<CR>')
nmap('<C-E>', ':NvimTreeFocus<CR>')
