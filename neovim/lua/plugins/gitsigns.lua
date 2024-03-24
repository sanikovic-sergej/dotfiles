return {
    "lewis6991/gitsigns.nvim",
    requires = { "nvim-lua/plenary.nvim" }, -- Add dependencies here
    config = function()
        require('gitsigns').setup {
            signs                        = {
                add          = { text = '│' },
                change       = { text = '│' },
                delete       = { text = '_' },
                topdelete    = { text = '‾' },
                changedelete = { text = '~' },
                untracked    = { text = '┆' },
            },
            signcolumn                   = true,
            numhl                        = false,
            linehl                       = false,
            word_diff                    = false,
            watch_gitdir                 = {
                follow_files = true
            },
            auto_attach                  = true,
            attach_to_untracked          = false,
            current_line_blame           = false,
            current_line_blame_opts      = {
                virt_text = true,
                virt_text_pos = 'eol',
                delay = 1000,
                ignore_whitespace = false,
                virt_text_priority = 100,
            },
            current_line_blame_formatter = '<author>, <author_time:%Y-%m-%d> - <summary>',
            sign_priority                = 6,
            update_debounce              = 100,
            status_formatter             = nil,
            max_file_length              = 40000,
            preview_config               = {
                border = 'single',
                style = 'minimal',
                relative = 'cursor',
                row = 0,
                col = 1
            },
            yadm                         = {
                enable = false
            },
            on_attach                    = function(bufnr)
                local gs = package.loaded.gitsigns

                local function map(mode, l, r, opts)
                    opts = opts or {}
                    opts.buffer = bufnr
                    vim.keymap.set(mode, l, r, opts)
                end

                -- Navigation
                map('n', ']c', function()
                    if vim.wo.diff then return ']c' end
                    vim.schedule(function() gs.next_hunk() end)
                    return '<Ignore>'
                end, { expr = true })

                map('n', '[c', function()
                    if vim.wo.diff then return '[c' end
                    vim.schedule(function() gs.prev_hunk() end)
                    return '<Ignore>'
                end, { expr = true })
                -- Actions
                -- Register which-key descriptions
                local which_key = require("which-key")
                which_key.register({
                    ["hs"] = { "<cmd>lua require('gitsigns').stage_hunk()<CR>", "Stage Hunk" },
                    ["hr"] = { "<cmd>lua require('gitsigns').reset_hunk()<CR>", "Reset Hunk" },
                    ["hS"] = { "<cmd>lua require('gitsigns').stage_buffer()<CR>", "Stage Buffer" },
                    ["hu"] = { "<cmd>lua require('gitsigns').undo_stage_hunk()<CR>", "Undo Stage Hunk" },
                    ["hR"] = { "<cmd>lua require('gitsigns').reset_buffer()<CR>", "Reset Buffer" },
                    ["hp"] = { "<cmd>lua require('gitsigns').preview_hunk()<CR>", "Preview Hunk" },
                    ["hb"] = { "<cmd>lua require('gitsigns').blame_line{full=true}<CR>", "Blame Line" },
                    ["tb"] = { "<cmd>lua require('gitsigns').toggle_current_line_blame()<CR>", "Toggle Current Line Blame" },
                    ["hd"] = { "<cmd>lua require('gitsigns').diffthis()<CR>", "Diff This" },
                    ["hD"] = { "<cmd>lua require('gitsigns').diffthis('~')<CR>", "Diff This with Tilde" },
                    ["td"] = { "<cmd>lua require('gitsigns').toggle_deleted()<CR>", "Toggle Deleted" }
                }, { mode = 'n', prefix = '<leader>' })

                -- Register which-key for select_hunk text object
                which_key.register({
                    ["ih"] = { ":<C-U>Gitsigns select_hunk<CR>", "Select Hunk" }
                }, { mode = 'o', prefix = 'x' })
            end
        }
    end
}
