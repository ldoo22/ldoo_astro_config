return {
  -- 'github/copilot.vim',
  --lazy = false,
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.completion.copilot-lua" },
  {
    -- further customize the options set by the community
    "copilot.lua",
    opts = {
      suggestion = {
        keymap = {
          accept = "<M-m>",
          accept_word = false,
          accept_line = false,
          next = "<M-,>",
          prev = "<M-.>",
          dismiss = "<C/>",
        },
      },
    },
  },
  -- { import = "astrocommunity.git.neogit" },
  -- {
  --   "neogit",
  -- }
}

