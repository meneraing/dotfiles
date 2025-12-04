-- mappings, including plugins

local function map(m, k, v, d)
	vim.keymap.set(m, k, v, { desc = d, noremap = true, silent = true })
end

-- fzf and grep
map("n", "<leader>ff", ":FzfLua files<CR>", "Fuzzy find files") --search cwd
map("n", "<leader>fh", ":FzfLua files cwd=~/<CR>", "Fuzzy find files") --search cwd
map("n", "<leader>g", ":FzfLua live_grep<CR>", "Live grep current project") --grep
map("n", "<leader>G", ":FzfLua grep_cword<CR>", "Search word under cursor") --grep word under cursor

-- buffers
map("n", "<S-l>", ":bnext<CR>")
map("n", "<S-h>", ":bprevious<CR>")
map("n", "<leader>q", ":BufferClose<CR>")
map("n", "<leader>Q", ":BufferClose!<CR>")
map("n", "<leader>U", "::bufdo bd<CR>") --close all
map('n', '<leader>vs', ':vsplit<CR>:bnext<CR>') --ver split + open next buffer

-- buffer position nav + reorder
map('n', '<AS-h>', '<Cmd>BufferMovePrevious<CR>')
map('n', '<AS-l>', '<Cmd>BufferMoveNext<CR>')
map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>')
map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>')
map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>')
map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>')
map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>')
map('n', '<A-6>', '<Cmd>BufferGoto 6<CR>')
map('n', '<A-7>', '<Cmd>BufferGoto 7<CR>')
map('n', '<A-8>', '<Cmd>BufferGoto 8<CR>')
map('n', '<A-9>', '<Cmd>BufferGoto 9<CR>')
map('n', '<A-0>', '<Cmd>BufferLast<CR>')
map('n', '<A-p>', '<Cmd>BufferPin<CR>')

-- window navigation
map("n", "<A-h>", "<C-w>h", "Move focus to window on the left")
map("n", "<A-j>", "<C-w>j", "Move focus to window below")
map("n", "<A-k>", "<C-w>k", "Move focus to window above")
map("n", "<A-l>", "<C-w>l", "Move focus to window on the right")

-- misc
map("n", "<C-s>", ":w<CR>", "Save buffer")


map("n", "<leader>nn", function() --toggle relative vs absolute line numbers
	if vim.wo.relativenumber then
		vim.wo.relativenumber = false
		vim.wo.number = true
	else
		vim.wo.relativenumber = true
	end
end)
