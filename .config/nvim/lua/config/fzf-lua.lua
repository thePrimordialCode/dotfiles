require("fzf-lua").setup({
  winopts = {
    -- Configure window settings (height, width, border)
    height = 0.8,
    width = 0.8,
  },
  keymap = {
    ["<Tab>"] = "", -- Move the selection forward without selecting
    ["<S-Tab>"] = "", -- Move the selection backward without selecting
    builtin = { true, ["<Esc>"] = "hide" },
  },
})
