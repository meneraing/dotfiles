return {
  "mfussenegger/nvim-lint",
  event = {
    "BufReadPre",
    "BufNewFile",
  },
  config = function()
    local lint = require("lint")

    lint.linters_by_ft = {
      lua = {'luac'},
      python = {'pylint'},
      sh = {'bash'},
      c = {'cppcheck'},
      rust = {'clippy'},
      css = {'stylelint'},
    }
  end,
}
