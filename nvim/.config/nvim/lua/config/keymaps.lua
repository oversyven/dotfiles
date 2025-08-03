local keymap = vim.keymap

-- ============= mapping esc ==============

-- map Ctrl+j as Esc
keymap.set("n", "<C-j>", "<Esc>")
keymap.set("i", "<C-j>", "<Esc>")
keymap.set("v", "<C-j>", "<Esc>")
keymap.set("s", "<C-j>", "<Esc>")
keymap.set("x", "<C-j>", "<Esc>")
keymap.set("c", "<C-j>", "<Esc>")
keymap.set("o", "<C-j>", "<Esc>")
keymap.set("l", "<C-j>", "<Esc>")
keymap.set("t", "<C-j>", "<Esc>")
-- Ctrl-j is a little awkward unfortunately:
-- https://github.com/neovim/neovim/issues/5916
-- So we also map Ctrl+k
keymap.set("n", "<C-k>", "<Esc>")
keymap.set("i", "<C-k>", "<Esc>")
keymap.set("v", "<C-k>", "<Esc>")
keymap.set("s", "<C-k>", "<Esc>")
keymap.set("x", "<C-k>", "<Esc>")
keymap.set("c", "<C-k>", "<Esc>")
keymap.set("o", "<C-k>", "<Esc>")
keymap.set("l", "<C-k>", "<Esc>")
keymap.set("t", "<C-k>", "<Esc>")

-- ============ Move Cursor ==============

-- go to line head and tail
keymap.set("", "H", "^", { desc = "Move cursor to line head" })
keymap.set("", "L", "$", { desc = "Move cursor to line tail" })

-- no arrow keys --- force yourself to use the home row
keymap.set("n", "<up>", "<nop>")
keymap.set("n", "<down>", "<nop>")
keymap.set("i", "<up>", "<nop>")
keymap.set("i", "<down>", "<nop>")
keymap.set("i", "<left>", "<nop>")
keymap.set("i", "<right>", "<nop>")

-- better movement 当line被wrap的时候变成两行,设置后上下移动能够在这wrap的两行上移动,传统的会跳过这两行
keymap.set({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
keymap.set({ "n", "x" }, "<Down>", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
keymap.set({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })
keymap.set({ "n", "x" }, "<Up>", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })

-- Resize window using <ctrl> arrow keys
keymap.set("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
keymap.set("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
keymap.set("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })


-- Move Lines
keymap.set("n", "<A-j>", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move Down" })
keymap.set("n", "<A-k>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move Up" })
keymap.set("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
keymap.set("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
keymap.set("v", "<A-j>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down" })
keymap.set("v", "<A-k>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up" })


-- ============ Other ==============

-- quick save
keymap.set({ "i", "x", "n", "s" }, "<C-s>", ":wa<cr>", { desc = "Quick Save All Files" })


-- let the left and right arrows be useful: they can switch buffers
keymap.set("v", "<left>", ":bp<cr>")
keymap.set("v", "<right>", ":bn<cr>")
keymap.set("n", "<left>", "<cmd>bprevious<cr>", { desc = "Prev Buffer " })
keymap.set("n", "<right>", "<cmd>bnext<cr>", { desc = "Next Buffer " })

-- clear search with <esc>
keymap.set({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch" })

-- 撤销到检查点处
-- insert 模式下使用空格或回车就创建一个检查点
keymap.set("i", " ", " <c-g>u")
keymap.set("i", "<CR>", "<CR><c-g>u")

-- better indenting
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- ============ Past and Copy ==============

-- prevent after use p then clipboard restore unused content
keymap.set("v", "<leader>y", '"ay', { desc = "copy select content to registory a" })
keymap.set("v", "<leader>p", '"ap', { desc = "paste registory a's content" })
keymap.set("n", "<leader>y", 'viw"ay', { desc = "copy select content to registory a" })
keymap.set("n", "<leader>p", 'viw"ap', { desc = "paste registory a's content" })

