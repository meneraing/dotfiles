local options = {
	number = true, --numbering lines
	relativenumber = true, --toggle bound to leader nn
	tabstop = 2, --visual width of tab
  expandtab = true,
  softtabstop = 2,
  shiftwidth = 2,
  laststatus = 3,
  ruler = false,
  showmode = false, -- lualine provides it
  showcmd = false,
  splitkeep = "screen",
  smoothscroll = true,
  swapfile = false,
  signcolumn = "no",
  cursorline = true,
  undofile = true,
  clipboard = "unnamedplus", -- system clipboard integration
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.diagnostic.enable = true
vim.diagnostic.config({
	virtual_text = true,
  virtual_lines = false,
})
