return {
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,

		-- config = function()
		-- 	vim.cmd.colorscheme("gruvbox")
		-- end,
	},
	{
		"sainnhe/everforest",
		priority = 1000,

		-- config = function()
		-- 	vim.o.background = "dark"
		-- 	vim.g.everforest_background = "hard"
		-- 	vim.cmd.colorscheme("everforest")
		-- end,
	},
	{
		"sainnhe/gruvbox-material",
		config = function()
			vim.o.background = "dark"
			vim.g.gruvbox_material_background = "hard"
			vim.cmd.colorscheme("gruvbox-material")
		end,
	},
}
