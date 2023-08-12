-- Remove Defaults
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- Move Selection
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selected line up" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selected line down"})

vim.keymap.set("n", "J", "mzJ`z")

-- Keep cursor in the middle of the screen
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Keep cursor centered when going down half a page" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Keep cursor centered when going up half a page" })

-- Keep search term in the middle
vim.keymap.set("n", "n", "nzzzv", { desc = "Keep search in the middle when going to next occurance" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Keep search in the middle when going to previous occurance" })

-- Copy to clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", "\"+y", { desc = "Copy text to clipboard" })

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Open netrw" })
vim.keymap.set("n", "<C-s>", "<cmd>:w<CR>", { desc = "Save current file" })
vim.keymap.set("n", "<leader><CR>", "<cmd>:so %<CR>", { desc = "Source current file" })

vim.keymap.set("n", "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>")

vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { desc = "Make file executable" })

-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next diagnostic message" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostics list" })
