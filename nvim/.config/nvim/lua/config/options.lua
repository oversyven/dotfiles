-- 行号
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

-- 持久化撤销状态
vim.opt.undofile = true

-- tab 用空格代替
vim.opt.expandtab = false
vim.opt.tabstop=4
vim.opt.softtabstop=4
vim.opt.shiftwidth=4
vim.opt.listchars = 'tab:^ ,nbsp:¬,extends:»,precedes:«,trail:•'


-- 使用终端真实颜色
vim.opt.termguicolors = true

-- add additional column in the left of line number
vim.opt.signcolumn = "yes"

-- show a column at 100 characters
vim.opt.colorcolumn = "100"


vim.opt.ignorecase = true
vim.opt.smartcase = true

-- always open split window on below/right
vim.opt.splitbelow = true
vim.opt.splitright = true


-- 系统剪贴板
vim.opt.clipboard:append("unnamedplus")


