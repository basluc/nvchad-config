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
        enable = true,
        disable = {"javascript"}
    },
}

return M
