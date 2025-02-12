return {
  "williamboman/mason.nvim",
  opts = function(_, opts)
    -- vim.list_extend(opts.ensure_installed, { "pyright", "black", "ruff-lsp", "ruff" })
    vim.list_extend(
      opts.ensure_installed,
      { "black", "ruff", "ruff-lsp", "isort", "prettier", "prettierd", "basedpyright" }
    )
  end,
}
