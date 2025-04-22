-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out, "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("core.vimsettings")
require("custom")

local settings = {
    ui = {
        theme = "tokyonight",
    },
    extras = {},
}

local user_settings = require("custom.settings")

settings = vim.tbl_extend("force", settings, user_settings)

local spec = {
    -- import your plugins
    { import = "core.plugins" },
    { import = "custom.plugins" },
}

for i, v in ipairs(settings.extras) do
    local path = "core.plugins.extras." .. v
    table.insert(spec, { import = path })
end

-- Setup lazy.nvim
require("lazy").setup({
    spec = spec,
    -- Configure any other settings here. See the documentation for more details.
    -- colorscheme that will be used when installing plugins.
    install = { colorscheme = { settings.ui.theme, "habamax" } },
    -- automatically check for plugin updates
    checker = { enabled = true },
    performance = {
        rtp = {
            disabled_plugins = {
                "gzip",
                "matchit",
                "matchparen",
                "netrwPlugin",
                "tarPlugin",
                "tohtml",
                "tutor",
                "zipPlugin",
                "editorconfig",
                "man",
                "osc52",
                "rplugin",
                "spellfile",
            },
        },
    },
})

vim.cmd.colorscheme(settings.ui.theme)
