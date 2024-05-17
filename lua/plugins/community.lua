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
          accept = _G.alt_shortkeys['copilot_accept'],
          accept_word = false,
          accept_line = false,
          next = _G.alt_shortkeys['copilot_next'],
          prev = _G.alt_shortkeys['copilot_prev'],
          dismiss = "<C/>",
        },
      },
      filetypes = {
        yaml = true,
        markdown = true,
      }
    },
  },
  {
    import = "astrocommunity.motion.harpoon",
    settings = {
      save_on_toggle = true,
      save_on_close = true,
    }
  }
}
