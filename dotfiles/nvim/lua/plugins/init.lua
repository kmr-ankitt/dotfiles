return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  {
   "supermaven-inc/supermaven-nvim",
    lazy=false;
    config = function()
    require("supermaven-nvim").setup({
      keymaps = {
        accept_suggestion = "<C-Tab>",
        clear_suggestion = "<C-]>",
        accept_word = "<C-j>",
        next_word = "<C-k>",
        },
      color = {
        suggestion_color = "#F6FB7A",
        cterm = 244,
      },
      -- disable_keymaps = false  -- disables built in keymaps for more manual control
    })
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  -- {
  --   "neovim/nvim-lspconfig",
  --   config = function()
  --     require("nvchad.configs.lspconfig").defaults()
  --     require "configs.lspconfig"
  --   end,
  -- },
  --
  -- {
  -- 	"williamboman/mason.nvim",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"lua-language-server", "stylua",
  -- 			"html-lsp", "css-lsp" , "prettier"
  -- 		},
  -- 	},
  -- },
  --
  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
