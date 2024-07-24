-- example file i.e lua/custom/init.lua

-- load your globals, autocmds here or anything .__.
-- vim.o.sessionoptions="blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal"
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.tabstop = 4
vim.o.expandtab = true

-- autosession
--
vim.o.sessionoptions="blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
vim.opt.termguicolors = true

vim.cmd [[
  autocmd FileType lua setlocal tabstop=2 shiftwidth=2 expandtab softtabstop=2
]]
