-- Just an example, supposed to be placed in /lua/custom/

local M = {}
local userPlugins = require "custom.plugins"
local pluginConfs = require "custom.plugins.configs"

-- M.mappings = require "custom.mappings"

M.plugins = {
    user = userPlugins,

    override = {
        ["nvim-treesitter/nvim-treesitter"] = pluginConfs.treesitter
    }
}

-- M.options = {
--     user = function()
--         vim.o.sessionoptions="blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal"
--         vim.o.shiftwidth = 4
--         vim.o.expandtab = true
--         vim.o.autoindent = true
--         vim.o.softtabstop = 4
--         vim.o.tabstop = 4
--     end
-- }

M.ui = {
    theme = "kanagawa",
}

return M
