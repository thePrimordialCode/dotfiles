local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require("lspconfig").html.setup({
  -- on_attach = function() end,
  capabilities = capabilities,
  filetypes = { "html", "htmldjango" },
})

require 'luasnip'.filetype_extend("htmldjango", { "html" })
