return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      -- Conform will run multiple formatters sequentially
      python = { "black", "ruff" },
      javascript = { "prettierd", "eslint_d" },
      typescript = { "prettierd", "eslint_d" },
      vue = { "prettierd" },
      go = { "gofmt", "goimports", "golines" },
      rust = { "rustfmt" },
      ruby = { "rubocop" },
    },
    format_on_save = {
      timeout_ms = 3000,   -- Timeout for formatting on save
      lsp_fallback = true, -- Use LSP formatting if no formatter is found
      quiet = true,        -- Suppress unnecessary messages
    },
  },
}
