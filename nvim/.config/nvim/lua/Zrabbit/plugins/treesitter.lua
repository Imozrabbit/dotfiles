return{
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPre", "BufNewFile" },
    branch = 'master',
    build = ":TSUpdate",
    dependencies = {
        "windwp/nvim-ts-autotag",
    },
    
    config = function()
        -- import nvim-treesitter plugin
        local treesitter = require("nvim-treesitter.configs")

        treesitter.setup({
            highlight = { enable = true, },
            indent = { enable = true },
            autotag = { enable = true },
            ensure_installed = {
                "c",
                "lua",
                "vim",
                "dockerfile",
                "gitignore",
                "vimdoc",
                "query",
                "bash",
                "css",
                "markdown",
                "markdown_inline",
                "html",
                "yaml",
                "json",
                "javascript",
                "typescript",
                "matlab",
                "make",
                "python",
            },
        })
    end,
}
