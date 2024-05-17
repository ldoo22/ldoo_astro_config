local gitsigns = require("gitsigns")
local chat = require('CopilotChat')

local toggleterm = require('toggleterm')


local function insert_breakpoint(breakpoint)
  local row, col = unpack(vim.api.nvim_win_get_cursor(0))
  local line = vim.api.nvim_buf_get_lines(0, row - 1, row, false)[1]
  local new_line = line:sub(1, col) .. breakpoint .. line:sub(col + 1)
  vim.api.nvim_buf_set_lines(0, row - 1, row, false, { new_line })
end


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

          -- harpoon
          [_G.alt_shortkeys['harpoon_add']] = {
            function()
              require("harpoon"):list():add()
            end
          },
          [_G.alt_shortkeys['harpoon_toggle']] = {
            function()
              require("harpoon").ui:toggle_quick_menu(require("harpoon"):list())
            end
          },
          [_G.alt_shortkeys['harpoon_open_1']] = {
            function()
              require("harpoon"):list():select(1)
            end
          },
          [_G.alt_shortkeys['harpoon_open_2']] = {
            function()
              require("harpoon"):list():select(2)
            end
          },
          [_G.alt_shortkeys['harpoon_open_3']] = {
            function()
              require("harpoon"):list():select(3)
            end
          },
          [_G.alt_shortkeys['harpoon_open_4']] = {
            function()
              require("harpoon"):list():select(4)
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

          [_G.alt_shortkeys['insert_breakpoint']] = {
            function()
              local ft = vim.api.nvim_buf_get_option(0, 'filetype')
              if ft == 'python' then
                insert_breakpoint("__import__('ipdb').set_trace(context=10)")
              elseif ft == 'ruby' then
                insert_breakpoint("require 'byebug'; byebug")
              end
            end
          }
        },

        t = {
          [_G.alt_shortkeys['term_toggle']] = { "<Cmd>ToggleTerm<CR>", desc = "Toggle terminal" },
          [_G.alt_shortkeys['term_exec_last']] = { "<Cmd>ToggleTermExecLast<CR>", desc = "Execute last command in terminal" },

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
