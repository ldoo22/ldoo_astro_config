local config = {
  polish = function()
    vim.api.nvim_create_autocmd("VimEnter", {
      command = "set nornu nonu | Neotree toggle",
    })
    vim.api.nvim_create_autocmd("BufEnter", {
      command = "set rnu nu",
    })
  end,
}
return config
