--<C-...>: Ctrl key. For example, <C-n> represents Ctrl + N.
--<M-...>: Alt or Meta key. On some systems, it's represented as Alt, while on others, it might be the Meta key. For example, <M-n> represents Alt + N or Meta + N.
--<S-...>: Shift key. For example, <S-n> represents Shift + N.
--<A-...>: Same as <M-...>. Represents Alt or Meta key.

-- Save file with Ctrl+S
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', { noremap = true })
-- Close file WITHOUT saving
vim.api.nvim_set_keymap('n', '<C-q>', ':q!<CR>', { noremap = true })

local function toggle_line_numbers()
    if vim.fn.expand("%:t") ~= "" then
        vim.wo.number = not vim.wo.number
        vim.wo.relativenumber = vim.wo.number
    else
        print("Not in a file.")
    end
end
local function toggle_relative_line_numbers()
    if vim.fn.expand("%:t") ~= "" then
        vim.wo.relativenumber = not vim.wo.relativenumber
    else
        print("Not in a file.")
    end
end

local telescope = require('telescope.builtin')
local which_key = require("which-key")
local neo_tree = require("neo-tree")
local noice = require("noice")

which_key.add({
    { "<leader>f",   group = "File->" },
    { "<leader>faf", function() telescope.find_files({ hidden = true }) end,               desc = "Find all Files" },
    -- TODO: Search all Files including hidden and gitignore
    { "<leader>fag", function() telescope.live_grep({ additional_args = { "-uuu" } }) end, desc = "Live Grep everything" },
    { "<leader>fb",  telescope.buffers,                                                    desc = "Buffers" },
    { "<leader>ff",  telescope.find_files,                                                 desc = "Find Files" },
    { "<leader>fg",  telescope.live_grep,                                                  desc = "Live Grep" },
    { "<leader>fh",  telescope.help_tags,                                                  desc = "Help Tags" },
    { "<leader>fp",  telescope.git_files,                                                  desc = "Git Files" },
    { "<leader>fs",  telescope.grep_string,                                                desc = "Grep String" },

    { "<leader>p",   group = "Project->" },
    { "<leader>pe",  vim.cmd.Ex,                                                           desc = "Exlorer" },

    { "<leader>t",   group = "Toggle->" },
    -- TODO: Toggle for auto-format on save
    { "<leader>taf", function() vim.cmd('') end,                                           desc = "Autoformat on save" },
    { "<leader>tgb", function() vim.cmd('Gitsigns toggle_current_line_blame') end,         desc = "Git Blame Line" },
    { "<leader>th",  function() vim.cmd('set hlsearch!') end,                              desc = "Highlight search" },
    { "<leader>tl",  function() toggle_line_numbers() end,                                 desc = "Line Numbers" },
    { "<leader>tr",  function() toggle_relative_line_numbers() end,                        desc = "Relative Line Numbers" },
    { "<leader>tsp", function() vim.cmd('setlocal spell!') end,                            desc = "Spellcheck" },

    { "<leader>d",   group = "Display->" },
    { "<leader>db",  function() vim.cmd('Neotree buffers') end,                            desc = "Open buffers" },
    { "<leader>dg",  function() vim.cmd('Neotree float git_status') end,                   desc = "Git status" },
    { "<leader>dt",  function() vim.cmd('Neotree toggle') end,                             desc = "File Tree" },

    { "<leader>n",   group = "Notifications->" },
    { "<leader>nd",  "<cmd>NoiceDismiss<CR>",                                              desc = "Dismiss Notifications" },
    { "<leader>nl",  "<cmd>Telescope notify<CR>",                                          desc = "List Notifications" },

    { "<leader>s",   group = "Sudo->" },
    { "<leader>se",  "<cmd>term sudoedit %<cr>",                                           desc = "Edit with Sudo" },

    { "[",           group = "Previous ->" },
    { "[t",          function() require("todo-comments").jump_prev() end,                  desc = "Previous todo comment" },

    { "]",           group = "Next ->" },
    { "]t",          function() require("todo-comments").jump_next() end,                  desc = "Next todo comment" },
})
