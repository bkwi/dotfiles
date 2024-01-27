vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set expandtab")
vim.cmd("set number")
vim.g.mapleader = " "



vim.keymap.set("n", "<Right>", "<cmd>:vertical resize +5<cr>", {})
vim.keymap.set("n", "<Left>", "<cmd>:vertical resize -5<cr>", {})


vim.keymap.set("n", "gl", "<cmd>lua vim.diagnostic.open_float({ border = 'rounded' })<CR>", {})

vim.diagnostic.config({
	virtual_text = false,
})

vim.cmd("set background=dark")
-- vim.cmd.colorscheme("gruvbox")
