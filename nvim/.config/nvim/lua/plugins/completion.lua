return {
  {
    "saghen/blink.cmp",
    version = "*",
    event = "InsertEnter",
    opts = {
      keymap = {
        preset = "default",
        ["<Tab>"]   = { "accept", "fallback" },
        ["<C-k>"]   = { "select_prev", "fallback" },
        ["<C-j>"]   = { "select_next", "fallback" },
      },
      appearance = {
        nerd_font_variant = "mono",
      },
      sources = {
        default = { "lsp", "path", "snippets", "buffer" },
      },
      completion = {
        documentation = {
          auto_show = true,
          auto_show_delay_ms = 300,
        },
        menu = { border = "rounded" },
      },
    },
  },
}
