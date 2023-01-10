local present, github_theme = pcall(require, "github-theme")
if present then
	github_theme.setup({
		theme_style = "light_default",
	})
end
