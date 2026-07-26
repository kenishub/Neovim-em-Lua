local opt = vim.opt

-- Opções de exibição e editor
opt.syntax = "on"
opt.textwidth = 80
opt.formatoptions:append("t")
opt.linebreak = true
opt.number = true
opt.relativenumber = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smarttab = true
opt.smartindent = true
opt.hidden = true
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.scrolloff = 8
opt.signcolumn = "yes"
opt.cmdheight = 2
opt.encoding = "utf-8"
opt.backup = false
opt.writebackup = false
opt.splitright = true
opt.splitbelow = true
opt.autoread = true
opt.mouse = "a"
opt.cursorline = true
opt.termguicolors = true
opt.swapfile = false

-- Otimizações para o Autocompletar (LSP / Blink)
opt.completeopt = { "menu", "menuone", "noselect" }
opt.updatetime = 250
opt.clipboard:append("unnamedplus")
