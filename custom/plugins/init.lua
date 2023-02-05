-- local configs = require "configs"
-- local lspconfig = require "lspconfig"
local pluginConfs = require "custom.plugins.configs"

return {
    ['hrsh7th/vim-vsnip'] = {},
    ['hrsh7th/vim-vsnip-integ'] = {},

    --Override
    ["nvim-treesitter/nvim-treesitter"] = {
        override_options = pluginConfs.treesitter
    },

    ["williamboman/mason.nvim"] = {
        override_options = {
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

    ["neovim/nvim-lspconfig"] = {
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.plugins.lspconfig"
        end,
    },

    ["rmagatti/auto-session"] = {},

    ["sindrets/diffview.nvim"] = {
        after = "plenary.nvim",
        config = function()
            require("diffview").setup()
        end,
    },

    ["nvim-lua/plenary.nvim"] = {rm_default_opts = true },
    ['kkoomen/vim-doge'] = {run = ':call doge#install()'},
    ['kdheepak/lazygit.nvim'] = {},
    ['rcarriga/nvim-notify'] = { 
        config = function()
            require("notify").setup({background_colour = "#000000"})
        end
    },
}
