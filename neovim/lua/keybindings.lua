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

which_key.register({
    ["<leader>f"] = {
        name = "File->",
        f = { telescope.find_files, "Find Files" },
        -- another way to use telescope
        -- f = { "<cmd>Telescope find_files<CR>", desc = "Find Files" },
        g = { telescope.live_grep, "Live Grep" },
        s = { telescope.grep_string, "Grep String" },
        b = { telescope.buffers, "Buffers" },
        h = { telescope.help_tags, "Help Tags" },
        p = { telescope.git_files, "Git Files" },
    },
    ["<leader>p"] = {
        name = "Project->",
        e = { vim.cmd.Ex, "Exlorer" },
    },
    ["<leader>t"] = {
        name = "Toggle->",
        l = { function() toggle_line_numbers() end, "Line Numbers" },
        r = { function() toggle_relative_line_numbers() end, "Relative Line Numbers" },
        gb = { function() vim.api.nvim_exec('Gitsigns toggle_current_line_blame', true) end, "Git Blame Line" },
        d = { function() vim.api.nvim_exec('TroubleToggle', true) end, "Diagnostics" },
        sp = { function() vim.api.nvim_exec('setlocal spell!', true) end, "Spellcheck" },
        -- TODO: Toggle for auto-format on save
    },
    ["<leader>d"] = {
        name = "Display->",
        t = { function() vim.api.nvim_exec('Neotree toggle', true) end, "File Tree" },
        g = { function() vim.api.nvim_exec('Neotree float git_status', true) end, "Git status" },
        b = { function() vim.api.nvim_exec('Neotree buffers', true) end, "Open buffers" },
    },
    ["<leader>q"] = {
        name = "Close->",
        t = { function() vim.api.nvim_exec('bd', true) end, "Close current Buffer" },
    },
    ["<leader>n"] = {
        name = "Notifications->",
        l = { "<cmd>Telescope notify<CR>", "List Notifications" },
        d = { "<cmd>NoiceDismiss<CR>", "Dismiss Notifications" },
    },
    ["]"] = {
        name = "Next ->",
        t = { function() require("todo-comments").jump_next() end, "Next todo comment" },
    },
    ["["] = {
        name = "Previous ->",
        t = { function() require("todo-comments").jump_next() end, "Previous todo comment" },
    },
})
