return {
    "m4xshen/autoclose.nvim",
    version = "*",
    event = "InsertEnter",
    opts = {
	insert_at_start = true,
	options = {
	    disabled_filetypes = { "text", "markdown" }
	},
    },
}
