-- lazy.nvim package manager
require("config.lazy")

-- keybindings
require("config.mappings")

-- neovim options
require("config.options")

-- set gruvbox theme
vim.cmd.colorscheme "gruvbox"
