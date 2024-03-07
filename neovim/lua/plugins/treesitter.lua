return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = { "cpp", "cmake", "devicetree", "git_config", "git_rebase", "gitattributes", "gitcommit", "gitignore", "json", "latex", "markdown", "markdown_inline", "regex", "rust", "bash", "c", "lua", "vim", "vimdoc", "javascript", "html" },
            auto_install = true,
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}
