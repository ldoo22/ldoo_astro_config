return {
  {
    'folke/zen-mode.nvim',
    lazy = false,
    config = function()
      require('zen-mode').setup {
        window = {
          width = 90,
          options = {
            number = true,
            relativenumber = true,
          }
        }
      }
    end
  }
}
