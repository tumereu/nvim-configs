return {
  {
    "folke/snacks.nvim",
    keys = {
      -- disable snacks’ mapping for keys registered to telescope
      { "<leader>fg", false },
    },
  },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {
      { "nvim-lua/plenary.nvim" },
    },
    keys = {
      { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Ripgrep" },
      { "<leader>fr", "<cmd>Telescope resume<cr>" },
    },
    config = function()
      local telescope = require("telescope")
      telescope.setup({
        pickers = {
          live_grep = {
            file_ignore_patterns = { "node_modules", ".git" },
          },
        },
      })
    end,
  },
}
