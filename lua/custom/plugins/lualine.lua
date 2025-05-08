return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    options = {
      icons_enabled = true,
      theme = 'auto',
    },
    sections = {
      lualine_a = { {
        'mode',
        fmt = function(str)
          return str:sub(1, 1)
        end,
      } },
      lualine_b = { { 'branch' } },
      lualine_c = { { 'filename', path = 1 } },
      lualine_x = { 'filetype' },
      lualine_y = { 'encoding' },
      lualine_z = {
        'selectioncount',
        'progress',
        'location',
      },
    },
  },
  config = function(_, opts)
    require('lualine').setup(opts)
  end,
}
