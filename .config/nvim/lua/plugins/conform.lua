return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local conform = require("conform")

    conform.setup({
      formatters_by_ft = {
        css = { "prettier" },
        json = { "prettier" },
        yaml = { "prettier" },
        markdown = { "prettier" },
        lua = { "stylua" },
        python = { "black" },
      },
    })
  end,
}
