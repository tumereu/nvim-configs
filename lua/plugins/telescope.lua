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
      -- Resume previous search
      { "<leader>fr", "<cmd>Telescope resume<cr>" },
      -- Grep from working directory
      { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Ripgrep" },
      -- Grep specifically for git conflicts
      {
        "<leader>fC",
        function()
          require("telescope.builtin").grep_string({
            search = "<<<<<<<",
            prompt_title = "Git Conflicts",
          })
        end,
        desc = "List Git conflict markers",
      },
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
