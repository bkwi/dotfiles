return {
    {
        "williamboman/mason.nvim",

        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",

        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "pyright",
                    "ts_ls",
                    "gopls",
                    "terraformls",
                },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",

        config = function()
            -- Neovim 0.11+ LSP API (nvim-lspconfig v3 deprecates require("lspconfig"))
            vim.lsp.enable({
                "lua_ls",
                "ts_ls",
                "gopls",
                "terraformls",
            })

            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
            -- vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
            vim.keymap.set({ "n" }, "<leader>ca", vim.lsp.buf.code_action, {})
        end,
    },
}
