return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "cssls", "html", "jsonls", "ts_ls", "clangd", "basedpyright" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			-- Configuração para Neovim 0.11+ (Ativar todos os servidores)
			local servers = { "lua_ls", "cssls", "html", "jsonls", "ts_ls", "clangd", "basedpyright" }
			for _, server in ipairs(servers) do
				vim.lsp.config(server, {})
				vim.lsp.enable(server)
			end

			-- Keymaps do LSP Nativo
			local map = vim.keymap.set
			local opts = { noremap = true, silent = true }

			map("n", "K", vim.lsp.buf.hover, opts)
			map("n", "gd", vim.lsp.buf.definition, opts)
			map("n", "gy", vim.lsp.buf.type_definition, opts)
			map("n", "gi", vim.lsp.buf.implementation, opts)
			map("n", "gr", vim.lsp.buf.references, opts)
			map("n", "<leader>rn", vim.lsp.buf.rename, opts)
			map("n", "<leader>f", function()
				vim.lsp.buf.format({ async = true })
			end, opts)

			-- Comando para exibir os servidores ativos no buffer
			vim.api.nvim_create_user_command("Lsp", function()
				local clients = vim.lsp.get_clients({ bufnr = 0 })
				if #clients == 0 then
					print("Nenhum servidor LSP ativo neste buffer.")
					return
				end

				local names = {}
				for _, client in ipairs(clients) do
					table.insert(names, client.name)
				end
				print("LSP Ativo(s): " .. table.concat(names, ", "))
			end, {})
		end,
	},
}
