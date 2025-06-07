local options = {
	number = true, --numbering lines
	relativenumber = true, --toggle bound to leader nn
	tabstop = 2, --visual width of tab
  expandtab = true,
  softtabstop = 2,
  shiftwidth = 2,
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.diagnostic.config({
	signs = false,
})
