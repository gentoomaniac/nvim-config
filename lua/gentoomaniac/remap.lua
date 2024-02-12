vim.g.mapleader = " "
--vim.keymap.set("n", "<leader>ex", vim.cmd.Ex)
vim.api.nvim_set_keymap('n', '<C-e>', '<cmd>NvimTreeFocus<CR>', { noremap = true })

-- indent with < >
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", "<", ">gv")

vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("n", "Q", "<nop>")

--vim.keymap.set("n", "<C-h>", "<C-w><C-h>")
--vim.keymap.set("n", "<C-j>", "<C-w><C-j>")
--vim.keymap.set("n", "<C-k>", "<C-w><C-k>")
--vim.keymap.set("n", "<C-l>", "<C-w><C-l>")

-- yank into system clipboard 
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- jumps
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

