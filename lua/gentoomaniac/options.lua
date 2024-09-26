vim.opt.hlsearch = true
vim.opt.list = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.title = true
vim.opt.colorcolumn = "120"
-- vim.opt.listchars = { eol = "↵", trail = "~", tab = ">~", space = "␣" }
vim.opt.listchars = { eol = "↵", trail = "␣", tab = "» ", space = "·" }
vim.opt.list = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.config/nvim/undodir"
vim.opt.undofile = true

vim.opt.inccommand = "nosplit"

-- trim trailing whitespaces on save
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
    pattern = { "*" },
    command = [[%s/\s\+$//e]],
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "go",
	callback = function()
        vim.opt.expandtab = false
	end
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "yaml",
	callback = function()
		vim.opt_local.shiftwidth = 2
		vim.opt_local.tabstop = 2
	end
})

