-- local configs = require "configs"
-- local lspconfig = require "lspconfig"

return {
    {'hrsh7th/vim-vsnip'},
    {'hrsh7th/vim-vsnip-integ'},

    {
        "nvim-treesitter/nvim-treesitter",
        opts = function ()
            require "custom.plugins.configs.treesitter"
        end
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
                "dockerfile-language-server",
            }
        }
    },

    {
        "neovim/nvim-lspconfig",
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.plugins.configs.lspconfig"
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
        "sindrets/diffview.nvim",
        after = "plenary.nvim",
        config = function()
            require("diffview").setup()
        end,
    },

    {
        "nvim-lua/plenary.nvim",
        rm_default_opts = true
    },

    {
        'kkoomen/vim-doge',
        run = ':call doge#install()'
    },

    {'kdheepak/lazygit.nvim', lazy = false},

    {
        'rcarriga/nvim-notify',
        config = function()
            require("notify").setup({background_colour = "#000000"})
        end
    },
}
