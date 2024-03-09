-- Fancier statusline
return {
    "nvim-lualine/lualine.nvim",
    config = function()
        require("lualine").setup({
            options = {
                icons_enabled = true,
                theme = "tokyonight",
                component_separators = "|",
                section_separators = "",
            },
            extensions = {
                "neo-tree",
                "lazy",
            },
        })
    end,
}
