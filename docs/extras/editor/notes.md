# `editor.notes`

Obsidian? Are we making a nether portal?

## Hotkeys

- `<leader>nn`: Create new note 
- `<leader>nc`: Check notes 
- `<leader>nl`: Show all links 
- `<leader>nb`: Show all backlinks
- `<leader>nd`: Create or go to a daily note 
- `<leader>fn`: Find notes

## Defaults

```lua
{
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
```
