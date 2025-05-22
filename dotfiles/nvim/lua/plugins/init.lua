return {{
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
        require "configs.conform"
    end
}, -- {
--   "williamboman/mason.nvim",
--    opts = { ensure_installed = { "prettier" } },
-- },
-- {
--  "supermaven-inc/supermaven-nvim",
--   lazy=false;
--   config = function()
--   require("supermaven-nvim").setup({
--     keymaps = {
--       accept_suggestion = "<C-a>",
--       clear_suggestion = "<C-]>",
--
--       accept_word = "<C-j>",
--       next_word = "<C-k>",
--       },
--     color = {
--       suggestion_color = "#F6FB7A",
--       cterm = 244,
--     },
--     -- disable_keymaps = false  -- disables built in keymaps for more manual control
--   })
--   end,
-- },
--
-- These are some examples, uncomment them if you want to see them work!
{
    "neovim/nvim-lspconfig",
    config = function()
        require("nvchad.configs.lspconfig").defaults()
        require "configs.lspconfig"
    end
}, 
{
    "williamboman/mason.nvim",
    opts = {
        ensure_installed = {
            "lua-language-server", "stylua",
            "html-lsp", "css-lsp" , "prettier", "pyright", "gopls"
        },
    }, 
},
{
    "ray-x/go.nvim",
    dependencies = { -- optional packages
    "ray-x/guihua.lua", "neovim/nvim-lspconfig", "nvim-treesitter/nvim-treesitter"},
    config = function()
        require("go").setup()
    end,
    event = {"CmdlineEnter"},
    ft = {"go", 'gomod'},
    build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
}, {
    "nvim-treesitter/nvim-treesitter",
    opts = {
        ensure_installed = {"vim", "lua", "vimdoc", "html", "css"}
    }
}, {
    "mrcjkb/rustaceanvim",
    version = "^4",
    lazy = false,
    ["rust-analyzer"] = {
        cargo = {
            allFeatures = true
        }
    }
}, {
    "christoomey/vim-tmux-navigator",
    lazy = false
}}
