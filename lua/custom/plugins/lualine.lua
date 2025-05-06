-- lua/plugins.lua
return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    options = {
      icons_enabled = true,
      theme = 'auto',
    },
  },
  config = function(_, opts)
    require('lualine').setup(opts)
  end,
  -- … the rest of your plugin list …
}
