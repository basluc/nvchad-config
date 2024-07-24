local M = {}

M.lazygit = {
  n = {
    ["<leader>gg"] = {"<cmd> LazyGit <CR>", "LazyGit"},
    ["<leader>do"] = {":DiffviewOpen<CR>", "DiffviewOpen"},
    ["<leader>dc"] = {":DiffviewClose<CR>", "DiffviewClose"},
  }
}

return M
