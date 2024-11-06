-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Delete default resize window keymaps
vim.keymap.del("n", "<C-Up>")
vim.keymap.del("n", "<C-Down>")
vim.keymap.del("n", "<C-Left>")
vim.keymap.del("n", "<C-Right>")

-- Move to window/pane using the <ctrl> + arrow keys
vim.keymap.set("n", "<C-Left>", "<cmd>TmuxNavigateLeft<cr>", { desc = "Go to Left Window", remap = true })
vim.keymap.set("n", "<C-Down>", "<cmd>TmuxNavigateDown<cr>", { desc = "Go to Lower Window", remap = true })
vim.keymap.set("n", "<C-Up>", "<cmd>TmuxNavigateUp<cr>", { desc = "Go to Upper Window", remap = true })
vim.keymap.set("n", "<C-Right>", "<cmd>TmuxNavigateRight<cr>", { desc = "Go to Right Window", remap = true })

-- Resize window using <ctrl> arrow keys
vim.keymap.set("n", "<M-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
vim.keymap.set("n", "<M-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
vim.keymap.set("n", "<M-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
vim.keymap.set("n", "<M-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

-- save file
vim.keymap.set({ "i", "x", "n", "s" }, "<C-s>", "<cmd>wall<cr><esc>", { desc = "Save all Files" })
vim.keymap.set({ "i", "x", "n", "s" }, "<F2>", "<cmd>wall<cr><esc>", { desc = "Save all Files" })

-- buffers
vim.keymap.del("n", "<leader>`")

-- toogle comments
vim.keymap.set("n", "<c-d>", "gcc", { remap = true, desc = "Toggle comment for line" })
vim.keymap.set("v", "<c-d>", "gc", { remap = true, desc = "Toggle comment for selection" })
vim.keymap.set("i", "<c-d>", "<esc>gcc", { remap = true, desc = "Toggle comment for line" })

-- Invoke Telescope undo
vim.keymap.set("n", "<c-u>", "<cmd>Telescope undo<cr>")
