local opt = vim.opt

vim.opt.termguicolors = true
vim.env.COLORTERM = "truecolor"

opt.number = true

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

opt.wrap = false

opt.ignorecase = true
opt.smartcase = true

opt.cursorline = true

opt.clipboard:append("unnamedplus")

opt.splitright = true
opt.splitbelow = true

opt.swapfile = false

opt.timeoutlen = 500

vim.cmd("let g:netrw_liststyle = 3")

opt.scrolloff = 8
opt.updatetime = 250
opt.signcolumn = "yes"
