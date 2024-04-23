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
      answer_header =   '################################### **Copilot** ###################################',
      separator = ' ',
      window = {
        layout = "float",
        height = 0.9,
        width = 0.9,
        border = 'rounded',
      },
      show_help = false,
      auto_insert_mode = true,
      mappings = {
        close = {
          normal = '<M-n>',
          insert = '<M-n>'
        },
        reset = {
          normal ='<M-r>',
          insert = '<M-r>'
        },
        submit_prompt = {
          normal = '<M-m>',
          insert = '<M-m>'
        },
      }
    },
  },
}
