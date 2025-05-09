return {
  {
    'luckasRanarison/tailwind-tools.nvim',
    name = 'tailwind-tools',
    build = ':UpdateRemotePlugins',
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      'nvim-telescope/telescope.nvim', -- optional
      'neovim/nvim-lspconfig',
      'saghen/blink.cmp',
    },
    opts = {}, -- your configuration
    config = function()
      vim.api.nvim_create_autocmd('BufWrite', { command = ':TailwindSort' })
    end,
  },
  {
    'laytan/tailwind-sorter.nvim',
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-lua/plenary.nvim' },
    build = 'cd formatter && npm ci && npm run build',
    config = true,
    opts = {
      on_save_pattern = { '*.html', '*.jsx', '*.tsx' },
    },
  },
}
