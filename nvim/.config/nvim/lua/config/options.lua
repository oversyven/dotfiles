-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- 持久化撤销状态
vim.opt.undofile = true

-- tab 用空格代替
vim.opt.expandtab = false
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.listchars = "tab:^ ,nbsp:¬,extends:»,precedes:«,trail:•"

-- 使用终端真实颜色
vim.opt.termguicolors = true

-- show a column at 100 characters
vim.opt.colorcolumn = "100"
