return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = { "nvim-lua/plenary.nvim" },

    config = function()
        local builtin = require("telescope.builtin")
        vim.keymap.set("n", "<leader>f", builtin.find_files, {})
        vim.keymap.set("n", "<leader>r", builtin.live_grep, {})
        vim.keymap.set("n", "<leader>b", builtin.buffers, {})

        -- default mappings:
        -- <C-n>/<Down>	Next item
        -- <C-p>/<Up>	Previous item
        --
        local telescope = require("telescope")

        telescope.setup({
            defaults = {
                mappings = {
                    n = {
                        ["<C-d>"] = require("telescope.actions").delete_buffer,
                    }, -- n
                },
            },
        })
    end,
}
