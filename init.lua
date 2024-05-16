_G.alt_shortkeys = {}
local uname = vim.trim(string.lower(vim.fn.system('uname')))
if uname == 'linux' then
  _G.alt_shortkeys['harpoon_add'] = '<M-h>'
  _G.alt_shortkeys['harpoon_toggle'] = '<M-l>'

  _G.alt_shortkeys['copilotchat_toggle'] = '<M-n>'
  _G.alt_shortkeys['copilotchat_reset'] = '<M-o>'
  _G.alt_shortkeys['copilotchat_fix'] = '<M-f>'
  _G.alt_shortkeys['copilotchat_explain'] = '<M-e>'
  _G.alt_shortkeys['copilotchat_optimize'] = '<M-o>'
  _G.alt_shortkeys['copilotchat_clean'] = '<M-c>'
  _G.alt_shortkeys['copilotchat_send'] = '<M-m>'

  _G.alt_shortkeys['term_toggle'] = '<M-t>'
  _G.alt_shortkeys['term_exec_last'] = '<M-S-t>'

  _G.alt_shortkeys['copilot_accept'] = '<M-m>'
  _G.alt_shortkeys['copilot_next'] = '<M-,>'
  _G.alt_shortkeys['copilot_prev'] = '<M-.>'

  _G.alt_shortkeys['insert_breakpoint'] = '<M-S-d>'
else
  _G.alt_shortkeys['harpoon_add'] = 'ˇ'
  _G.alt_shortkeys['harpoon_toggle'] = '‘'

  _G.alt_shortkeys['copilotchat_toggle'] = '¬'
  _G.alt_shortkeys['copilotchat_reset'] = '®'
  _G.alt_shortkeys['copilotchat_fix'] = 'ƒ'
  _G.alt_shortkeys['copilotchat_explain'] = 'æ'
  _G.alt_shortkeys['copilotchat_optimize'] = 'ø'
  _G.alt_shortkeys['copilotchat_clean'] = '©'
  _G.alt_shortkeys['copilotchat_send'] = 'µ'


  _G.alt_shortkeys['term_toggle'] = '™'
  _G.alt_shortkeys['term_exec_last'] = '<S-™>' -- does not work

  _G.alt_shortkeys['copilot_accept'] = 'µ'
  _G.alt_shortkeys['copilot_next'] = '“'
  _G.alt_shortkeys['copilot_prev'] = '…'

  _G.alt_shortkeys['insert_breakpoint'] = '∆'
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
