return{
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function ()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = {"cpp", "cmake", "devicetree", "git_config", "git_rebase", "gitattributes", "gitcommit", "gitignore", "json", "latex", "markdown", "regex", "rust", "bash", "c", "lua", "vim", "vimdoc", "javascript", "html" },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },
        })
    end
 }
