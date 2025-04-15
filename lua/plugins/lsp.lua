return {
  {
    "williamboman/mason.nvim",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig"
    },
    config = function()
      local mason = require("mason")
      local mason_lspconfig = require("mason-lspconfig")
      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      mason.setup()
      mason_lspconfig.setup({
        ensure_installed = {
          "rust_analyzer", "lua_ls", "bashls", "clangd", "cssls", "dockerls",
          "html", "jdtls", "ts_ls", "vimls", "ast_grep", "phpactor",
          "prismals", "jsonls"
        }
      })

      local servers = {
        "rust_analyzer", "lua_ls", "bashls", "clangd", "cssls", "dockerls",
        "html", "jdtls", "ts_ls", "vimls", "ast_grep", "phpactor",
        "prismals", "jsonls"
      }

      for _, server in ipairs(servers) do
        lspconfig[server].setup({
          capabilities = capabilities,
          on_attach = function(_, bufnr)
            local opts = { buffer = bufnr }
            vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
          end
        })
      end
    end
  }
}

