-- Please check NvChad docs if you're totally new to nvchad + dont know lua!!
-- This is an example init file in /lua/custom/
-- this init.lua can load stuffs etc too so treat it like your ~/.config/nvim/

-- MAPPINGS
local map = nvchad.map

-- vim.opt.tabstop = 4
-- vim.opt.expandtab = true
-- vim.opt.autoindent = true

--map("n", "<leader>cc", ":Telescope <CR>")
--map("n", "<leader>q", ":q <CR>")
map("n", "<leader>ai", ':setlocal autoindent <CR>')
-- map("n", "<C-Down", ':m +1 <cr>')
-- map("n", "<C-Up>", ':m -2 <cr>')
-- nnoremap <C-Up> :m -2 <cr>
-- nnoremap <C-Down> :m +1 <cr>

-- local treesitter = require 'nvim-treesitter.configs'
-- NOTE: the 4th argument in the map function is be a table i.e options but its most likely un-needed so dont worry about it
-- local conf = require 'custom.plugins.configs'
-- treesitter.setup {
--     ensure_installed = conf.treesitter.ensure_installed,
--     indent = conf.treesitter.indent,
--     highlight = conf.treesitter.highlight,
-- }
