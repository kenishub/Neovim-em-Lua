return {
    'brenoprata10/nvim-highlight-colors',
    event = { 'BufReadPost', 'BufNewFile' },
    opts = {
        render = 'virtual', -- Desenha o ícone ao lado do texto
        virtual_symbol = '■', -- O quadrado estilo VSCode
        enable_named_colors = true, -- Suporta "white", "black", etc.
    }
}
