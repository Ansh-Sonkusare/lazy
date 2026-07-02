-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>uT", function()
  local cfg = vim.g.onedark_config
  if not cfg then
    vim.notify("onedark not loaded", vim.log.levels.ERROR)
    return
  end
  require("onedark").set_options("transparent", not cfg.transparent)
  vim.cmd("colorscheme onedark")
end, { desc = "Toggle Transparency" })
