require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Telescope
map("n", "tf", "<cmd>Telescope find_files<cr>")
map("n", "tw", "<cmd>Telescope live_grep<cr>")
map("n", "tr", ":Telescope oldfiles<cr>")

-- Move selection up/down
map("v", "<A-up>", ":m '<-2<CR>gv=gv")
map("v", "<A-down>", ":m '>+1<CR>gv=gv")

-- Move line up/down
map("n", "<A-up>", ":m .-2<CR>")
map("n", "<A-down>", ":m .+1<CR>")

-- Apply tab in selection
map("v", "<tab>", ">2")
map("v", "<S-tab>", "<2")

-- Rename variable
map("n", "<F2>", vim.lsp.buf.rename)

-- Open/Close explorer
map("n", "<leader>e", ":NvimTreeToggle<cr>")

-- Move between splits
map("n", "<C-up>", "<C-w>k", { desc = "Move focus to upper split" })
map("n", "<C-down>", "<C-w>j", { desc = "Move focus to lower split" })
map("n", "<C-left>", "<C-w>h", { desc = "Move focus to left split" })
map("n", "<C-right>", "<C-w>l", { desc = "Move focus to right split" })

-- Close split
map("n", "q", ":close<cr>")

-- New horizontal split
map("n", "<C-[>", ":split<cr>")

-- New vertical split
map("n", "<C-]>", ":vsplit<cr>")
