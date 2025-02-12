return {
  "nvimtools/none-ls.nvim",
  dependencies = { "nvim-lspconfig", "mason.nvim" }, -- Optional but recommended
  config = function()
    local nls = require("null-ls")
    nls.setup({
      sources = {
        -- Add djhtml for formatting Django templates
        nls.builtins.formatting.djhtml, --TODO: install djhmtl with pip
      },
    })
  end,
}
