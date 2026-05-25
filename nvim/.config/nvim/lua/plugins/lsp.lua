return {
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPost", "BufNewFile" },
    config = function()

      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local bufnr = args.buf
          local opts = { buffer = bufnr, silent = true }

          vim.keymap.set("n", "gd",         vim.lsp.buf.definition,    vim.tbl_extend("force", opts, { desc = "Go to Definition" }))
          vim.keymap.set("n", "gr",         vim.lsp.buf.references,    vim.tbl_extend("force", opts, { desc = "References" }))
          vim.keymap.set("n", "gD",         vim.lsp.buf.declaration,   vim.tbl_extend("force", opts, { desc = "Go to Declaration" }))
          vim.keymap.set("n", "gi",         vim.lsp.buf.implementation,vim.tbl_extend("force", opts, { desc = "Implementation" }))
          vim.keymap.set("n", "K",          vim.lsp.buf.hover,         vim.tbl_extend("force", opts, { desc = "Hover Docs" }))
          vim.keymap.set("n", "<leader>ls", vim.lsp.buf.signature_help,vim.tbl_extend("force", opts, { desc = "Signature Help" }))
          vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename,        vim.tbl_extend("force", opts, { desc = "Rename Symbol" }))
          vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, vim.tbl_extend("force", opts, { desc = "Code Action" }))
          vim.keymap.set("n", "[d",         vim.diagnostic.goto_prev,  vim.tbl_extend("force", opts, { desc = "Prev Diagnostic" }))
          vim.keymap.set("n", "]d",         vim.diagnostic.goto_next,  vim.tbl_extend("force", opts, { desc = "Next Diagnostic" }))
          vim.keymap.set("n", "<leader>ld", vim.diagnostic.open_float, vim.tbl_extend("force", opts, { desc = "Line Diagnostics" }))
        end,
      })

      vim.diagnostic.config({
        virtual_text = true,
        signs = true,
        underline = true,
        update_in_insert = false,
        float = { border = "rounded", source = true },
      })
    end,
  },
}
