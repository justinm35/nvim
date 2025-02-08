-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.api.nvim_set_keymap('n', '<Space>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<Space>', '<Nop>', { noremap = true, silent = true })
-- Make line numbers default
vim.opt.number = true
-- vim.opt.relativenumber = true
-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = "a"
-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false
-- Sync clipboard between OS and Neovim.
vim.schedule(function()
	vim.opt.clipboard = "unnamedplus"
end)
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.smartindent = true
-- Enable break indent
vim.opt.breakindent = true
vim.opt.smartindent = true
vim.opt.undofile = true
-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true
-- Keep signcolumn on by default
vim.opt.signcolumn = "yes"
-- Decrease update time
vim.opt.updatetime = 250
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300
-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true
-- Sets how neovim will display certain whitespace characters in the editor.
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }
-- Preview substitutions live, as you type!
vim.opt.inccommand = "split"
-- Show which line your cursor is on
vim.opt.cursorline = true
-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- local set = vim.opt
-- set.guicursor = ''
-- set.number = true
-- set.tabstop = 2
-- set.softtabstop = 2
-- set.shiftwidth = 2
-- set.smartindent = true
-- set.ambw = 'double'
-- set.undodir = os.getenv("HOME") .. "/.vim/undodir"
-- set.undofile = true
-- set.mouse = 'a'
-- set.autoread = true
-- set.laststatus = 2
-- set.tw = 120
-- set.autoread = true
-- set.showmode = false
-- set.signcolumn = 'yes'
-- -- set.clipboard = 'unnamed'
-- set.backup = false
-- set.writebackup = false
-- set.swapfile = false
-- set.updatetime = 50
-- set.scrolloff = 10
-- set.spelllang = 'en_ca'
-- set.hlsearch = true
-- set.incsearch = true
-- set.cursorline = true
