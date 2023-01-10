local present, statusline = pcall(require, "mini.statusline")
if present then
	statusline.setup({})
end

local present, comment = pcall(require, "mini.comment")
if present then
	comment.setup({})
end

local present, pairs = pcall(require, "mini.pairs")
if present then
	pairs.setup({})
end
