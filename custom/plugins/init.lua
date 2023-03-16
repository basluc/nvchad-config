-- local configs = require "configs"
-- local lspconfig = require "lspconfig"

return {
    {'hrsh7th/vim-vsnip'},
    {'hrsh7th/vim-vsnip-integ'},

    --Override
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
        lazy = false
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
