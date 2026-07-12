require("gitsigns").setup()

require("snacks").setup({
    bigfile = { enabled = true },
    gh = {},
    picker = {
        enabled = true,
        ui_select = true,
        icons = {
            files = { enabled = false },
            git = { enabled = false },
        },
    },
    quickfile = { enabled = true },
})
