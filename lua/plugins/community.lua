return {
  "AstroNvim/astrocommunity",
  -- { import = "astrocommunity.completion.copilot-lua" },
  -- {
  --   import = 'astrocommunity.completion.supermaven-nvim',
  --   opts = {
  --     keymaps = {
  --       accept_suggestion = "<A-m>",
  --       clear_suggestion = "<A-q>",
  --       accept_word = "<A-n>",
  --     },
  --     log_level = "warn",
  --     disable_inline_completion = false, -- disables inline completion for use with cmp
  --     disable_keymaps = false,           -- disables built in keymaps for more manual control
  --   },
  -- },
  { import = "astrocommunity.icon.mini-icons" },
  -- {
  --   -- further customize the options set by the community
  --   "copilot.lua",
  --   opts = {
  --     suggestion = {
  --       keymap = {
  --         accept = _G.alt_shortkeys['copilot_accept'],
  --         accept_word = false,
  --         accept_line = false,
  --         next = _G.alt_shortkeys['copilot_next'],
  --         prev = _G.alt_shortkeys['copilot_prev'],
  --         dismiss = "<C/>",
  --       },
  --     },
  --     filetypes = {
  --       yaml = true,
  --       markdown = true,
  --       json = true,
  --     }
  --   },
  -- },
  { import = "astrocommunity.utility.telescope-live-grep-args-nvim" },
  -- { import = "astrocommunity.test.neotest" }
}
