return {
  "neovim/nvim-lspconfig",

  opts = {
    servers = {
      lua_ls = {
        Lua = {
          workspace = { checkThirdParty = false },
          telemetry = { enable = false },
        },
      },
      rust_analyzer = {
        settings = {
          rust_analyzer = {
            diagnostics = {
              enable = true,
            },
          },
        },
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
