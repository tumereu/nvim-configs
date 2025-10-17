return {
  {
    "kylechui/nvim-surround",
    version = "^3.0.0",
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        keymaps = {
          insert = "<c-g>z",
          insert_line = "<c-g>Z",
          normal = "yz",
          normal_cur = "yzz",
          normal_line = "yZ",
          normal_cur_line = "yZZ",
          visual = "z",
          visual_line = "Z",
          delete = "dz",
          change = "cz",
          change_line = "cZ",
        },
      })
    end,
  },
}
