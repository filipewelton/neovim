return {
  {
    "stevearc/conform.nvim",
    opts = require "configs.conform",
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  { import = "nvchad.blink.lazyspec" },
  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
       "html", "css", "go"
  		},
  	},
  },
  {
    "fatih/vim-go",
    ft = "go",
    build = ":GoUpdateBinaries",
    init = function()
      vim.g.go_def_mapping_enabled = 0
    end,
  },
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = { "marksman" },
    }
  },
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
    {
      "WhoIsSethDaniel/mason-tool-installer.nvim"
    }
  }
}
