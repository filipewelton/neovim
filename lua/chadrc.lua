-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "onedark",

	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
}

M.nvdash = {
  load_on_startup = true,
  buttons = {
    { txt = "󰙅 Explorer", keys = "leader e", cmd = "NvimTreeFocus" },
    { txt = " Find Files", keys = "tf", cmd = "Telescope find_files" },
    { txt = " Find Word", keys = "tw", cmd = "Telescope live_grep" },
    { txt = "󱑁 Recent Files", keys = "h", cmd = "Telescope oldfiles" },
    { txt = "󰌌 Mappings", keys = "m", cmd = "NvCheatsheet" },
    { txt = "󰈆 Quit", keys = "q", cmd = "qa!" },
  },
}

-- M.ui = {
--       tabufline = {
--          lazyload = false
--      }
-- }

return M
