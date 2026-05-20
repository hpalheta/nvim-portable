local opt = vim.opt

opt.number = true
opt.relativenumber = true

opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.smartindent = true

opt.termguicolors = true

opt.splitright = true
opt.splitbelow = true

require("hp.core.keymaps")

vim.opt.exrc = true
vim.opt.secure = true
