return{
    "UtkarshVerma/molokai.nvim",
    priority = 1000,
    config = function()
        require("molokai").setup({
        transparent = true
        })

        vim.cmd("colorscheme molokai")
    end
}
