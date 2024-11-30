-- Ensure Lazy.nvim is installed
local lazypath = vim.fn.stdpath('data') .. '/site/pack/lazy/start/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git', 'clone', '--filter=blob:none', '--branch=stable', 
    'https://github.com/folke/lazy.nvim.git', lazypath
  })
end
vim.opt.runtimepath:prepend(lazypath)

-- General settings and options
require('plugins')   -- Load plugins (empty for now)
require('settings')  -- Load settings from a separate file
require('keymaps')   -- Load keymaps from a separate file

