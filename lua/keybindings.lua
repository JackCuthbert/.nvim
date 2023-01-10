function nmap(keys, command)
	vim.api.nvim_set_keymap("n", keys, command, { noremap = true, silent = true })
end

function vmap(keys, command)
	vim.api.nvim_set_keymap("v", keys, command, { noremap = true, silent = true })
end

-- Easier window nav
nmap("<C-J>", "<C-W><C-J>")
nmap("<C-K>", "<C-W><C-K>")
nmap("<C-L>", "<C-W><C-L>")
nmap("<C-H>", "<C-W><C-H>")

-- NvimTree
nmap("<C-N>", ":NvimTreeToggle<CR>")
nmap("<C-E>", ":NvimTreeFocus<CR>")
