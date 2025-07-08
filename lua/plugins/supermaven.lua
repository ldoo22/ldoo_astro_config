return {
  "supermaven-inc/supermaven-nvim",
  event = "VeryLazy",
  opts = {
    keymaps = {
      accept_suggestion = "<A-m>",
      clear_suggestion = "<A-q>",
      accept_word = "<A-n>",
    },
    log_level = "warn",
    disable_inline_completion = false,      -- disables inline completion for use with cmp
    disable_keymaps = false,                -- disables built in keymaps for more manual control
    condition = function()
      local filename = vim.fn.expand("%:t") -- Get just the filename
      return string.match(filename, "%.log$") ~= nil
    end,
  },
}
