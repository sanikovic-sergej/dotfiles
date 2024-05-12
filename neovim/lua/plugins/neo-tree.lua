return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
    },
    config = function()
        require("neo-tree").setup({
            window = {
                mappings = {
                    ['t'] = function() vim.api.nvim_exec('Neotree focus filesystem left', true) end,
                    ['b'] = function() vim.api.nvim_exec('Neotree focus buffers left', true) end,
                    ['g'] = function() vim.api.nvim_exec('Neotree focus git_status left', true) end,
                },
            },
            keys = {
                {
                    "<A-t>",
                    function()
                        require("neo-tree.command").execute({
                            toggle = true,
                            source = "filesystem",
                            position = "left",
                        })
                    end,
                    desc = "Filesystem (root dir)",
                },
                {
                    "<A-g>",
                    function()
                        require("neo-tree.command").execute({
                            toggle = true,
                            source = "git_status",
                            position = "left",
                        })
                    end,
                    desc = "Git Status (root dir)",
                },
                {
                    "<A-b>",
                    function()
                        require("neo-tree.command").execute({
                            toggle = true,
                            source = "buffers",
                            position = "left",
                        })
                    end,
                    desc = "Buffers (root dir)",
                },
            },
            filesystem = {
                follow_current_file = {
                    enabled = true,          -- This will find and focus the file in the active buffer every time
                    --               -- the current file is changed while the filesystem tree is open.
                    leave_dirs_open = false, -- `false` closes auto expanded dirs, such as with `:Neotree reveal`
                },
            },
            buffers = {
                follow_current_file = {
                    enabled = true,          -- This will find and focus the file in the active buffer every time
                    --               -- the current file is changed while the buffer tree is open.
                    leave_dirs_open = false, -- `false` closes auto expanded dirs, such as with `:Neotree reveal`
                },
            },
        })
    end,
}
