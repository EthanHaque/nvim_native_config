vim.pack.add({
    {
        src = "https://github.com/Saghen/blink.cmp",
        version = vim.version.range("1.x"),
    },
    {
        src = "https://github.com/folke/snacks.nvim",
        version = vim.version.range("2.x"),
    },
    {
        src = "https://github.com/kylechui/nvim-surround",
        version = vim.version.range("4.x"),
    },
    {
        src = "https://github.com/lewis6991/gitsigns.nvim",
        version = vim.version.range("2.x"),
    },
    "https://github.com/neovim/nvim-lspconfig",
    "https://github.com/rafamadriz/friendly-snippets",
    "https://github.com/stevearc/conform.nvim",
}, { load = true })

require("config.completion")
require("config.plugins")

require("conform").setup({
    formatters_by_ft = {
        javascript = { "prettier" },
        javascriptreact = { "prettier" },
        typescript = { "prettier" },
        typescriptreact = { "prettier" },
        css = { "prettier" },
        html = { "prettier" },
        json = { "prettier" },
        yaml = { "prettier" },
        markdown = { "prettier" },
        lua = { "stylua" },
        nix = { "nixfmt" },
    },
    format_on_save = {
        timeout_ms = 500,
        lsp_format = "fallback",
    },
})
