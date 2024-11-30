-- keymaps.lua: Custom key mappings

-- Map space as leader key
vim.g.mapleader = ' '

vim.api.nvim_set_keymap("n", "<leader>wv", ":vsplit<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>wh", ":split<CR>", { noremap = true, silent = true })



-- keymappings.lua

-- Keybinding for fzf file search
--vim.api.nvim_set_keymap('n', '<Leader>fzf', ':Files<CR>', { noremap = true, silent = true })  -- Search files with fzf

-- Keybinding for ripgrep search
-- vim.api.nvim_set_keymap('n', '<leader>rg', ':Rg<CR>', { noremap = true, silent = true })

-- Keybindings for LSP functionality
vim.api.nvim_set_keymap('n', '<Leader>gd', ':lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'K', ':lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true })

--NIM Tree
--vim.api.nvim_set_keymap('n', '<leader>ft', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

--TagBar
vim.api.nvim_set_keymap('n', '<leader>fo', ':TagbarToggle<CR>', { noremap = true, silent = true })
-- Keybindings for interacting with ChatGPT
vim.api.nvim_set_keymap("n", "<leader>cg", ":ChatGPT<CR>", { noremap = true, silent = true })

    -- Set up keybindings for Telescope
local builtin = require('telescope.builtin')
    -- Find files
    vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<CR>', { noremap = true, silent = true })
    -- Live grep (searching inside files)
    vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>Telescope live_grep<CR>', { noremap = true, silent = true })
    -- Find buffers
    vim.api.nvim_set_keymap('n', '<leader>fb', '<cmd>Telescope buffers<CR>', { noremap = true, silent = true })
    -- Find help tags (search Neovim help)
    vim.api.nvim_set_keymap('n', '<leader>fh', '<cmd>Telescope help_tags<CR>', { noremap = true, silent = true })
    -- Man pages
    vim.api.nvim_set_keymap('n', '<leader>fm', '<cmd>Telescope man_pages<CR>', { noremap = true, silent = true })
    -- Recently used files
    vim.api.nvim_set_keymap('n', '<leader>fr', '<cmd>Telescope oldfiles<CR>', { noremap = true, silent = true })

