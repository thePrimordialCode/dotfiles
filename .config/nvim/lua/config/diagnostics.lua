-- Disable signs and virtual text for diagnostics
vim.diagnostic.config({
  virtual_text = false,
  signs = true,
  underline = true,
  severity_sort = true,
})

-- Automatically show diagnostics in a floating window when hovering over a line
vim.api.nvim_create_autocmd("CursorHold", {
  pattern = "*",
  callback = function()
    vim.diagnostic.open_float(nil, { focusable = false, border = "rounded" })
  end,
})

-- Optionally, map a key to show diagnostics in a floating window manually
-- vim.api.nvim_set_keymap('n', '<Leader>d', ':lua vim.diagnostic.open_float(nil, {border = "rounded", focusable = false})<CR>', { noremap = true, silent = true })
