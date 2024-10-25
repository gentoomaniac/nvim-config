-- alt is the new leader
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ex", vim.cmd.Ex)
--vim.api.nvim_set_keymap('n', '<C-e>', '<cmd>NvimTreeFocus<CR>', { noremap = true })

-- indent with < >
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- ctrl+c as additional Esc
vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("n", "Q", "<nop>")

-- move between splits
vim.keymap.set("n", "<C-h>", "<C-w><C-h>")
vim.keymap.set("n", "<C-j>", "<C-w><C-j>")
vim.keymap.set("n", "<C-k>", "<C-w><C-k>")
vim.keymap.set("n", "<C-l>", "<C-w><C-l>")

-- move block up/duwn
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- yank into system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- jumps
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- autoformat file
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)
vim.keymap.set("n", "<leader>r", "<cmd>retab<CR>")

-- source file
--[[
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
]]--

-- make file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- lsp binds
vim.keymap.set('n','gD','<cmd>lua vim.lsp.buf.declaration()<CR>')
vim.keymap.set('n','gd','<cmd>lua vim.lsp.buf.definition()<CR>')
vim.keymap.set('n','K','<cmd>lua vim.lsp.buf.hover()<CR>')
vim.keymap.set('n','gr','<cmd>lua vim.lsp.buf.references()<CR>')
vim.keymap.set('n','gs','<cmd>lua vim.lsp.buf.signature_help()<CR>')
vim.keymap.set('n','gi','<cmd>lua vim.lsp.buf.implementation()<CR>')
vim.keymap.set('n','gt','<cmd>lua vim.lsp.buf.type_definition()<CR>')
vim.keymap.set('n','<leader>gw','<cmd>lua vim.lsp.buf.document_symbol()<CR>')
vim.keymap.set('n','<leader>gW','<cmd>lua vim.lsp.buf.workspace_symbol()<CR>')
vim.keymap.set('n','<leader>ah','<cmd>lua vim.lsp.buf.hover()<CR>')
vim.keymap.set('n','<leader>af','<cmd>lua vim.lsp.buf.code_action()<CR>')
vim.keymap.set('n','<leader>ee','<cmd>lua vim.lsp.util.show_line_diagnostics()<CR>')
vim.keymap.set('n','<leader>ar','<cmd>lua vim.lsp.buf.rename()<CR>')
vim.keymap.set('n','<leader>=', '<cmd>lua vim.lsp.buf.formatting()<CR>')
vim.keymap.set('n','<leader>ai','<cmd>lua vim.lsp.buf.incoming_calls()<CR>')
vim.keymap.set('n','<leader>ao','<cmd>lua vim.lsp.buf.outgoing_calls()<CR>')

-- buffers
vim.keymap.set('n','<leader>n','<cmd>bnext<CR>')
vim.keymap.set('n','<leader>p','<cmd>bprev<CR>')

-- nvimtree toggle
vim.keymap.set('n', "<leader>t", function()
    local api = require("nvim-tree.api")
    api.tree.toggle()
end)

