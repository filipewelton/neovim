vim.api.nvim_create_user_command("CloseDashboardAndOpenFileExplorer", function()
  vim.cmd("Nvdash")
  vim.cmd("NvimTreeFocus")
end, {})
