vim.opt.hlsearch = true
vim.opt.list = true
vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.title = true
vim.opt.colorcolumn = "120"
--vim.opt.listchars = { eol = "↵", trail = "~", tab = ">", nbsp = "␣" }

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.inccommand = "nosplit"
