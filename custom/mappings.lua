local M = {}

M.lazygit = {
  n = {
    ["<leader>gg"] = {"<cmd> LazyGit <CR>", "LazyGit"},
    ["<leader>do"] = {":DiffviewOpen<CR>", "DiffviewOpen"},
    ["<leader>dc"] = {":DiffviewClose<CR>", "DiffviewClose"},
    ["<leader>dan"] = {"<cmd>lua require('dapui').toggle()<CR>", "dap toggle"},
    ["<leader>dab"] = {"<cmd>lua require('dap').toggle_breakpoint()<CR>", "dap breakpoint"},
  }
}

return M
