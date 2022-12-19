-- Remove Defaults
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Move Selection
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")

-- Keep cursor in the middle of the screen
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keep search term in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Copy to clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")

vim.keymap.set("n", "<leader>pv", "<cmd>Ex<CR>")
vim.keymap.set("n", "<C-s>", "<cmd>:w<CR>")
vim.keymap.set("n", "<leader><CR>", "<cmd>:so %<CR>")

vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

-- TMUX Sessionizer
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- Make file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>")
