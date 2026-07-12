if vim.fn.has("nvim-0.12") == 0 then
    error("This configuration requires Neovim 0.12 or newer")
end

vim.filetype.add({
    extension = {
        sd = "sd",
        profile = "profile",
        yql = "yql",
    },
})

require("config.options")
require("config.packages")
require("config.filetypes")
require("config.lsp")
