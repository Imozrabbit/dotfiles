return {
    {
        "williamboman/mason.nvim",
        dependencies = {
            "williamboman/mason-lspconfig.nvim",
            "neovim/nvim-lspconfig",
            "saghen/blink.cmp",
        },

        opts = {
            servers = {
                lua_ls = {
                    settings = {
                        Lua = {
                            diagnostics = {
                                globals = { "vim" },
                            },
                        },
                    },
                },
            ruff = {},
            clangd = {},
            basedpyright = {},
            },
        },

        config = function(_, opts)
            local blink = require("blink.cmp")
            require("mason").setup()
            require("mason-lspconfig").setup({
                -- Add more LSP if needed here
                ensure_installed = {"lua_ls","ruff","basedpyright","clangd","bashls",}
            })

            -- Configure diagnostic message
            vim.diagnostic.config({
                virtual_text = true,
            })

            -- Enable LSP
            for server,config in pairs(opts.servers) do
                -- merge capabilities
                config.capabilities = blink.get_lsp_capabilities(config.capabilities or {})

                vim.lsp.config(server, config)
                vim.lsp.enable(server)
            end
        end
    },
}
