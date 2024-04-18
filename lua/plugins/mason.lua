return {
  -- Configuring mason.nvim to automatically install certain LSP servers
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- Default LSPs
        "lua-language-server",
        "stylua",
        -- "html-lsp", "css-lsp" ,
        "prettier",
        -- My custom ones
        "clangd",
        "clang-format",
      },
    },
  },
}
