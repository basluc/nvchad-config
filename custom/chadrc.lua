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
  -- theme = "gruvbox", -- default theme
  transparency = true,
  hl_override = {
    -- diff clair
    -- DiffAdd = {fg="NONE", bg="#4b5632"},
    -- DiffDelete = {fg="#4b5632", bg="#563232"},
    -- DiffChange = {fg="NONE", bg="#2b3e50"},
    -- DiffText = {fg="NONE", bg="#565232"},

    -- diff gruvbox
    DiffAdd = {fg="NONE", bg="#142a03"},
    DiffDelete = {fg="#4b5632", bg="#2B030E"},
    DiffChange = {fg="NONE", bg="#3B3307"},
    DiffText = {fg="NONE", bg="#2F2103"},
  }
}

-- check core.mappings for table structure
-- qsdf
M.mappings = require "custom.mappings"
vim.opt.fillchars:append { diff = "╱" }

M.plugins = "custom.plugins"
return M
