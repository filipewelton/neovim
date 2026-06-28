local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local mason_tool_installer = require("mason-tool-installer")

mason.setup({
  ui = {
    icons = {
      package_installed = "✓",
      package_pending = "➜",
      package_uninstalled = "✗",
    },
  },
})

local servers = {
  "lua_ls",
  "marksman",
  "bashls",
}

local stylers = {
  "prettier",
  "stylua",
  "eslint_d",
}

mason_lspconfig.setup({
  -- list of servers for mason to install
  ensure_installed = servers,
  -- auto-install configured servers (with lspconfig)
  automatic_installation = true, -- not the same as ensure_installed
})

mason_tool_installer.setup({
  -- list of formatters & linters for mason to install
  ensure_installed = stylers,
  -- auto-install configured servers (with lspconfig)
  automatic_installation = true,
})

