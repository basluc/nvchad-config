local M = {}

-- M.setup_lsp = function(attach, capabilities)
local lspconfig = require "lspconfig"

local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
 -- lspservers with default config
  -- local attach = require("plugins.configs.lspconfi")
local servers = {
  "sumneko_lua",
  "pyright",
  "rust_analyzer",
  "intelephense",
  "html",
  "cssls",
  "dockerls",
  "intelephense",
  "yamlls",
    -- "html",
    -- "lua-language-server"
    -- "cssls",
    -- "clangd",
    -- "intelephense",
    -- "pyright",
    -- "rust_analyzer",
    -- "remark_ls",
    -- "sumneko_lua",
    -- "yamlls",
    -- "dockerls",
    -- "tsserver"
}

 for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
       on_attach = on_attach,
       capabilities = capabilities,
    }
 end
-- end

-- return M
