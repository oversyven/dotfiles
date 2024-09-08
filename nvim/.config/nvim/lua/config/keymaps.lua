-- ============= mapping esc ==============

-- Ctrl+j and Ctrl+k as Esc
vim.keymap.set('n', '<C-j>', '<Esc>')
vim.keymap.set('i', '<C-j>', '<Esc>')
vim.keymap.set('v', '<C-j>', '<Esc>')
vim.keymap.set('s', '<C-j>', '<Esc>')
vim.keymap.set('x', '<C-j>', '<Esc>')
vim.keymap.set('c', '<C-j>', '<Esc>')
vim.keymap.set('o', '<C-j>', '<Esc>')
vim.keymap.set('l', '<C-j>', '<Esc>')
vim.keymap.set('t', '<C-j>', '<Esc>')
-- Ctrl-j is a little awkward unfortunately:
-- https://github.com/neovim/neovim/issues/5916
-- So we also map Ctrl+k
vim.keymap.set('n', '<C-k>', '<Esc>')
vim.keymap.set('i', '<C-k>', '<Esc>')
vim.keymap.set('v', '<C-k>', '<Esc>')
vim.keymap.set('s', '<C-k>', '<Esc>')
vim.keymap.set('x', '<C-k>', '<Esc>')
vim.keymap.set('c', '<C-k>', '<Esc>')
vim.keymap.set('o', '<C-k>', '<Esc>')
vim.keymap.set('l', '<C-k>', '<Esc>')
vim.keymap.set('t', '<C-k>', '<Esc>')

-- ============ Move Cursor ==============

-- make cursor move faster
vim.keymap.set('n', "<leader>j", "10j")
vim.keymap.set('n', "<leader>k", "10k")

-- go to line head and tail
vim.keymap.set("", "H", "^", { desc = "Move cursor to line head" })
vim.keymap.set("", "L", "$", { desc = "Move cursor to line tail" })

-- no arrow keys --- force yourself to use the home row
vim.keymap.set('n', '<up>', '<nop>')
vim.keymap.set('n', '<down>', '<nop>')
vim.keymap.set('i', '<up>', '<nop>')
vim.keymap.set('i', '<down>', '<nop>')
vim.keymap.set('i', '<left>', '<nop>')
vim.keymap.set('i', '<right>', '<nop>')


-- move line up and down
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "move line(s) down" })
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "move line(s) up" })
vim.keymap.set("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "move line(s) down" })
vim.keymap.set("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "move line(s) up" })
vim.keymap.set("i", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "move line(s) down" })
vim.keymap.set("i", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "move line(s) up" })

-- NOTE: Need to modify to enable on osx
-- vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "move line(s) down" })
-- vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "move line(s) up" })
-- vim.keymap.set("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "move line(s) down" })
-- vim.keymap.set("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "move line(s) up" })
-- vim.keymap.set("i", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "move line(s) down" })
-- vim.keymap.set("i", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "move line(s) up" })

-- move cursor to other windows using C-hjkl 
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to Left window"} )
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to Lower window"} )
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to Upper window"} )
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to Right window"} )

-- change buffers
vim.keymap.set("n", "<left>", "<cmd>bprevious<cr>", { desc = "Prev Buffer " })
vim.keymap.set("n", "<right>", "<cmd>bnext<cr>", { desc = "Next Buffer " })


-- ============== Search ==============

-- always center search results
vim.keymap.set('n', 'n', 'nzz', { silent = true }, { desc = "" })
vim.keymap.set('n', 'N', 'Nzz', { silent = true }, { desc = "" })
vim.keymap.set('n', '*', '*zz', { silent = true }, { desc = "" })
vim.keymap.set('n', '#', '#zz', { silent = true }, { desc = "" })
vim.keymap.set('n', 'g*', 'g*zz', { silent = true }, { desc = "" })

-- clear search with <esc>
vim.keymap.set({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch" })
vim.keymap.set({ "i", "n" }, "<leader>h", "<cmd>noh<cr><esc>", { desc = "clear hlsearch" })


-- ============== Other ==============

-- let the left and right arrows be useful: they can switch buffers
vim.keymap.set('v', '<left>', ':bp<cr>')
vim.keymap.set('v', '<right>', ':bn<cr>')

-- comments NOTE:Don't take effect!
vim.keymap.set("n", "<C-/>", "gc", { desc = "comment current line(s)"})
vim.keymap.set("n", "<C-?>", "gcc", { desc = "comment current line(s)"})

-- NOTE:three commands below aren't work
-- quick-open
vim.keymap.set('', '<C-p>', '<cmd>files<cr>')
-- search buffers
vim.keymap.set('n', '<leader>;', '<cmd>buffers<cr>')
-- quick-save
vim.keymap.set('n', '<leader>w', '<cmd>w<cr>')

-- cooperate with system clipboard
-- prevent after use p then clipboard restore unuseless content
vim.keymap.set('v', '<leader>y', '"ay', { desc = "copy select content to registory a" })
vim.keymap.set('v', '<leader>p', '"ap', { desc = "paste registory a's content" })
vim.keymap.set('n', '<leader>y', '"ay', { desc = "copy select content to registory a" })
vim.keymap.set('n', '<leader>p', '"ap', { desc = "paste registory a's content" })

-- split window TODO:

