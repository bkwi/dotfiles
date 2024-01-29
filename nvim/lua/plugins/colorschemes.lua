return {
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,

		config = function()
			vim.cmd.colorscheme("gruvbox")
		end,
	},
	{
		"sainnhe/everforest",
		priority = 1000,

		-- config = function()
		--     vim.o.background = "dark"
		--     vim.cmd.colorscheme("everforest")
		--     vim.g.everforest_background = "hard"
		-- end,
	},
}
