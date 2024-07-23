return {
  {'hrsh7th/vim-vsnip'},
  {'hrsh7th/vim-vsnip-integ'},

  {
    "nvim-treesitter/nvim-treesitter",
    opts = require "custom.plugins.configs.treesitter"
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "pyright",
        "rust-analyzer",
        "intelephense",
        "html-lsp",
        "css-lsp",
        "docker-compose-language-service",
        "twiggy-language-server",
        "typescript-language-server",
        "yaml-language-server",
        "gopls",
      },
    },
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.configs.lspconfig"
      vim.diagnostic.config({
        virtual_text = false
      })
    end,
  },

  {
    "rmagatti/auto-session",
    lazy = false,
    config = function ()
      require("auto-session").setup {
          log_level = "error",
          cwd_change_handling = {
            restore_upcoming_session = true, -- already the default, no need to specify like this, only here as an example
            pre_cwd_changed_hook = nil, -- already the default, no need to specify like this, only here as an example
            -- post_cwd_changed_hook = function() -- example refreshing the lualine status line _after_ the cwd changes
            --   require("lualine").refresh() -- refresh lualine so the new session name is displayed in the status bar
            -- end,
        },
      }
    end
  },

  {
    "nvim-lua/plenary.nvim",
    rm_default_opts = true
  },

  {
    "danymat/neogen",
    config = function()
      require('neogen').setup {}
    end,
    requires = "nvim-treesitter/nvim-treesitter",
    lazy = false
  },

  {'kdheepak/lazygit.nvim', lazy = false},

  {
    'rcarriga/nvim-notify',
    config = function()
      require("notify").setup({background_colour = "#000000"})
    end
  },

  {
    "folke/trouble.nvim",
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    },
  },

  {'sindrets/diffview.nvim', lazy = false, dependencies = { "nvim-tree/nvim-web-devicons" }}
}
