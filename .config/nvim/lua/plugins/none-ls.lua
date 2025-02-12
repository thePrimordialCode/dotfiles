return {
  "nvimtools/none-ls.nvim",
  dependencies = { "nvim-lspconfig" }, -- Optional but recommended
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        -- Add djhtml for formatting Django templates
        null_ls.builtins.formatting.djhtml, --TODO: install djhmtl with pip
        null_ls.builtins.formatting.black,
      },
    })
  end,
}
