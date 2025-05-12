local midnight_customized = {
    normal = {
        a = { bg = '#012a50', fg = '#bac3cc' },
        b = { bg = '#767b7f', fg = '#080c10' },
        c = { bg = '#080d11', fg = '#c5ced7' },
    },
    replace = {
        a = { bg = '#588cff', fg = '#080c10' },
        b = { fg = '#588cff' },
    },
}

return {
    {
        'dasupradyumna/midnight.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            require('midnight').setup {}
            vim.cmd.colorscheme 'midnight'
        end,
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        opts = {
            options = {
                -- theme = midnight_customized,
                theme = 'auto',
                icons_enabled = true,
                component_separators = '|',
                section_separators = { left = '', right = '' },
                padding = 1,
            },
            sections = {
                lualine_a = {
                    {
                        'mode',
                        fmt = function(str)
                            return str:sub(1, 1)
                        end,
                    },
                },
                lualine_b = { { 'branch' } },
                lualine_c = {
                    { 'filename', path = 1, separator = { right = '' } },
                    { 'diagnostics', always_visible = true },
                },
                lualine_x = { 'selectioncount', ' searchcount' },
                lualine_y = {
                    {
                        'location',
                        padding = { left = 0, right = 0 },
                        separator = { right = '', left = '' },
                    },
                },
                lualine_z = {
                    'progress',
                },
            },
        },
        config = function(_, opts)
            require('lualine').setup(opts)
        end,
    },
}
