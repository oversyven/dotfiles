-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- 定义一些变量
local opt = vim.opt
local indent = 4

opt.clipboard = "unnamedplus"
opt.confirm = true -- 退出时提示是否保存更改
opt.cursorline = true -- 高亮 cursor 所在行
opt.number = true
opt.relativenumber = true
opt.wrap = false -- disable line wrap


-- 拼写检查
opt.spell = false
opt.spelllang = { "en", "cjk" } -- 英文和汉字
opt.spelloptions = "camel" -- 允许驼峰

-- 持久化撤销状态
opt.undofile = true
opt.undolevels = 1000

-- tab 用空格代替(禁用中)
opt.expandtab = false
opt.tabstop = indent
opt.softtabstop = indent
opt.shiftwidth = indent
opt.listchars = "tab:^ ,nbsp:¬,extends:»,precedes:«,trail:•"

-- 使用终端真实颜色
opt.termguicolors = true

opt.timeoutlen = 500 -- 使用组合键时两个按键之间时间间隔,ms

opt.jumpoptions = "stack" -- g d跳转的时候像 stack 一样, 好像不设置也能在vscode中生效


