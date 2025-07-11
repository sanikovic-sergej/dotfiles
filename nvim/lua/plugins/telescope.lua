return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    { 'hrsh7th/cmp-nvim-lsp' },
    { 'neovim/nvim-lspconfig' },
    { 'hrsh7th/cmp-buffer' },
    { 'hrsh7th/cmp-path' },
    { 'hrsh7th/cmp-cmdline' },
    { 'hrsh7th/nvim-cmp' },
    { 'nvim-tree/nvim-web-devicons' },
    {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
        config = function()
            require("telescope").load_extension("fzf")
        end,
    }
}
