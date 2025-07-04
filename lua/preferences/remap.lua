
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })


-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- [jj] to escape insert mode
vim.api.nvim_set_keymap('i', 'jj', '<Esc>', { noremap = true, silent = true })

-- open file_browser with the path of the current buffer
vim.keymap.set("n", "<space>fb", ":Telescope file_browser path=%:p:h select_buffer=true<CR>")

-- Open the undo tree
vim.keymap.set('n', '<leader>ut', vim.cmd.UndotreeToggle)
vim.keymap.set("n", "<space>e", vim.diagnostic.open_float, { noremap = true, silent = true, buffer = bufnr })

-----------------------------------
---------- Neogit ----------
-----------------------------------

vim.keymap.set("n", "<leader>gg", function()
  require("neogit").open({ kind = "floating" })
end, { noremap = true, silent = true, desc = "Open Neogit popup" })


-----------------------------------
---------- Git Diff View ----------
-----------------------------------

-- vim.keymap.set("n", "gd", function()
--   vim.cmd("DiffviewOpen")
-- end, { noremap = true, silent = true, desc = "Open Diffview" })

vim.keymap.set("n", "gq", function()
  vim.cmd("DiffviewClose")
end, { noremap = true, silent = true, desc = "Quit Diffview" })



-----------------------------------
------------- Utils --------------
-----------------------------------
---
-- Map Cmd+Shift+, to copy the relative path of the current file
vim.keymap.set("n", "<D-S-,>", function()
	local relative_path = vim.fn.expand("%")
	vim.fn.setreg("+", relative_path)
	print("Relative path copied: " .. relative_path)
end, { noremap = true, silent = true })


-- Disable arrow keys in normal mode
vim.keymap.set("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')


vim.keymap.set("n", "gd", vim.lsp.buf.definition, { noremap = true, silent = true })
