return {
  "neovim/nvim-lspconfig",

  opts = {
    servers = {
      biome = {
        require_cwd = true,
      },
      basedpyright = {
        settings = {
          basedpyright = {
            analysis = {
              typeCheckingMode = "standard",
            },
          },
        },
      },
    },
  },
}
