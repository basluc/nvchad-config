local M = {}

M.setup_lsp = function(attach, capabilities)
    local lspconfig = require "lspconfig"

   -- lspservers with default config
    local servers = {
        "html",
        "cssls",
        "clangd",
        "intelephense",
        "pyright",
        "rust_analyzer",
        "remark_ls",
        "sumneko_lua",
        "yamlls",
        "dockerls",
        "tsserver"
    }

   for _, lsp in ipairs(servers) do
      lspconfig[lsp].setup {
         on_attach = attach,
         capabilities = capabilities,
      }
   end
end

return M
