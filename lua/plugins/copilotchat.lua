return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    lazy = false,
    branch = "canary",
    dependencies = {
      { "zbirenbaum/copilot.lua" },
      { "nvim-lua/plenary.nvim" },
    },
    opts = {
      question_header = '###################################   **You**   ###################################',
      answer_header = '################################### **Copilot** ###################################',
      separator = ' ',
      window = {
        layout = "float",
        height = 0.9,
        width = 0.9,
        border = 'rounded',
        zindex = 100,
      },
      show_help = false,
      auto_insert_mode = true,
      mappings = {
        close = {
          normal = _G.alt_shortkeys['copilotchat_toggle'],
          insert = _G.alt_shortkeys['copilotchat_toggle']
        },
        reset = {
          normal = _G.alt_shortkeys['copilotchat_reset'],
          insert = _G.alt_shortkeys['copilotchat_reset']
        },
        submit_prompt = {
          normal = _G.alt_shortkeys['copilotchat_send'],
          insert = _G.alt_shortkeys['copilotchat_send']
        },
      },
    },
  },
}
