return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },

    config = function()
        local harpoon = require("harpoon")
        harpoon:setup()

        vim.keymap.set("n", "<leader>a", function()
            harpoon:list():append()
        end)

        local conf = require("telescope.config").values
        local function toggle_telescope(harpoon_files)
            local file_paths = {}
            for _, item in ipairs(harpoon_files.items) do
                table.insert(file_paths, item.value)
            end

            require("telescope.pickers")
                .new({}, {
                    prompt_title = "Harpoon",
                    finder = require("telescope.finders").new_table({
                        results = file_paths,
                    }),
                    previewer = conf.file_previewer({}),
                    sorter = conf.generic_sorter({}),
                })
                :find()
        end

        vim.keymap.set("n", "<C-e>", function()
            harpoon.ui:toggle_quick_menu(harpoon:list())
        end)

        vim.keymap.set("n", "ha", function()
            harpoon:list():append()
        end)

        vim.keymap.set("n", "hd", function()
            harpoon:list():remove()
        end)

        vim.keymap.set("n", "hm", function()
            toggle_telescope(harpoon:list())
        end, { desc = "Open harpoon window" })

        vim.keymap.set("n", "hp", function()
            harpoon:list():prev()
        end)

        vim.keymap.set("n", "hn", function()
            harpoon:list():next()
        end)

    end,
}
