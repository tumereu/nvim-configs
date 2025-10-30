return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      -- Use prettier to format js/ts(x) files
      javascript = { "prettierd", "prettier" },
      javascriptreact = { "prettierd", "prettier" },
      typescript = { "prettierd", "prettier" },
      typescriptreact = { "prettierd", "prettier" },
    },
  },
}
