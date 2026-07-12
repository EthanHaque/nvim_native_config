vim.opt_local.shiftwidth = 2
vim.opt_local.softtabstop = 2
vim.opt_local.tabstop = 2

vim.b.undo_ftplugin = (vim.b.undo_ftplugin or "") .. " | setlocal shiftwidth< softtabstop< tabstop<"
