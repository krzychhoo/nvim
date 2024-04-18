return {
  -- Pretty syntax highlighting
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- Nvim configuration
        "vim",
        "lua",
        "vimdoc",
        -- Web stuff (eww)
        "html",
        "css",
        -- Real programming
        "cpp",
        "c",
      },
    },
  },
}
