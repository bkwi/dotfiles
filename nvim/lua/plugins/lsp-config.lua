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
            -- ruff LSP: keep for lint/diagnostics, but let none-ls (ruff CLI) own formatting
            -- so pyproject.toml settings are respected.
            vim.lsp.config("ruff", {
                on_attach = function(client)
                    client.server_capabilities.documentFormattingProvider = false
                    client.server_capabilities.documentRangeFormattingProvider = false
                end,
            })

            -- Neovim 0.11+ LSP API (nvim-lspconfig v3 deprecates require("lspconfig"))
            vim.lsp.enable({
                "lua_ls",
                "ts_ls",
                "gopls",
                "terraformls",
                "ruff",
            })

            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
            -- vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
            vim.keymap.set({ "n" }, "<leader>ca", vim.lsp.buf.code_action, {})
            -- Python import sorting + formatting is handled by none-ls (ruff CLI:
            -- `check --fix` then `format`), which is what vim.lsp.buf.format() runs.
            vim.keymap.set("n", "<leader>F", vim.lsp.buf.format, {})

            -- Go: organize imports (goimports-equivalent) + format on save
            vim.api.nvim_create_autocmd("BufWritePre", {
                pattern = "*.go",
                callback = function()
                    vim.lsp.buf.code_action({
                        context = { only = { "source.organizeImports" } },
                        apply = true,
                    })
                    vim.lsp.buf.format({ async = false })
                end,
            })
        end,
    },
}
