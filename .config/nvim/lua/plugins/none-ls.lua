return {
  "nvimtools/none-ls.nvim",
  dependencies = { "nvim-lspconfig", "mason.nvim" }, -- Optional but recommended
  config = function()
    local nls = require("null-ls").builtins
    nls.setup({
      root_dir = require("null-ls.utils").root_pattern(".null-ls-root", ".neoconf.json", "Makefile", ".git"),
      sources = {
        -- Add djhtml for formatting Django templates
        nls.formatting.djhtml, --TODO: install djhmtl with pip

        nls.formatting.biome,

        nls.formatting.biome.with({
          args = {
            "check",
            "--apply-unsafe",
            "--formatter-enabled=true",
            "--organize-imports-enabled=true",
            "--skip-errors",
            "$FILENAME",
          },
        }),
      },
    })
  end,
}
