-- Gitsigns
local present, gitsigns = pcall(require, 'gitsigns')
if present then
    gitsigns.setup {
        signs = {
            add = {hl = 'DiffAdd', text = '│', numhl = 'GitSignsAddNr'},
            change = {hl = 'DiffChange', text = '│', numhl = 'GitSignsChangeNr'},
            delete = {hl = 'DiffDelete', text = '│', numhl = 'GitSignsDeleteNr'},
            topdelete = {hl = 'DiffDelete', text = '│', numhl = 'GitSignsDeleteNr'},
            changedelete = {hl = 'DiffChangeDelete', text = '│', numhl = 'GitSignsChangeNr'}
        }
    }
end

-- Telescope
local present, telescope = pcall(require, 'telescope')
if present then
    telescope.setup {
        defaults = {
            file_ignore_patterns = {'%.jpg', '%.jpeg', '%.png', '%.otf', '%.ttf', 'node_modules', '.git'},
            prompt_prefix = '   ',
            selection_caret = '  ',
            entry_prefix = '  ',
            layout_strategy = 'flex',
            layout_config = {horizontal = {preview_width = 0.6}},
            border = {},
            -- borderchars = {"─", "│", "─", "│", "┌", "┐", "┘", "└"}
            borderchars = {'─', '│', '─', '│', '╭', '╮', '╯', '╰'}
        }
    }
end

-- Nvim tree
local present, nvim_tree = pcall(require, 'nvim-tree')
if present then
    nvim_tree.setup {
        view = {width = 30, side = 'left', hide_root_folder = true},
        disable_netrw = true,
        hijack_cursor = true,
        update_cwd = true,
        hijack_directories = {auto_open = false},
        actions = {
            open_file = {
                quit_on_open = true
            }
        }
    }
    vim.g.nvim_tree_indent_markers = 1
end

-- GitHub theme
local present, github_theme = pcall(require, 'github-theme')
if present then
    github_theme.setup({
        theme_style = "dark_default",
        comment_style = "NONE",
        dark_sidebar = false
    })
end

-- lspkind (LSP/cmp icons)
local present, lspkind = pcall(require, 'lspkind')
if present then
    lspkind.init {}
end

-- Statusline
local present, statusline = pcall(require, 'mini.statusline')
if present then
    statusline.setup {}
end

-- Pairs
local present, pairs = pcall(require, 'mini.pairs')
if present then
    pairs.setup {}
end

-- Sessions
local present, sessions = pcall(require, 'mini.sessions')
if present then
    sessions.setup {
        directory = '~/.local/share/nvim/session',
    }
end

-- Start screen
local present, starter = pcall(require, 'mini.starter')
if present then
    starter.setup {}
end

-- Comment
local present, comment = pcall(require, 'mini.comment')
if present then
    comment.setup {}
end
