local settings = {
    ui = {
        theme = "tokyonight",
    },
    extras = {},
}

local user_settings = require("custom.settings")

settings = vim.tbl_extend("force", settings, user_settings)

local spec = {}

for i, v in ipairs(settings.extras) do
    local path = "dunnovim.plugins.extras." .. v
    table.insert(spec, { import = path })
end

return spec
