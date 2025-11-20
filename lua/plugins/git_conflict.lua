return {
  {
    "akinsho/git-conflict.nvim",
    version = "2.1.0",
    config = function()
      require("git-conflict").setup({
        default_mappings = true,
        disable_diagnostics = true,
      })
    end,
  },
}
