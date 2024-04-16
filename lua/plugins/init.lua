return {
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },
{ -- This plugin
  "Zeioth/compiler.nvim",
  cmd = {"CompilerOpen", "CompilerToggleResults", "CompilerRedo"},
  dependencies = { "stevearc/overseer.nvim" },
  opts = {},
},
{ -- The task runner we use
  "stevearc/overseer.nvim",
  commit = "68a2d344cea4a2e11acfb5690dc8ecd1a1ec0ce0",
  cmd = { "CompilerOpen", "CompilerToggleResults", "CompilerRedo" },
  opts = {
    task_list = {
      direction = "bottom",
      min_height = 25,
      max_height = 25,
      default_detail = 1
    },
  },
  lazy = true;
},

  --  These are some examples, uncomment them if you want to see them work!

  -- Configure lspconfig to use the desired LSP servers
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  -- Configuring mason.nvim to automatically install certain LSP servers
  {
  	"williamboman/mason.nvim",
  	opts = {
  		ensure_installed = {
        -- Default LSPs
  			"lua-language-server", "stylua",
  			-- "html-lsp", "css-lsp" , 
        "prettier",
        -- My custom ones
        "clangd", "clang-format"
  		},
  	},
  },

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
        "c"
  		},
  	},
  },
}
