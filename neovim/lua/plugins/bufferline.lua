return {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = {
        'nvim-tree/nvim-web-devicons',
        "echasnovski/mini.bufremove",
    },
    event = "VeryLazy",
    keys = {
        { "<leader>bp", "<CMD>BufferLineTogglePin<CR>",            desc = "Toggle pin" },
        { "<leader>bP", "<CMD>BufferLineGroupClose ungrouped<CR>", desc = "Delete non-pinned buffers" },
        { "<leader>bo", "<CMD>BufferLineCloseOthers<CR>",          desc = "Delete other buffers" },
        { "<leader>br", "<CMD>BufferLineCloseRight<CR>",           desc = "Delete buffers to the right" },
        { "<leader>bl", "<CMD>BufferLineCloseLeft<CR>",            desc = "Delete buffers to the left" },
        { "<S-h>",      "<CMD>BufferLineCyclePrev<CR>",            desc = "Prev buffer" },
        { "<S-l>",      "<CMD>BufferLineCycleNext<CR>",            desc = "Next buffer" },
        { "<leader>bc", "<CMD>bdelete<CR>",                        desc = "Close current buffer" },
    },
    opts = {
        options = {
            -- stylua: ignore
            close_command = function(n) require("mini.bufremove").delete(n, false) end,
            -- stylua: ignore
            right_mouse_command = function(n) require("mini.bufremove").delete(n, false) end,
            diagnostics = "nvim_lsp",
            always_show_bufferline = false,
            offsets = {
                {
                    filetype = "neo-tree",
                    text = "Neo-tree",
                    highlight = "Directory",
                    text_align = "left",
                },
            },
        },
    },
}
