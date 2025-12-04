-- lazy.nvim package manager
require("config.lazy")

-- neovim options
require("config.options")

-- keybindings
require("config.mappings")

-- auto commands
require("config.autocmd")

-- set gruvbox theme
vim.cmd.colorscheme "gruvbox-material"
