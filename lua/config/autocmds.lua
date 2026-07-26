-- Função para destacar a palavra sob o cursor
local function highlight_word_under_cursor()
	local col = vim.fn.col(".")
	local line = vim.fn.getline(".")
	local char = line:sub(col, col)

	if not char:match("[%s%p]") and char ~= "" then
		local word = vim.fn.expand("<cword>")
		vim.cmd("match Search /\\<" .. word .. "\\>/")
	else
		vim.cmd("match none")
	end
end

-- Formata o arquivo automaticamente antes de salvar
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*",
	callback = function()
		-- Executa a formatação síncrona do LSP ativo no arquivo
		vim.lsp.buf.format({ async = false })
	end,
})

-- Abre a janela flutuante com a mensagem de erro ao pausar o cursor
vim.api.nvim_create_autocmd("CursorHold", {
	callback = function()
		vim.diagnostic.open_float(nil, { focusable = false })
	end,
})

-- Destaque automático ao pausar o cursor
vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
	callback = highlight_word_under_cursor,
})
