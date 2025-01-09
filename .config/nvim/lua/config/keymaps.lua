-- Keymaps are automatically loaded on the VeryLazy event

-- Close floating diagnostics window with <Esc>
-- vim.api.nvim_set_keymap("n", "<Esc>", ":lua vim.diagnostic.hide()<CR>", { noremap = true, silent = true })

-- Close notifications using notify.nvim (e.g., <Leader>m)
vim.api.nvim_set_keymap("n", "<Leader>m", ':lua require("notify").dismiss()<CR>', { noremap = true, silent = true })
