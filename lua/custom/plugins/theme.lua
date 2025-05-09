return {
  'dasupradyumna/midnight.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    require('midnight').setup {}
    vim.cmd.colorscheme 'midnight'
  end,
}
-- theme below is not dark enough but the text and shit colors look fire
-- {
--   'nyoom-engineering/oxocarbon.nvim',
--   priority = 1000,
--   config = function()
--     vim.cmd.colorscheme 'oxocarbon'
--   end,
-- },
