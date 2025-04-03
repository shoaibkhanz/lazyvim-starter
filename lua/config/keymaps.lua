-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- create a keybinding for <Esc>
vim.keymap.set("i", "jj", "<Esc>", { noremap = true })

-- nvim-python-repl
vim.keymap.set("v", "<leader>rr", function()
  require("nvim-python-repl").send_visual_to_repl()
end, { desc = "Send visual selection to REPL" })

-- Create a Keymap for Noice
vim.keymap.set("n", "<leader>nd", "<cmd>NoiceDismiss<CR>", { desc = "Dismiss Noice Message" })

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
vim.keymap.set(
  "n",
  "<leader>ac",
  "<cmd>AvanteSwitchProvider claude<CR>",
  { desc = "switch to claude as provider in avante" }
)

-- tmux navigation
vim.keymap.set("n", "<C-h>", ":<C-U>TmuxNavigateLeft<cr>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-l>", ":<C-U>TmuxNavigateRight<cr>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-j>", ":<C-U>TmuxNavigateDown<cr>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-k>", ":<C-U>TmuxNavigateUp<cr>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-\\>", ":<C-U>TmuxNavigatePrevious<cr>", { noremap = true, silent = true })
