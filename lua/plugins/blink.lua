return {
	"saghen/blink.cmp",
	dependencies = "rafamadriz/friendly-snippets",
	version = "*",
	opts = {
		keymap = { preset = "super-tab" },
		sources = {
			default = { "snippets", "lsp", "path", "buffer" },
			providers = {
				snippets = {
					score_offset = 100,
				},
			},
		},
		-- Deixa o menu visualmente separado do fundo em qualquer tema
		completion = {
			menu = {
				border = "rounded",
			},
			documentation = {
				window = {
					border = "rounded",
				},
			},
		},
	},
}
