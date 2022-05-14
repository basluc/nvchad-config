-- local configs = require "configs"
local lspconfig = require "lspconfig"

return {
    ['williamboman/nvim-lsp-installer'] = {},
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
