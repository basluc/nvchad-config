local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

local servers = {
    "pyright",
    "rust_analyzer",
    "intelephense",
    "html",
    "cssls",
    "docker_compose_language_service",
    "intelephense",
    "yamlls",
    "tsserver",
    "remark_ls",
    -- "gopls",
    -- "gdscript",
    "twiggy_language_server",
}

for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        on_attach = on_attach,
        capabilities = capabilities,
    }
end
