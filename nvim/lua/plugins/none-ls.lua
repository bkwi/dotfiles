return {
    "nvimtools/none-ls.nvim",

    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua,
                -- null_ls.builtins.formatting.ruff,
                -- null_ls.builtins.formatting.black,
                -- null_ls.builtins.formatting.prettier.with({ extra_args = { "--tab-width 2" } }),
                null_ls.builtins.formatting.prettier,
            },
        })

        vim.keymap.set("n", "<leader>F", vim.lsp.buf.format, {})
    end,
}
