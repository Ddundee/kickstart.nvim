return {
    {
        'nvim-neo-tree/neo-tree.nvim',
        branch = 'v3.x',
        dependencies = {
            'nvim-lua/plenary.nvim',
            'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
            'MunifTanjim/nui.nvim',
            -- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
        },
        lazy = false, -- neo-tree will lazily load itself
        ---@module "neo-tree"
        ---@type neotree.Config?
        opts = {
            -- fill any relevant options here
        },
        config = function()
            vim.keymap.set(
                'n',
                '\\',
                '<Cmd>Neotree toggle right<CR>',
                { desc = 'File explorer' }
            )
        end,
    },

    {
        'folke/which-key.nvim',
        event = 'VeryLazy',
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        },
        keys = {
            {
                '<leader>?',
                function()
                    require('which-key').show { global = false }
                end,
                desc = 'Buffer Local Keymaps (which-key)',
            },
        },
    },
    {
        'mbbill/undotree',
        config = function()
            vim.keymap.set(
                'n',
                '<leader>u',
                vim.cmd.UndotreeToggle,
                { desc = 'Toggle [U]ndo tree' }
            )
        end,
    },
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            local builtin = require 'telescope.builtin'

            vim.keymap.set(
                'n',
                '<leader>pf',
                builtin.find_files,
                { desc = '[P]roject [F]iles ' }
            )
            vim.keymap.set(
                'n',
                '<leader>pg',
                builtin.git_files,
                { desc = '[P]roject [G]it files' }
            )
            vim.keymap.set(
                'n',
                '<leader>sg',
                builtin.live_grep,
                { desc = '[P]roject [G]rep search' }
            )
            vim.keymap.set(
                'n',
                '<leader>sh',
                builtin.help_tags,
                { desc = '[S]earch [H]elp' }
            )
            vim.keymap.set(
                'n',
                '<leader>sk',
                builtin.keymaps,
                { desc = '[S]earch [K]eymaps' }
            )
        end,
    },
}
