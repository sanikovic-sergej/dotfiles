-- Save file with Ctrl+S
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', { noremap = true})
-- Close file WITHOUT saving
vim.api.nvim_set_keymap('n', '<C-q>', ':q!<CR>', { noremap = true})

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
which_key.register({
    ["<leader>f"] = {
        name = "File->",
        f = { telescope.find_files, "Find Files" },
        g = { telescope.live_grep, "Live Grep"},
        b = { telescope.buffers, "Buffers"},
        h = { telescope.help_tags, "Help Tags"},
    },
    ["<leader>p"] = {
        name = "Project->",
        e = { vim.cmd.Ex, "Exlorer"},
    },
    ["<leader>t"] = {
        name = "Toggle->",
        l = {function() toggle_line_numbers() end, "Line Numbers" },
        r = {function() toggle_relative_line_numbers() end, "Relative Line Numbers" },
    },
})
