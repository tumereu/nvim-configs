return {
  {
    "samueljoli/hurl.nvim",
    ft = { "hurl" }, -- only load for .hurl files
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("hurl").setup({
        -- optional settings here
      })
    end,
  },
}
