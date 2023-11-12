local M = {}

M.options = {
  nvChad = {
    update_url = "https://github.com/NvChad/NvChad",
    update_branch = "main",
  },
}

M.ui = {
  changed_themes = {},
  theme = "gruvbox", -- default theme
  transparency = true,
}

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

M.plugins = "custom.plugins"
return M
