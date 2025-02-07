vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set expandtab")
-- vim.cmd("set number")
vim.g.mapleader = " "

vim.keymap.set("n", "<C-h>", "<C-w>h", {})
vim.keymap.set("n", "<C-j>", "<C-w>j", {})
vim.keymap.set("n", "<C-k>", "<C-w>k", {})
vim.keymap.set("n", "<C-l>", "<C-w>l", {})

vim.keymap.set("n", "<Right>", "<cmd>:vertical resize +5<cr>", {})
vim.keymap.set("n", "<Left>", "<cmd>:vertical resize -5<cr>", {})

vim.keymap.set("n", "gl", "<cmd>lua vim.diagnostic.open_float({ border = 'rounded' })<CR>", {})

vim.keymap.set("n", ",h", "<cmd>split<CR>", {})
vim.keymap.set("n", ",v", "<cmd>vsplit<CR>", {})

vim.keymap.set("n", ",k", "<cmd>:q!<CR>", {})



vim.diagnostic.config({
    virtual_text = false,
})

vim.cmd("set background=dark")

local options = {
    backup = false,
    undofile = true,
    swapfile = false,
    wrap = false,
    number = true,
    -- relativenumber = true,
    -- smartindent = true,
    cursorline = true,
    hlsearch = true,
    ignorecase = true,
    -- termguicolors = true,
}

for k, v in pairs(options) do
    vim.opt[k] = v
end
