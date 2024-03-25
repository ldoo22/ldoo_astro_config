local mark = require('harpoon.mark')
local ui = require('harpoon.ui')
local chat = require('CopilotChat')

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

    ['<M-n>'] = {
      function()
        chat.toggle()
      end
    },

    ['<M-o>'] = {
      function()
        vim.cmd('CopilotChatReset')
      end
    },
  },

  v = {
    ['J'] = { ":m '>+1<CR>gv=gv" },

    ['K'] = { ":m '<-2<CR>gv=gv" },

    ['<M-n>'] = {
      function()
        chat.toggle()
      end
    },

    ['<M-r>'] = {
      function()
        vim.cmd('CopilotChatReset')
      end
    },

    ['<M-f>'] = {
      function()
        vim.cmd('CopilotChatFix')
      end
    },

    ['<M-e>'] = {
      function()
        vim.cmd('CopilotChatExplain')
      end
    },

    ['<M-o>'] = {
      function()
        vim.cmd('CopilotChatOptimize')
      end
    },

    ['<M-c>'] = {
      function()
        chat.ask('Clean up this code', {
          selection = require('CopilotChat.select').visual
        })
      end
    },
  },

  i = {
    ['<M-m>'] = { vim.api.nvim_set_keymap('n', '<M-m>', '<cmd>lua require("CopilotChat").accept_diff()<CR>', {noremap = true, silent = true}) },

    ['<M-,>'] = { '<Plug>(copilot-next)' },

    ['<M-.>'] = { '<Plug>(copilot-previous)' },

    ['<M-n>'] = {
      function()
        chat.toggle()
      end
    },

    ['<M-r>'] = {
      function()
        vim.cmd('CopilotChatReset')
      end
    },
  }
}
