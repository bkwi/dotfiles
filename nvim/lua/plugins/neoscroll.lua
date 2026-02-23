return {
    "karb94/neoscroll.nvim",
    config = function()
        require('neoscroll').setup({
            hide_cursor = true,
            duration_multiplier = 0.5,
            easing = "quadratic",
        })
    end
}
