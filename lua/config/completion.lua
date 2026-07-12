require("blink.cmp").setup({
    keymap = { preset = "default" },
    completion = {
        documentation = { auto_show = false },
        ghost_text = { enabled = false },
        list = {
            selection = {
                preselect = false,
                auto_insert = false,
            },
        },
        menu = { auto_show = false },
    },
    sources = {
        default = { "lsp", "path", "snippets", "buffer" },
    },
    fuzzy = { implementation = "lua" },
})
