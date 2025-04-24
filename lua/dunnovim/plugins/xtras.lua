require("dunnovim.utils")

local settings = DunnoVim.config.get_config()

local spec = {}

for i, v in ipairs(settings.extras) do
    local path = "dunnovim.plugins.extras." .. v
    table.insert(spec, { import = path })
end

return spec
