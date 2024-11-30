-- settings.lua: General Neovim settings

vim.cmd("colorscheme kanagawa-dragon")
-- Line numbers
vim.o.number = true         -- Enable line numbers
vim.o.relativenumber = true -- Enable relative line numbers

-- Tabs and indentation
vim.o.expandtab = true     -- Use spaces instead of tabs
vim.o.tabstop = 4          -- Set the width of a tab
vim.o.shiftwidth = 4       -- Set the number of spaces for indentation
vim.o.softtabstop = 4      -- Number of spaces per tab when editing

-- Search settings
vim.o.ignorecase = true    -- Case insensitive searching
vim.o.smartcase = true     -- Case-sensitive if uppercase is used in search

-- Enable line wrapping
vim.o.wrap = false 

-- Set clipboard to be system-wide (for copy/paste between Neovim and the system)
vim.o.clipboard = 'unnamedplus'

-- Backup and swap settings
vim.o.backup = false       -- Disable backup files
vim.o.writebackup = false  -- Disable write backup files
vim.o.swapfile = false     -- Disable swap files

-- Tagbar Configuration
-- Set Tagbar to open on the right side of the screen
vim.g.tagbar_position = 'left'

-- Set the width of the Tagbar window (adjust as needed)
vim.g.tagbar_width = 25 

-- Optionally, you can set more Tagbar settings here (e.g., sort tags, set display mode, etc.)
vim.g.tagbar_sort = 0  -- 0 = Do not sort, 1 = Sort alphabetically


local M = {
    "nvim-treesitter/nvim-treesitter",
    build = function()
        require("nvim-treesitter.install").update({ with_sync = true })()
    end,
}

return { M }


