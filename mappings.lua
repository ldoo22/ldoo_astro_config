local mark = require('harpoon.mark')
local ui = require('harpoon.ui')
return {
  n = {
    ['<leader>zz'] = {
      function()
        require("zen-mode").toggle()
        vim.wo.wrap = false
      end
    },

    ['<leader>h'] = {
      function()
        mark.add_file()
      end
    },

    ['<leader>l'] = {
      function()
        ui.toggle_quick_menu()
      end
    },

    ['<C-h>'] = {
      function()
        ui.nav_file(1)
      end
    },

    ['<C-j>'] = {
      function()
        ui.nav_file(2)
      end
    },

    ['<C-k>'] = {
      function()
        ui.nav_file(3)
      end
    },

    ['<C-l>'] = {
      function()
        ui.nav_file(4)
      end
    },
  },

  v = {
    ['J'] = { ":m '>+1<CR>gv=gv" },

    ['K'] = { ":m '<-2<CR>gv=gv" }
  },

  i = {
    ['<M-m>'] = { "copilot#Accept(<Tab>)", silent = true, expr = true, script = true },

    ['<M-,>'] = { '<Plug>(copilot-next)' },

    ['<M-.>'] = { '<Plug>(copilot-previous)' }
  }
}
