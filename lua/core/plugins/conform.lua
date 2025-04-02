return {
    'stevearc/conform.nvim',
    event = "BufWritePre",
    opts = {
        formatters_by_ft = {
            lua = { "stylua" },
            python = { "isort", "ruff" },
            rust = { "rustfmt", lsp_format = "fallback" },
            javascript = { "prettierd", "prettier", stop_after_first = true }
        },
        format_on_save = {
            timeout_ms = 1000,
            lsp_format = "fallback"
        }
    },
}
