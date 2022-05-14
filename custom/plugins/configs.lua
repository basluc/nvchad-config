M = {}

M.treesitter = {
    ensure_installed = {
        "lua",
        "vim",
        "bash",
        "css",
        "html",
        "javascript",
        "jsdoc",
        "json",
        "php",
        "python",
        "regex",
        "scss",
        "typescript",
        "yaml",
        "rust",
    },
    indent = {
        enable = true
    },

    -- highlight = {
    --     enable = true,
    --     additional_vim_regex_highlighting = true
    -- },
}

-- M.workspaces = function()
--   hooks = {
--     open = function()
--         require('sessions').load(nil, {silent=true})
--     end
--   }
-- end

return M
