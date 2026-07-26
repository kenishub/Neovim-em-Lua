return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		require("bufferline").setup({
			options = {
				mode = "buffers",
				diagnostics = "nvim_lsp",
				separator_style = "slant",
				-- Adiciona o ícone do Arch Linux no canto esquerdo superior!
				custom_header = { " 󰣇 ", "Bufferline" },
				offsets = {
					{
						filetype = "NvimTree",
						text = "I USE NEOVIM BTW ",
						text_align = "center",
						separator = true,
					},
				},
			},
		})
	end,
}
