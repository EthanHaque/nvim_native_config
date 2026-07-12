local opt = vim.opt

opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.signcolumn = "yes"
opt.scrolloff = 18
opt.sidescrolloff = 10
opt.wrap = false
opt.colorcolumn = "120"
opt.winborder = "rounded"

opt.expandtab = true
opt.shiftwidth = 4
opt.softtabstop = 4
opt.tabstop = 4

opt.ignorecase = true
opt.smartcase = true
opt.wildignore:append({ "*/node_modules/*", "*/.git/*", "*/vendor/*" })

opt.clipboard = "unnamedplus"
opt.confirm = true
opt.undofile = true

opt.list = true
opt.listchars = { tab = "┊ ", trail = "·", extends = "»", precedes = "«", nbsp = "×" }
opt.matchpairs:append("<:>")

opt.splitbelow = true
opt.splitright = true

opt.autocomplete = true
opt.complete:append("o")
