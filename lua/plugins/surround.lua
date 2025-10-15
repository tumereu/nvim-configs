return {
  {
    "kylechui/nvim-surround",
    version = "^3.0.0",
    event = "VeryLazy",
    init = function()
      -- Remove visual mode x so that it can be used to add surroundings via nvim.surround
      vim.keymap.del("v", "x")
    end,
    config = function()
      require("nvim-surround").setup({
        keymaps = {
          insert = "<c-g>x",
          insert_line = "<c-g>X",
          normal = "yx",
          normal_cur = "yxx",
          normal_line = "yX",
          normal_cur_line = "yXX",
          visual = "x",
          visual_line = "X",
          delete = "dx",
          change = "cx",
          change_line = "cX",
        },
      })
    end,
  },
}
