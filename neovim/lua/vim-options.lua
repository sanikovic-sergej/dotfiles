-- Not even sure if it helps
vim.opt.guicursor = ""

-- Linenumbers and relative Linenumbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- Highlight current line number
vim.opt.cursorline = true

-- Setting Indent and Tab behavior
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
-- Automaticly indent on new line
vim.opt.smartindent = true

-- Deactivating line wrapping
vim.opt.wrap = false

-- Do not use swap files for changes
vim.opt.swapfile = false
-- Do not make a backup when writing a file [Default]
vim.opt.backup = false

-- Save Undo history into a file
vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.config/nvim/undodir"

-- Only highlight current search result
vim.opt.hlsearch = false
-- Show results while typing
vim.opt.incsearch = true

-- Enable 24-bit RGB color [Default]
vim.opt.termguicolors = true

-- Minimal lines to keep above and below the cursor
vim.opt.scrolloff = 18

-- Always draw signs
vim.opt.signcolumn = "yes"

-- Include file names and path names
vim.opt.isfname:append("@-@")

-- Display a column (to keep code lines and indents in check)
vim.opt.colorcolumn = "80"

-- Activates syntax for all file types
-- Enabled for log-highlight plugin
vim.opt.syntax = "on"
