return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        local lualine = require("lualine")
        local custom_ayu_dark = require'lualine.themes.ayu_dark'
        local lazy_status = require("lazy.status") -- to configure lazy pending updates count

        -- Change the background of lualine_c section for normal mode
        custom_ayu_dark.normal.c.fg = '#FF61EF'

        require('lualine').setup {
            options = { theme  = custom_ayu_dark },
            sections = {
                lualine_x = {
                {
                lazy_status.updates,
                cond = lazy_status.has_updates,
                color = { fg = "#ff9e64" },
                },
                { "encoding" },
                { "fileformat", symbols = { unix = "" } },
                { "filetype" },
                },
            },
        }
    end
}
