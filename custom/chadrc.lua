---@type ChadrcConfig
local M = {}
local highlights = require "custom.custom_Highlight"

M.ui = {
  theme = "nightfox",
  nvdash = require "custom.custom_Dashboard",
  hl_override = highlights.override,
  hl_add = highlights.add,
}
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M
