return {
    "nvimtools/none-ls.nvim",

    config = function()
        local null_ls = require("null-ls")
        local helpers = require("null-ls.helpers")

        -- none-ls dropped its builtin `ruff` formatter; wrap the CLI ourselves so
        -- ruff runs exactly as it would from the terminal (pyproject.toml and all).
        -- `ruff format` never touches imports (that's a lint rule, not a style rule),
        -- so run `ruff check --fix` first to sort/organize imports, then format.
        local ruff_fix = helpers.make_builtin({
            name = "ruff_fix",
            method = null_ls.methods.FORMATTING,
            filetypes = { "python" },
            generator_opts = {
                command = "ruff",
                args = { "check", "--fix", "--exit-zero", "--stdin-filename", "$FILENAME", "-" },
                to_stdin = true,
            },
            factory = helpers.formatter_factory,
        })

        local ruff_format = helpers.make_builtin({
            name = "ruff_format",
            method = null_ls.methods.FORMATTING,
            filetypes = { "python" },
            generator_opts = {
                command = "ruff",
                args = { "format", "--stdin-filename", "$FILENAME", "-" },
                to_stdin = true,
            },
            factory = helpers.formatter_factory,
        })

        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.stylua,
                ruff_fix,
                ruff_format,
                -- null_ls.builtins.formatting.black,
                -- null_ls.builtins.formatting.prettier.with({ extra_args = { "--tab-width 2" } }),
                null_ls.builtins.formatting.prettier,
            },
        })
    end,
}
