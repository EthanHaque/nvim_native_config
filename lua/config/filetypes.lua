local group = vim.api.nvim_create_augroup("config_filetypes", { clear = true })

vim.api.nvim_create_autocmd("FileType", {
    group = group,
    pattern = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
    callback = function()
        vim.opt_local.shiftwidth = 2
        vim.opt_local.softtabstop = 2
        vim.opt_local.tabstop = 2
    end,
})

vim.api.nvim_create_autocmd("FileType", {
    group = group,
    pattern = { "gitcommit", "markdown", "text", "typst" },
    callback = function()
        vim.opt_local.linebreak = true
        vim.opt_local.spell = true
        vim.opt_local.wrap = true
    end,
})

vim.api.nvim_create_autocmd("FileType", {
    group = group,
    pattern = "yaml",
    callback = function()
        vim.opt_local.spell = true
        vim.opt_local.wrap = true
    end,
})
