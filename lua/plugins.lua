return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	-- UX
	use("tpope/vim-surround")
	use({ "echasnovski/mini.nvim", branch = "stable" })
	use({ "kyazdani42/nvim-tree.lua", requires = { "kyazdani42/nvim-web-devicons" } })
	use({ "lewis6991/gitsigns.nvim", requires = { "nvim-lua/plenary.nvim" } })
	use({ "projekt0n/github-nvim-theme" })
	use("nvim-treesitter/nvim-treesitter")

	-- lsp-zero
	use({
		"VonHeikemen/lsp-zero.nvim",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" },
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },
			{ "saadparwaiz1/cmp_luasnip" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-nvim-lua" },

			-- Snippets
			{ "L3MON4D3/LuaSnip" },
		},
	})
end)
