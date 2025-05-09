return {
    {
        "obsidian-nvim/obsidian.nvim",
        version = "*",
        lazy = true,
        ft = "markdown",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        keys = {
            { "<leader>n", "", desc = "+notes" },
            { "<leader>nn", "<cmd>Obsidian new<cr>", desc = "Create new note" },
            { "<leader>nc", "<cmd>Obsidian check<cr>", desc = "Check notes" },
            { "<leader>nl", "<cmd>Obsidian links<cr>", desc = "Show all links" },
            { "<leader>nb", "<cmd>Obsidian backlinks<cr>", desc = "Show all backlinks" },
            { "<leader>nd", "<cmd>Obsidian dailies<cr>", desc = "Create or go to a daily note" },
            { "<leader>fn", "<cmd>Obsidian quick_switch<cr>", desc = "Find note" },
        },
        opts = {
            workspaces = {
                {
                    name = "notes",
                    path = "~/notes",
                },
            },

            mappings = {
                ["gf"] = {
                    action = function()
                        return require("obsidian").util.gf_passthrough()
                    end,
                    opts = { noremap = false, expr = true, buffer = true },
                },
                ["<cr>"] = {
                    action = function()
                        return require("obsidian").util.smart_action()
                    end,
                    opts = { buffer = true, expr = true },
                },
            },

            picker = {
                name = "snacks.pick",
            },

            note_path_func = function(spec)
                local title = spec.title or "untitled"
                local date = os.date("%d%m%Y%H%M%S")
                local name = date .. " " .. title
                return name
            end,

            note_id_func = function(title)
                local datetime = os.date("%d%m%Y%H%M%S")

                local function slugify(str)
                    str = str:lower()
                    str = str:gsub("[^%w%s-]", "") -- remove non-alphanumeric except space/hyphen
                    str = str:gsub("%s+", "-") -- replace spaces with dashes
                    str = str:gsub("-+", "-") -- collapse multiple dashes
                    str = str:gsub("^-+", "") -- trim leading dashes
                    str = str:gsub("-+$", "") -- trim trailing dashes
                    return str
                end

                if title then
                    return datetime .. "-" .. slugify(title)
                else
                    return datetime
                end
            end,

            wiki_link_func = function(opts)
                local partial = require("obsidian.util").wiki_link_path_prefix(opts)
                local full = partial:gsub("%.md", "", 1)
                return full
            end,

            ui = {
                enable = false,
            },
        },
        config = function(_, opts)
            local obs = require("obsidian")
            obs.setup(opts)
            vim.opt.conceallevel = 2
        end,
    },

    {
        "MeanderingProgrammer/render-markdown.nvim",
        opts = {},
    },

    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                marksman = {
                    enabled = false,
                },
            },
        },
    },

    {
        "stevearc/conform.nvim",
        ft = "markdown",
        opts = function(_, opts)
            opts.formatters_by_ft = opts.formatters_by_ft or {}
            opts.formatters_by_ft.markdown = {}
            return opts
        end,
    },
}
