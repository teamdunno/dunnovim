---@class dunnovim.util.plugins
local M = {}

---@type LazyCoreConfig
local lazy = require("lazy.core.config")

---Get a certain plugin, is not afraid of returning nil
---@param name string
---@return LazySpec? spec The plugin spec
function M.get_plugin(name)
    return lazy.spec.plugins[name]
end

---Get if we have a certain plugin configured
---@param name string
---@return boolean has If we have the plugin
function M.has(name)
    return M.get_plugin(name) ~= nil
end

---Get the options of a plugin
---@param name string
function M.opts(name)
    local plugin = M.get_plugin(name)
    if not plugin then
        return {}
    end
    local Plugin = require("lazy.core.plugin")
    return Plugin.values(plugin, "opts", false)
end

return M
