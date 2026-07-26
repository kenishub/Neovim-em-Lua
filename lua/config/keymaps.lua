local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Navegação entre janelas
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- Comandos gerais
map("n", "<leader>r", ":restart<CR>", opts)
map("n", "<leader>i", ":Lazy sync<CR>", opts)
map("n", "<C-s>", ":w<CR>", opts)
map("n", "<C-q>", ":wq<CR>", opts)
map("n", "<C-x>", ":bd<CR>", opts)
map("n", "<C-z>", "u", opts)
map("n", "<C-r>", "<C-r>", opts)

-- Duplicar linha
map("n", "<leader>d", function()
	local count = vim.v.count1
	local line = vim.api.nvim_get_current_line()
	local current_row = vim.api.nvim_win_get_cursor(0)[1]
	local lines = {}
	for _ = 1, count do
		table.insert(lines, line)
	end
	vim.api.nvim_buf_set_lines(0, current_row, current_row, false, lines)
end, opts)

map("i", "<C-r>", "<C-r>", opts)

-- Comandos adicionais
map("n", "oo", "A<CR>", opts)
map("n", "<leader>nn", ":tabe<CR>", opts)

-- Splits
map("n", "th", ":split<CR>", opts)
map("n", "tv", ":vsplit<CR>", opts)
map("n", "tt", ":q<CR>", opts)

-- Navegação de Buffers
map("n", "<C-n>", ":bnext<CR>", opts)
map("n", "<C-p>", ":bprevious<CR>", opts)

-- Temas
map("n", "<leader>1", ":colorscheme kanagawa<CR>", opts)
map("n", "<leader>2", ":colorscheme catppuccin<CR>", opts)
map("n", "<leader>3", ":colorscheme tokyonight<CR>", opts)
map("n", "<leader>4", ":colorscheme nightfox<CR>", opts)
map("n", "<leader>5", ":colorscheme gruvbox<CR>", opts)

-- Telescope
map("n", "<leader>ff", ":Telescope find_files<CR>", opts)
map("n", "<leader>fg", ":Telescope git_files<CR>", opts)
map("n", "<leader>fb", ":Telescope buffers<CR>", opts)
map("n", "<leader>fl", ":Telescope current_buffer_fuzzy_find<CR>", opts)
map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", opts)

-- lualine
vim.keymap.set("n", "<leader>ln", function()
	require("lualine.utils.notices").show_notices()
end, { desc = "Mostrar avisos do Lualine" })

-- Barra Lateral (NvimTree)
map("n", "<C-e>", ":NvimTreeToggle<CR>", opts)
