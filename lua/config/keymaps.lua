-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- create a keybinding for <Esc>
vim.keymap.set("i", "jj", "<Esc>", { noremap = true })

-- nvim-python-repl
vim.keymap.set("v", "<leader>tt", function()
  require("nvim-python-repl").send_visual_to_repl()
end, { desc = "Send visual selection to REPL" })

-- Create a Keymap for Noice
vim.keymap.set("n", "<leader>nd", "<cmd>NoiceDismiss<CR>", { desc = "Dismiss Noice Message" })

-- Move the cursor using io and jk rather than arrows
vim.keymap.set("i", "<C-i>", "<Left>")
vim.keymap.set("i", "<C-o>", "<Right>")
vim.keymap.set("i", "<C-k>", "<Up>")
vim.keymap.set("i", "<C-j>", "<Down>")

-- avante
vim.keymap.set(
  "n",
  "<leader>ao",
  "<cmd>AvanteSwitchProvider openai<CR>",
  { desc = "switch to openai as provider in avante" }
)
vim.keymap.set(
  "n",
  "<leader>ag",
  "<cmd>AvanteSwitchProvider copilot<CR>",
  { desc = "switch to github copilot as provider in avante" }
)
