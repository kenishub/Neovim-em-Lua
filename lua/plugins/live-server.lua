return {
    'barrett-ruth/live-server.nvim',
    cmd = { 'LiveServerStart', 'LiveServerStop', 'LiveServerToggle' },
    keys = {
        { '<leader>ls', '<cmd>LiveServerStart<cr>', desc = 'Iniciar Live Server' },
        { '<leader>lx', '<cmd>LiveServerStop<cr>',  desc = 'Parar Live Server' },
    },
    config = true,
}
