return {
  'akinsho/nvim-toggleterm.lua',
  config = function()
    require('toggleterm').setup {
      hide_numbers = false,
      direction = 'float',
      auto_scroll = false,
      float_opts = {
        border = 'curved',
      }
    }
    vim.cmd('autocmd TermEnter term://*toggleterm#* setlocal number relativenumber')
  end
}
