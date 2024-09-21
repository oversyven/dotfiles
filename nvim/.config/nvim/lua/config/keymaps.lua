-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- ============= mapping esc ==============

-- Ctrl+j and Ctrl+k as Esc
vim.keymap.set("n", "<C-j>", "<Esc>")
vim.keymap.set("i", "<C-j>", "<Esc>")
vim.keymap.set("v", "<C-j>", "<Esc>")
vim.keymap.set("s", "<C-j>", "<Esc>")
vim.keymap.set("x", "<C-j>", "<Esc>")
vim.keymap.set("c", "<C-j>", "<Esc>")
vim.keymap.set("o", "<C-j>", "<Esc>")
vim.keymap.set("l", "<C-j>", "<Esc>")
vim.keymap.set("t", "<C-j>", "<Esc>")
-- Ctrl-j is a little awkward unfortunately:
-- https://github.com/neovim/neovim/issues/5916
-- So we also map Ctrl+k
vim.keymap.set("n", "<C-k>", "<Esc>")
vim.keymap.set("i", "<C-k>", "<Esc>")
vim.keymap.set("v", "<C-k>", "<Esc>")
vim.keymap.set("s", "<C-k>", "<Esc>")
vim.keymap.set("x", "<C-k>", "<Esc>")
vim.keymap.set("c", "<C-k>", "<Esc>")
vim.keymap.set("o", "<C-k>", "<Esc>")
vim.keymap.set("l", "<C-k>", "<Esc>")
vim.keymap.set("t", "<C-k>", "<Esc>")

-- ============ Move Cursor ==============

-- go to line head and tail
vim.keymap.set("", "H", "^", { desc = "Move cursor to line head" })
vim.keymap.set("", "L", "$", { desc = "Move cursor to line tail" })

-- no arrow keys --- force yourself to use the home row
vim.keymap.set("n", "<up>", "<nop>")
vim.keymap.set("n", "<down>", "<nop>")
vim.keymap.set("i", "<up>", "<nop>")
vim.keymap.set("i", "<down>", "<nop>")
vim.keymap.set("i", "<left>", "<nop>")
vim.keymap.set("i", "<right>", "<nop>")

-- ============ Other ==============

-- quick save
vim.keymap.set("n", "<leader>ww", ":wa<cr>", { desc = "Quick Save All Files" })

-- let the left and right arrows be useful: they can switch buffers
vim.keymap.set("v", "<left>", ":bp<cr>")
vim.keymap.set("v", "<right>", ":bn<cr>")
vim.keymap.set("n", "<left>", "<cmd>bprevious<cr>", { desc = "Prev Buffer " })
vim.keymap.set("n", "<right>", "<cmd>bnext<cr>", { desc = "Next Buffer " })

-- clear search with <esc>
vim.keymap.set({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch" })

-- cooperate with system clipboard
-- prevent after use p then clipboard restore unuseless content
vim.keymap.set("v", "<leader>y", '"ay', { desc = "copy select content to registory a" })
vim.keymap.set("v", "<leader>p", '"ap', { desc = "paste registory a's content" })
vim.keymap.set("n", "<leader>y", '"ay', { desc = "copy select content to registory a" })
vim.keymap.set("n", "<leader>p", '"ap', { desc = "paste registory a's content" })
