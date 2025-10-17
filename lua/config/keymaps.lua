-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Control-backspace should delete the current word in insert mode
vim.api.nvim_set_keymap("i", "<C-BS>", "<Esc>caw", { noremap = true })
vim.api.nvim_set_keymap("i", "<C-H>", "<Esc>caw", { noremap = true })

-- Double-space to save all in normal model
vim.api.nvim_set_keymap("n", "<leader><leader>", ":wall<Enter>", { noremap = true })

-- Navigation in insert mode
vim.api.nvim_set_keymap("i", "<C-h>", "<Left>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-j>", "<Down>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<C-l>", "<Right>", { noremap = true, silent = true })
-- FIXME this doesn't actaully seem to work, some other binding conflicts
vim.api.nvim_set_keymap("i", "<C-k>", "<Up>", { noremap = true, silent = true })
