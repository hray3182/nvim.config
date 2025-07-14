-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Yazi file manager keymaps
vim.keymap.set("n", "<leader>fm", "<cmd>Yazi<cr>", { desc = "Open Yazi file manager" })
vim.keymap.set("n", "<leader>ft", "<cmd>Yazi toggle<cr>", { desc = "Toggle Yazi session" })
