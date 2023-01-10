local present, lsp_zero = pcall(require, "lsp-zero")
if present then
	lsp_zero.preset("recommended")
	lsp_zero.setup()
end
