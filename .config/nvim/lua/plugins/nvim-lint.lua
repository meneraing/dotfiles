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
      c = {'cpplint'},
      rust = {'clippy'},
      css = {'stylelint'},
    }
    lint.linters.pylint.cmd = 'python'
    lint.linters.pylint.args = {'-m', 'pylint', '-f', 'json'}
  end,
}
