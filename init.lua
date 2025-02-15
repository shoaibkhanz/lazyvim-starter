-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

return {
  -- -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  },
}
