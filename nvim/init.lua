if vim.g.vscode then
    -- VSCode extension
else
    -- Make sure to setup `mapleader` and `maplocalleader` before
    -- loading lazy.nvim so that mappings are correct.
    vim.g.mapleader = " "
    vim.g.maplocalleader = "\\"

    -- Disable netrw
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    require("packet-manager")
    require("vim-options")
    require("keybindings")
    require("theme")
end
