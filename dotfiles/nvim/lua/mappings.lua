require "nvchad.mappings"

local M = {}

M.general = {
    n = {
        ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
        ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window right" },
        ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "window down" },
    },
}

local map = vim.keymap.set

-- Normal mode: `;` enters command mode
map("n", ";", ":", { desc = "CMD enter command mode" })

-- Insert mode: `jk` exits to Normal mode
map("i", "jk", "<ESC>")

-- Uncomment if needed for saving via Ctrl + S
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- Copilot key mapping in Insert mode
map("i", "<C-A>", 'copilot#Accept("\\<CR>")', {
    expr = true,
    replace_keycodes = false,
})

-- Disable Copilot's default Tab mapping
vim.g.copilot_no_tab_map = true

return M

