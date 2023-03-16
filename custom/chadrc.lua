local M = {}

M.options = {
  nvChad = {
    update_url = "https://github.com/NvChad/NvChad",
    update_branch = "main",
  },
}

M.ui = {
  -- hl = highlights,
  -- hl_add = {},
  -- hl_override = {},
  changed_themes = {},
  -- theme_toggle = { "onedark", "one_light" },
  theme = "gruvbox", -- default theme
  transparency = true,
}

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

M.plugins = "custom.plugins"
return M
