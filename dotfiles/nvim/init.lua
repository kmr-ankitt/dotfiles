vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46/"
vim.g.mapleader = " "

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require "configs.lazy"

-- load plugins
require("lazy").setup({
  {
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    import = "nvchad.plugins",
  },

  { import = "plugins" },
}, lazy_config)

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require "options"
require "nvchad.autocmds"

vim.schedule(function()
  require "mappings"
end)

-- Disable compatibility to old-time vi
vim.opt.compatible = false

-- Show matching
vim.opt.showmatch = true

-- Case insensitive
vim.opt.ignorecase = true

-- Enable mouse for visual mode
vim.opt.mouse = 'v'

-- Highlight search
vim.opt.hlsearch = true

-- Incremental search
vim.opt.incsearch = true

-- Number of columns occupied by a tab
vim.opt.tabstop = 4

-- See multiple spaces as tabstops so <BS> does the right thing
vim.opt.softtabstop = 4

-- Converts tabs to white space
vim.opt.expandtab = true

-- Width for autoindents
vim.opt.shiftwidth = 4

-- Indent a new line the same amount as the line just typed
vim.opt.autoindent = true

-- Add line numbers
vim.opt.number = true

-- Get bash-like tab completions
vim.opt.wildmode = {'longest', 'list'}

-- Allow auto-indenting depending on file type
vim.cmd('filetype plugin indent on')

-- Syntax highlighting
vim.cmd('syntax on')

-- Enable mouse click
vim.opt.mouse = 'a'

-- Using system clipboard
vim.opt.clipboard = 'unnamedplus'

-- Speed up scrolling in Vim
vim.opt.ttyfast = true


-- Define a helper function to set highlight groups
local function set_highlight(group, properties)
    local command = 'highlight ' .. group
    for k, v in pairs(properties) do
        command = command .. ' ' .. k .. '=' .. v
    end
    vim.cmd(command)
end

-- Setting the highlight groups
set_highlight('NonText', {ctermbg='none', guibg='NONE'})
set_highlight('Normal', {guibg='NONE', ctermbg='NONE'})
set_highlight('NormalNC', {guibg='NONE', ctermbg='NONE'})
set_highlight('SignColumn', {ctermbg='NONE', ctermfg='NONE', guibg='NONE'})

set_highlight('Pmenu', {ctermbg='NONE', ctermfg='NONE', guibg='NONE'})
set_highlight('FloatBorder', {ctermbg='NONE', ctermfg='NONE', guibg='NONE'})
set_highlight('NormalFloat', {ctermbg='NONE', ctermfg='NONE', guibg='NONE'})
set_highlight('TabLine', {ctermbg='None', ctermfg='None', guibg='None'})

