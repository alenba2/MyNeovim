---@type ChadrcConfig
local M = {}
local highlights = require "custom.custom_Highlight"

M.ui = {
  theme = "nightfox",
  nvdash = require "custom.custom_Dashboard",
  hl_override = highlights.override,
  hl_add = highlights.add,
  -- left or right space for nvimtree, comment all out to revert
  tabufline = {
    overriden_modules = function(modules)
      table.insert(modules, modules[1])
      table.remove(modules, 1)
      -- or modules[1] = ""
      table.remove(modules, #modules - 1)
    end,
  },
}
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M
