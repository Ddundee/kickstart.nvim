return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      theme = 'hyper',
      shortcut_type = 'number',
      hide = { statusline = true, tabline = true, winbar = true },
      config = {
        packages = { enable = false },
        hide = { statusline = true, tabline = true, winbar = true },
        disable_move = true,
        project = { enable = false },
        mru = { enable = false, limit = 9 },
        week_header = {
          enable = false,
        },
        header = {
          '░▒▓███████▓▒░░▒▓█▓▒░▒▓███████▓▒░       ░▒▓█▓▒░░▒▓██████▓▒░      ██╗   ██╗██╗███╗   ███╗',
          '░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░      ░▒▓█▓▒░▒▓█▓▒  ▒▓█▓▒░     ██║   ██║██║████╗ ████║',
          '░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░      ░▒▓█▓▒░▒▓█▓▒  ▒▓█▓▒░     ██║   ██║██║██╔████╔██║',
          '░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░      ░▒▓█▓▒░▒▓████████▓▒░     ╚██╗ ██╔╝██║██║╚██╔╝██║',
          '░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒  ▒▓█▓▒░      ╚████╔╝ ██║██║ ╚═╝ ██║',
          '░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░░▒▓███████▒░░▒▓█▓▒  ▒▓█▓▒░       ╚═══╝  ╚═╝╚═╝     ╚═╝',
        },
        shortcut = {},
        footer = {},
      },
    }
  end,
  dependencies = { { 'nvim-tree/nvim-web-devicons' } },
}
