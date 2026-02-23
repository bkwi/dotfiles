return {
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,

        -- config = function()
        -- 	vim.cmd.colorscheme("gruvbox")
        -- end,
    },
    {
        "rose-pine/neovim",
        priority = 1001,

        config = function()
            vim.o.background = "dark"
            -- vim.cmd.colorscheme("rose-pine")
        end,
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
        -- config = function()
        -- 	vim.o.background = "dark"
        -- 	vim.o.background = "light"
        -- 	vim.g.gruvbox_material_background = "hard"
        -- 	vim.cmd.colorscheme("gruvbox-material")
        -- end,
    },
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    {
        'sainnhe/sonokai',
        lazy = false,
        priority = 1000,
        config = function()
            -- Optionally configure and load the colorscheme
            -- directly inside the plugin declaration.
            -- vim.g.sonokai_enable_italic = true
            -- vim.cmd.colorscheme('sonokai')
        end
    },
    {
        "vague-theme/vague.nvim",
        lazy = false,    -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other plugins
        config = function()
            -- NOTE: you do not need to call setup if you don't want to.
            require("vague").setup({
                -- optional configuration here
            })
            vim.cmd("colorscheme vague")
        end
    },
    {
        "thesimonho/kanagawa-paper.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
        init = function()
            -- vim.cmd.colorscheme("kanagawa-paper")
            -- vim.cmd.colorscheme("kanagawa-paper-ink")
        end
    },
    {
        "rebelot/kanagawa.nvim",
        --  lazy = false,
        --  priority = 1000,
        --  opts = {},
        init = function()
            -- vim.cmd.colorscheme("kanagawa")
            -- vim.cmd.colorscheme("kanagawa-paper-ink")
        end
    },
}
