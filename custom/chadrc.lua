-- Just an example, supposed to be placed in /lua/custom/

local M = {}
local userPlugins = require "custom.plugins"
local pluginConfs = require "custom.plugins.configs"

-- M.mappings = require "custom.mappings"

M.plugins = {
    user = userPlugins,

    options = {
       lspconfig = {
         setup_lspconf = "custom.plugins.lspconfig"
       },
    },

    override = {
        ["nvim-treesitter/nvim-treesitter"] = pluginConfs.treesitter
    }
}

M.options = {
    user = function()
        vim.o.sessionoptions="blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal"
        vim.o.shiftwidth = 4
        vim.o.expandtab = true
        vim.o.autoindent = false
        -- vim.o.softtabstop = 4
        -- vim.o.ff = unix
        -- vim.o.tabstop = 4
        -- vim.o.clipboard+ = unnamedplus
    end
}
-- M.options = {
--   lspconfig = {
--     setup_lspconf = "custom.plugins.lspconfig",
--   }
-- }

M.ui = {
    theme = "kanagawa",
    -- changed_themes = {
    --     rxyhn = {
    --         base_16 = {
    --             base02 = "#202b2f",
    --             base03 = "#283337"
    --         }
    --     }
    -- }
}


return M
