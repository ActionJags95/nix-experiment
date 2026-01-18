vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Disable spacebar key's default behaviour in Normal and Visual mode
vim.keymap.set({ "n", "v" }, "<Sapce>", "<Nop>", { silent = true })

-- For concisness
local opts = { noremap = true, silent = true }

-- Function to merge opts with desc
local function mergeOpts(desc)
  return vim.tbl_extend("force", opts, desc and { desc = desc } or {})
end

--save file
vim.keymap.set("n", "<C-s>", "<cmd> w <CR>", mergeOpts("Save file"))

--quit file
vim.keymap.set("n", "<C-q>", "<cmd> q <CR>", mergeOpts("Quit file"))

-- resize with arrows
vim.keymap.set("n", "<Up>", ":resize -2<CR>", opts)
vim.keymap.set("n", "<Down>", ":resize +2<CR>", opts)
vim.keymap.set("n", "<Left>", ":vertical resize -2<CR>", opts)
vim.keymap.set("n", "<Right>", ":vertical resize +2<CR>", opts)

-- Buffers
vim.keymap.set("n", "<leader>bn", ":bnext<CR>", mergeOpts("Go to next buffer"))
vim.keymap.set("n", "<leader>bp", ":bprev<CR>", mergeOpts("Go to previous buffer"))
vim.keymap.set("n", "<leader>bd", ":bdelete<CR>", mergeOpts("Delete buffer"))
vim.keymap.set("n", "<leader>bc", "<cmd> enew <CR>", mergeOpts("Create new buffer"))

-- Window management
vim.keymap.set("n", "<leader>sv", "<C-w>v", mergeOpts("Split vertical"))
vim.keymap.set("n", "<leader>sh", "<C-w>s", mergeOpts("Split horizontal"))
vim.keymap.set("n", "<leader>se", "<C-w>=", mergeOpts("Equal split"))
vim.keymap.set("n", "<leader>sx", ":close<CR>", mergeOpts("Close Split"))

-- Navigate between splits
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>", mergeOpts("Move to bottom pane"))
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>", mergeOpts("Move to top pane"))
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>", mergeOpts("Move to left pane"))
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>", mergeOpts("Move to right pane"))

-- Indentation
vim.keymap.set("v", "<", "<gv", mergeOpts("Indent towards left by tabspace"))
vim.keymap.set("v", ">", ">gv", mergeOpts("Indent towards right by tabspace"))
