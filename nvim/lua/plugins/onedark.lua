return {
    "navarasu/onedark.nvim",
    lazy = false,
    name = "onedark",
    priority = 1000,
    opts = {},
    config = function()
        require("onedark").setup({
            style = "warmer",
        })
        require("onedark").load()
    end,
}
