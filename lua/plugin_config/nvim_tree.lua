local present, nvim_tree = pcall(require, "nvim-tree")
if present then
	nvim_tree.setup({
		view = { width = 30, side = "left", hide_root_folder = true },
		disable_netrw = true,
		hijack_cursor = true,
		update_cwd = true,
		hijack_directories = { auto_open = false },
		actions = {
			open_file = {
				quit_on_open = true,
			},
		},
	})
	vim.g.nvim_tree_indent_markers = 1
end
