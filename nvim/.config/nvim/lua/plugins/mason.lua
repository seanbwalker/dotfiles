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
}
