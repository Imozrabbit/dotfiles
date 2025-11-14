return {
    -- Extensions for LSP
    { -- Renaming file and updating imports/includes
        "antosha417/nvim-lsp-file-operations",
        config = true
    },
    { -- Propre setup for LSP (cf : fix the "vim" global problem) 
        "folke/lazydev.nvim",
        opts = {}
    },
}
