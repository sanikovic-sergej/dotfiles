--<C-...>: Ctrl key. For example, <C-n> represents Ctrl + N.
--<M-...>: Alt or Meta key. On some systems, it's represented as Alt, while on others, it might be the Meta key. For example, <M-n> represents Alt + N or Meta + N.
--<S-...>: Shift key. For example, <S-n> represents Shift + N.
--<A-...>: Same as <M-...>. Represents Alt or Meta key.

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
        s = { telescope.grep_string, "Grep String"},
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
