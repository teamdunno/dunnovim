return {
    "echasnovski/mini.surround",
    keys = function(_, keys)
        local opts = DunnoVim.plugins.opts("mini.surround")
        local mappings = {
            { opts.mappings.add, desc = "Add Surrounding", mode = { "n", "v" } },
            { opts.mappings.delete, desc = "Delete Surrounding" },
            { opts.mappings.find, desc = "Find Right Surrounding" },
            { opts.mappings.find_left, desc = "Find Left Surrounding" },
            { opts.mappings.highlight, desc = "Highlight Surrounding" },
            { opts.mappings.replace, desc = "Replace Surrounding" },
            { opts.mappings.update_n_lines, desc = "Update `MiniSurround.config.n_lines`" },
        }
        mappings = vim.tbl_filter(function(m)
            return m[1] and #m[1] > 0
        end, mappings)
        return vim.list_extend(mappings, keys)
    end,
    opts = {
        mappings = {
            add = "gsa",
            delete = "gsd",
            find = "gsf",
            find_left = "gsF",
            highlight = "gsh",
            replace = "gsr",
            update_n_lines = "gsn",
        },
    },
}
