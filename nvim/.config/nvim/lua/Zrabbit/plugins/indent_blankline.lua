return {
    "lukas-reineke/indent-blankline.nvim",
    event = { "BufReadPre", "BufNewFile" },
    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config

    opts = {
        indent = {
            -- char = "┊",
            highlight = "IblIndent",
        },
        scope = {
            enabled = true,
            show_start = true,
            show_end = true,
            highlight = "IblScope",
        },
    },
}
