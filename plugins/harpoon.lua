return {
  'theprimeagen/harpoon',
  lazy = false,
  config = function()
    require('harpoon').setup({
      menu = {
        width = vim.api.nvim_win_get_width(0) - 100,
      }
    })
  end
}
