local gitsigns = require("gitsigns")
local mark = require('harpoon.mark')
local ui = require('harpoon.ui')
local chat = require('CopilotChat')

local toggleterm = require('toggleterm')

return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        n = {
          --gitsigns
          ['<Space>gm'] = {
            gitsigns.prev_hunk,
            desc = "Previous hunk"
          },
          ['<Space>gn'] = {
            gitsigns.next_hunk,
            desc = "Next hunk"
          },

          --copy lsp error to clipboard
          ['<Space>le'] = {
            function()
              vim.diagnostic.open_float()
              vim.diagnostic.open_float()
              local win_id = vim.fn.win_getid()
              vim.cmd("normal! j")
              vim.cmd("normal! VG")
              vim.cmd("normal! \"*y")
              vim.api.nvim_win_close(win_id, true)
            end,
            desc = "Copy LSP errors to loclist"
          },

          -- zenmode
          ['<leader>zz'] = {
            function()
              require("zen-mode").toggle()
              vim.wo.wrap = false
            end
          },

          -- harpoon
          [_G.alt_shortkeys['harpoon_add']] = {
            function()
              mark.add_file()
            end
          },
          [_G.alt_shortkeys['harpoon_toggle']] = {
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

          -- CopilotChat
          [_G.alt_shortkeys['copilotchat_toggle']] = {
            function()
              chat.toggle()
            end
          },
          [_G.alt_shortkeys['copilotchat_reset']] = {
            function()
              vim.cmd('CopilotChatReset')
            end
          },

          -- toggleterm
          [_G.alt_shortkeys['term_toggle']] = {
            function()
              toggleterm.toggle()
            end
          },

          [_G.alt_shortkeys['term_exec_last']] = {
            function()
              toggleterm.exec('!!')
            end
          },
        },

        v = {
          ['J'] = { ":m '>+1<CR>gv=gv" },
          ['K'] = { ":m '<-2<CR>gv=gv" },

          -- CopilotChat
          [_G.alt_shortkeys['copilotchat_toggle']] = {
            function()
              chat.toggle()
            end
          },
          [_G.alt_shortkeys['copilotchat_reset']] = {
            function()
              vim.cmd('CopilotChatReset')
            end
          },
          [_G.alt_shortkeys['copilotchat_fix']] = {
            function()
              vim.cmd('CopilotChatFix')
            end
          },
          [_G.alt_shortkeys['copilotchat_explain']] = {
            function()
              vim.cmd('CopilotChatExplain')
            end
          },
          [_G.alt_shortkeys['copilotchat_optimize']] = {
            function()
              vim.cmd('CopilotChatOptimize')
            end
          },
          [_G.alt_shortkeys['copilotchat_clean']] = {
            function()
              chat.ask('Clean up this code', {
                selection = require('CopilotChat.select').visual
              })
            end
          },

          -- toggleterm
          [_G.alt_shortkeys['term_toggle']] = {
            function()
              toggleterm.toggle()
            end
          },
        },

        i = {

          [_G.alt_shortkeys['copilotchat_send']] = {
            function()
              chat.accept_diff()
            end
          },

          [_G.alt_shortkeys['copilotchat_toggle']] = {
            function()
              chat.toggle()
            end
          },
          [_G.alt_shortkeys['copilotchat_reset']] = {
            function()
              vim.cmd('CopilotChatReset')
            end
          },
        },

        t = {
          [_G.alt_shortkeys['term_toggle']] = { "<Cmd>ToggleTerm<CR>", desc = "Toggle terminal" },
          [_G.alt_shortkeys['term_exec_last']] = { "<Cmd>ToggleTermExecLast<CR>", desc = "Execute last command in terminal" },
          ['<M-Esc>'] = {
            function()
              vim.cmd('stopinsert')
            end
          },

          -- CopilotChat
          [_G.alt_shortkeys['copilotchat_toggle']] = {
            function()
              chat.toggle()
            end
          },

          ['<M-Esc>'] = {
            function()
              vim.cmd('stopinsert')
            end
          },
        },
      },
    },
  },
}
