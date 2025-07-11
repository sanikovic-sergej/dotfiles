return {
    "echasnovski/mini.bufremove",
    version = false,
    event = "VeryLazy",
    config = function()
        require("mini.bufremove").setup {
            -- Whether to set Vim's settings for buffers (allow hidden buffers)
            set_vim_settings = true,

            -- Whether to disable showing non-error feedback
            silent = false,
        }
    end
}
