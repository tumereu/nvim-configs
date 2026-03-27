return {
  "folke/snacks.nvim",
  opts = {
    keys = {
      -- disable snacks’ mapping for keys registered to telescope
      { "<leader>fg", false },
    },
    picker = {
      sources = {
        explorer = {
          hidden = true, -- show dotfiles
          ignored = true, -- show gitignored files
        },
      },
    },
  },
}
