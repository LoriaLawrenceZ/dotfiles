return {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
        require("catppuccin").setup({
            flavor = "frappe",
            transparent_background = true,
            integrations = {
                neotree = false,
                cmp = true,
                treesitter = true,
                telescope = {
                    enabled = true,
                },
            },
        })

        vim.cmd.colorscheme("catppuccin")
    end,
}
