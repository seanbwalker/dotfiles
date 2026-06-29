return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  opts = {
    formatters_by_ft = {
      python     = { "black", "isort" },
      lua        = { "stylua" },
      sh         = { "shfmt" },
      bash       = { "shfmt" },
      json       = { "prettier" },
      yaml       = { "prettier" },
      markdown   = { "prettier" },
    },
    format_on_save = {
      timeout_ms = 500,
      lsp_fallback = true,
    },
  },
}
