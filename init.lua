local alt_map = {
  copilotchat_toggle = { '<M-n>', '¬' },
  copilotchat_reset = { '<M-o>', '®' },
  copilotchat_fix = { '<M-f>', 'ƒ' },
  copilotchat_explain = { '<M-e>', 'æ' },
  copilotchat_optimize = { '<M-o>', 'ø' },
  copilotchat_clean = { '<M-c>', '©' },
  copilotchat_send = { '<M-m>', 'µ' },
  term_toggle = { '<M-t>', '™' },
  term_exec_last = { '<M-S-t>', 'S-™' }, -- does not work on macos
  copilot_accept = { '<M-m>', 'µ' },
  copilot_next = { '<M-,>', '“' },
  copilot_prev = { '<M-.>', '…' },
  insert_breakpoint = { '<M-S-d>', '∆' },
  harpoon_add = { '<M-a>', 'å' },
  harpoon_toggle = { '<M-e>', 'æ' },
  harpoon_open_1 = { '<M-h>', 'ˇ' },
  harpoon_open_2 = { '<M-j>', '¯' },
  harpoon_open_3 = { '<M-k>', '„' },
  harpoon_open_4 = { '<M-l>', '‘' },
}

_G.alt_shortkeys = {}
local uname = vim.trim(string.lower(vim.fn.system('uname')))
for key, value in pairs(alt_map) do
  if uname == 'linux' then
    _G.alt_shortkeys[key] = value[1]
  else
    _G.alt_shortkeys[key] = value[2]
  end
end
-- This file simply bootstraps the installation of Lazy.nvim and then calls other files for execution
-- This file doesn't necessarily need to be touched, BE CAUTIOUS editing this file and proceed at your own risk.
local lazypath = vim.env.LAZY or vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not (vim.env.LAZY or (vim.uv or vim.loop).fs_stat(lazypath)) then
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable",
    lazypath })
end
vim.opt.rtp:prepend(lazypath)

-- validate that lazy is available
if not pcall(require, "lazy") then
  -- stylua: ignore
  vim.api.nvim_echo(
    { { ("Unable to load lazy from: %s\n"):format(lazypath), "ErrorMsg" }, { "Press any key to exit...", "MoreMsg" } },
    true, {})
  vim.fn.getchar()
  vim.cmd.quit()
end

require "lazy_setup"
require "polish"
