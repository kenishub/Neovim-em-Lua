vim.api.nvim_create_autocmd("ColorScheme", {
	pattern = "*",
	callback = function()
		vim.api.nvim_set_hl(0, "BlinkCmpMenu", { bg = "#1e1e2e", fg = "#cdd6f4" })
		vim.api.nvim_set_hl(0, "BlinkCmpMenuBorder", { bg = "#1e1e2e", fg = "#b4befe" })
		vim.api.nvim_set_hl(0, "BlinkCmpMenuSelection", { bg = "#45475a", fg = "#cdd6f4", bold = true })
		vim.api.nvim_set_hl(0, "BlinkCmpDoc", { bg = "#181825", fg = "#cdd6f4" })
		vim.api.nvim_set_hl(0, "BlinkCmpDocBorder", { bg = "#181825", fg = "#b4befe" })
		vim.api.nvim_set_hl(0, "BlinkCmpLabelMatch", { fg = "#cba6f7", bold = true })
	end,
})

return {
	{
		"rebelot/kanagawa.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			pcall(require, "kanagawa-config")
		end,
	},
	{ "catppuccin/nvim", name = "catppuccin" },
	{ "folke/tokyonight.nvim" },
	{ "EdenEast/nightfox.nvim" },
	{ "ellisonleao/gruvbox.nvim" },
}
