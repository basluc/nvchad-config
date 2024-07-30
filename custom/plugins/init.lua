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
    lazy = false,
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

  {
    'sindrets/diffview.nvim',
    lazy = false,
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function ()
      local config = require "custom.plugins.configs.diffview"
      require("diffview").setup(config)
    end
  },

  {
    "folke/lazydev.nvim",
    ft = "lua", -- only load on lua files
    opts = {
      library = {
        -- See the configuration section for more details
        -- Load luvit types when the `vim.uv` word is found
        { path = "luvit-meta/library", words = { "vim%.uv" } },
        { plugins = { "nvim-dap-ui" }, types = true },
      },
    },
  },

  { "Bilal2453/luvit-meta", lazy = true }, -- optional `vim.uv` typings

  { -- optional completion source for require statements and module annotations
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      opts.sources = opts.sources or {}
      table.insert(opts.sources, {
        name = "lazydev",
        group_index = 0, -- set group index to 0 to skip loading LuaLS completions
      })
    end,
  },

  {
    'mfussenegger/nvim-dap',
    config = function ()
      require("custom.plugins.configs.dap_php")
    end
  },

  {
    "rcarriga/nvim-dap-ui",
    dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"},
    lazy=false,
    config = function()
      require("dapui").setup({expand_lines = false})

      local dap, dapui = require("dap"), require("dapui")
      dap.listeners.before.attach.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.launch.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated.dapui_config = function()
        dapui.close()
      end
      dap.listeners.before.event_exited.dapui_config = function()
        dapui.close()
      end
    end
  },
}
