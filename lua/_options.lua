-- Update leader
vim.g.mapleader = ';' -- remap leader to ;

-- Setup globals
vim.g.airline_section_b = '' -- remove the VCS part
vim.g.airline_section_y = '' -- remove the filetype part
vim.g.airline_skip_empty_sections = 1 -- remove separators for empty sections
vim.g.cursorline_timeout = 200 -- reduce delay to show line
vim.g.nvim_tree_quit_on_open = 1 -- close nvimtree when opening files

-- General setup
vim.o.backupcopy = 'yes' -- support hot-reloading in parcel/webpack
vim.o.expandtab = true -- tabs to spaces
vim.o.list = true -- show tabs in a file
vim.o.mouse = 'a' -- Use the mouse for scroll/selection
vim.o.number = true -- show line numbers
vim.o.ruler = true -- show line ruler (line/char bottom right)
vim.o.scrolloff = 2 -- always show 2 lines at the end of the file
vim.o.shell = 'sh' -- use sh as default shell
vim.o.showcmd = true -- display commands in progress
vim.o.showmatch = true -- highlight matching [{()}]
vim.o.showmatch = true -- highlight matching [{()}]
vim.o.softtabstop = 2 -- number of spaces in tab when editing
vim.o.title = true -- update window titles
vim.o.wrap = false -- disable wrapping

-- Use natural split directions
vim.o.splitbelow = true
vim.o.splitright = true

-- Improve invisible character display
vim.o.listchars = 'tab:▸ ,extends:›,precedes:‹,nbsp:⎵'
