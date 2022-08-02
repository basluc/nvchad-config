-- local configs = require "configs"
-- local lspconfig = require "lspconfig"

return {
    -- ['williamboman/nvim-lsp-installer'] = {},
    ["williamboman/mason.nvim"] = {
      ensure_installed = {
        "lua-language-server",
        "pyright",
        "rust_analyzer",
        "intelephense",
        "html-lsp",
        "css-lsp",
        "dockerfile-language-server",
        "intelephense",
    }
      -- "html",
      -- "lua-language-server"
      -- "cssls",
      -- "intelephense",
      -- "pyright",
      -- "rust_analyzer",
      -- "remark_ls",
      -- "sumneko_lua",
      -- "yamlls",
      -- "dockerls",
      -- "tsserver"
    },
    ["neovim/nvim-lspconfig"] = {
        config = function()
          require "plugins.configs.lspconfig"
          require "custom.plugins.lspconfig"
        end,
    },
    ['hrsh7th/vim-vsnip'] = {},
    ['hrsh7th/vim-vsnip-integ'] = {},
    ['rmagatti/auto-session'] = {
        cmd = {
            "SaveSession",
            "RestoreSession",
            "DeleteSession",
        }
    },
}
