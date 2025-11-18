return{
    "UtkarshVerma/molokai.nvim",
    priority = 1000,
    config = function()
        require("molokai").setup({
        transparent = true
        })
        vim.cmd("colorscheme molokai")

        -- Disable highlight for brackets and delimiters, that shit hurts me eyes
        vim.api.nvim_set_hl(0, "@punctuation.bracket", { link = "Normal" })
        vim.api.nvim_set_hl(0, "Delimiter", { link = "Normal" })

        -- Set highlight indent color in current cursor scope using the plugin : indent_blankline
        vim.api.nvim_set_hl(0, "IblScope", {fg = "#D189FF", nocombine=true,} )
    end
}
