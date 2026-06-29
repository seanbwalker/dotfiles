return {
  {
    "williamboman/mason.nvim",
    cmd = "Mason",
    config = function()
      require("mason").setup({
        ui = { border = "rounded" },
      })
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "pyright",
          "jsonls",
          "yamlls",
          "bashls",
          "taplo",
        },
        automatic_installation = true,
        handlers = {
          function(server_name)
            vim.lsp.enable(server_name)
          end,
        },
      })
    end,
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    dependencies = { "williamboman/mason.nvim" },
    opts = {
      ensure_installed = {
        "black",
        "isort",
        "stylua",
        "shfmt",
        "prettier",
      },
      auto_update = false,
      run_on_start = true,
    },
  },
}
