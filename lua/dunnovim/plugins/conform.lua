return {
    {
        "stevearc/conform.nvim",
        event = "BufWritePre",
        cmd = "ConformInfo",
        opts = {
            format_on_save = {
                timeout_ms = 1000,
                lsp_format = "fallback",
            },
        },
    },
    {
        "zapling/mason-conform.nvim",
        dependencies = { "williamboman/mason.nvim", "stevearc/conform.nvim" },
        event = "BufWritePre",
        opts = {},
    },
}
