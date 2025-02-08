-- Handle git diffs, blame, and merge conflict tool
return {
    "tpope/vim-fugitive",
    config = function()
        -- Keybindings for Fugitive
        vim.api.nvim_set_keymap("n", "<leader>gs", ":Git<CR>", { noremap = true, silent = true }) -- Git status
        -- vim.api.nvim_set_keymap("n", "<leader>gb", ":Git blame<CR>", { noremap = true, silent = true }) -- Git blame
        vim.api.nvim_set_keymap("n", "<leader>gc", ":Gdiffsplit<CR>", { noremap = true, silent = true }) -- Git diff
        vim.api.nvim_set_keymap("n", "<leader>gm", ":Git mergetool<CR>", { noremap = true, silent = true }) -- Merge tool

        -- Set Fugitive to work seamlessly with splits for merge conflicts
        vim.cmd([[
            autocmd FileType gitcommit setlocal spell textwidth=72
            autocmd FileType gitrebase setlocal foldenable
        ]])

        -- Optional: Customize diff behavior for better visibility
        vim.cmd([[
            if exists('+diffopt')
                set diffopt+=vertical
                set diffopt+=iwhite
            endif
        ]])

        -- Automatically open Fugitive merge tool on conflict
        vim.cmd([[
            autocmd VimEnter *.git/MERGE_MSG :Git mergetool
        ]])

        vim.api.nvim_set_hl(0, "DiffAdd",    { bg = "#112F12", fg = "#A6E22E" }) -- Green for additions
        vim.api.nvim_set_hl(0, "DiffChange", { bg = "#1C1C00", fg = "#FFA500" }) -- Orange for changes
        vim.api.nvim_set_hl(0, "DiffDelete", { bg = "#331C1C", fg = "#F92672" }) -- Red for deletions
        vim.api.nvim_set_hl(0, "DiffText",   { bg = "#1E1E3F", fg = "#66D9EF" }) -- Blue for modified text
    end,
}
