return {
	"nvim-tree/nvim-tree.lua",
	version = "*",
	lazy = false,
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("nvim-tree").setup({
			sort = {
				sorter = "case_sensitive",
			},
			view = {
				width = 30,
			},
			renderer = {
				group_empty = true,
			},
			filters = {
				dotfiles = false,
			},
			-- Ativa os diagnósticos do LSP (Avisos 'W', Erros 'E', etc.)
			diagnostics = {
				enable = true,
				show_on_dirs = true, -- Exibe os alertas nas pastas superiores
				icons = {
					hint = "H",
					info = "I",
					warning = "W",
					error = "E",
				},
			},
			-- Ativa a integração visual com o Git
			git = {
				enable = true,
				ignore = false,
			},
		})
	end,
}
