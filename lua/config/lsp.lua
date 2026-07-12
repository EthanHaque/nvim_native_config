vim.lsp.config("*", {
    capabilities = require("blink.cmp").get_lsp_capabilities(),
})

local group = vim.api.nvim_create_augroup("config_lsp", { clear = true })

vim.api.nvim_create_autocmd("LspAttach", {
    group = group,
    callback = function(event)
        local client = vim.lsp.get_client_by_id(event.data.client_id)
        if client and client:supports_method("textDocument/completion") then
            vim.lsp.completion.enable(true, client.id, event.buf)
        end
    end,
})

vim.lsp.enable({ "ruff", "lua_ls", "ty", "vtsls", "biome", "bashls", "marksman", "rumdl" })
