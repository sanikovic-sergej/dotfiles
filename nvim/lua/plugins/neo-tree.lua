return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
    },
    config = function()
        local configs = require("neo-tree")
        configs.setup({
            sources = { "filesystem", "buffers", "git_status" },
            open_files_do_not_replace_types = { "terminal", "Trouble", "trouble", "qf", "Outline" },
            window = {
                mappings = {
                    ['t'] = function() vim.cmd('Neotree focus filesystem left') end,
                    ['b'] = function() vim.cmd('Neotree focus buffers left') end,
                    ['g'] = function() vim.cmd('Neotree focus git_status left') end,
                    ["Y"] = {
                        function(state)
                            local node = state.tree:get_node()
                            local path = node:get_id()
                            vim.fn.setreg("+", path, "c")
                        end,
                        desc = "Copy Path to Clipboard",
                    },
                    ["O"] = {
                        function(state)
                            require("lazy.util").open(state.tree:get_node().path, { system = true })
                        end,
                        desc = "Open with System Application",
                    },
                    ["P"] = { "toggle_preview", config = { use_float = false } },
                },
                position = "left",
                auto_open = false,
                close_if_last_window = true,
            },
            filesystem = {
                follow_current_file = {
                    enabled = true,          -- This will find and focus the file in the active buffer every time
                    --               -- the current file is changed while the filesystem tree is open.
                    leave_dirs_open = false, -- `false` closes auto expanded dirs, such as with `:Neotree reveal`
                },
                hijack_netrw_behavior = "open_current",
            },
            buffers = {
                follow_current_file = {
                    enabled = true,          -- This will find and focus the file in the active buffer every time
                    --               -- the current file is changed while the buffer tree is open.
                    leave_dirs_open = false, -- `false` closes auto expanded dirs, such as with `:Neotree reveal`
                },
                group_empty_dirs = true,
                show_unloaded = true,
            },
        })
    end,
}
