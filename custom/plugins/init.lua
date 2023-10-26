-- local configs = require "configs"
-- local lspconfig = require "lspconfig"

return {
    {'hrsh7th/vim-vsnip'},
    {'hrsh7th/vim-vsnip-integ'},

    {
        "nvim-treesitter/nvim-treesitter",
        opts = function ()
            require "custom.plugins.configs.treesitter"
        end
    },

    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "lua-language-server",
                "pyright",
                "rust-analyzer",
                "intelephense",
                "html-lsp",
                "css-lsp",
                "dockerfile-language-server",
                "gopls",
            },
        },
    },

    {
        "neovim/nvim-lspconfig",
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.plugins.configs.lspconfig"
            vim.diagnostic.config({
              virtual_text = false
            })
        end,
    },

    {
        "rmagatti/auto-session",
        lazy = false,
        config = function ()
            require("auto-session").setup {
                  log_level = "error",
                  cwd_change_handling = {
                    restore_upcoming_session = true, -- already the default, no need to specify like this, only here as an example
                    pre_cwd_changed_hook = nil, -- already the default, no need to specify like this, only here as an example
                    -- post_cwd_changed_hook = function() -- example refreshing the lualine status line _after_ the cwd changes
                    --   require("lualine").refresh() -- refresh lualine so the new session name is displayed in the status bar
                    -- end,
                },
            }
        end
    },

    {
        "sindrets/diffview.nvim",
        after = "plenary.nvim",
        config = function()
            require("diffview").setup()
        end,
    },

    {
        "nvim-lua/plenary.nvim",
        rm_default_opts = true
    },

    -- {
    --     'kkoomen/vim-doge',
    --     lazy = "false",
    --     run = ':call doge#install()'
    -- },
    
    {
        "danymat/neogen",
        config = function()
            require('neogen').setup {}
        end,
        requires = "nvim-treesitter/nvim-treesitter",
        lazy = false
    },

    {'kdheepak/lazygit.nvim', lazy = false},

    {
        'rcarriga/nvim-notify',
        config = function()
            require("notify").setup({background_colour = "#000000"})
        end
    },

    { 
        "chentoast/marks.nvim",
        lazy = false,
        config = function ()
            require("marks").setup({
              -- whether to map keybinds or not. default true
              default_mappings = true,
              -- which builtin marks to show. default {}
              builtin_marks = false,
              -- whether movements cycle back to the beginning/end of buffer. default true
              cyclic = true,
              -- whether the shada file is updated after modifying uppercase marks. default false
              force_write_shada = false,
              -- how often (in ms) to redraw signs/recompute mark positions. 
              -- higher values will have better performance but may cause visual lag, 
              -- while lower values may cause performance penalties. default 150.
              refresh_interval = 250,
              -- sign priorities for each type of mark - builtin marks, uppercase marks, lowercase
              -- marks, and bookmarks.
              -- can be either a table with all/none of the keys, or a single number, in which case
              -- the priority applies to all marks.
              -- default 10.
              sign_priority = { lower=10, upper=15, builtin=8, bookmark=20 },
              -- disables mark tracking for specific filetypes. default {}
              excluded_filetypes = {},
              -- marks.nvim allows you to configure up to 10 bookmark groups, each with its own
              -- sign/virttext. Bookmarks can be used to group together positions and quickly move
              -- across multiple buffers. default sign is '!@#$%^&*()' (from 0 to 9), and
              -- default virt_text is "".
              bookmark_0 = {
                sign = "⚑",
                virt_text = "hello world",
                -- explicitly prompt for a virtual line annotation when setting a bookmark from this group.
                -- defaults to false.
                annotate = false,
              },
              mappings = {}
            }) 
        end
    },
}
