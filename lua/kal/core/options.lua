local opt = vim.opt
--tabs & indentation

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true

-- clipboard
opt.clipboard:append("unnamedplus")

-- considering string-string as a word
opt.iskeyword:append("-")
