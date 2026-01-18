vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
local opt = vim.opt

opt.expandtab = true
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.number = true
opt.relativenumber = true
opt.clipboard = "unnamedplus"
opt.linebreak = true
opt.wrap = false
opt.autoindent = true
opt.ignorecase = true
opt.smartcase = true
opt.termguicolors = true

opt.fillchars:append({ eob = " " })
opt.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
