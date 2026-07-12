local group = vim.api.nvim_create_augroup("config_general", { clear = true })

vim.api.nvim_create_autocmd("TextYankPost", {
    group = group,
    callback = function()
        vim.hl.on_yank()
    end,
})
