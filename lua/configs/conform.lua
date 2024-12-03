local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    -- Conform will run multiple formatters sequentially
    python = { "isort", "black", stop_after_first = true},
    -- Conform will run the first available formatter
    cpp = {"clang-format"},
    c = {"clang-format"},
    svelte = { { "prettierd", "prettier", stop_after_first = true } },
    astro = { { "prettierd", "prettier", stop_after_first = true } },
    javascript = { { "prettierd", "prettier", stop_after_first = true } },
    typescript = { { "prettierd", "prettier", stop_after_first = true } },
    javascriptreact = { { "prettierd", "prettier", stop_after_first = true } },
    typescriptreact = { { "prettierd", "prettier", stop_after_first = true } },
    json = { { "prettierd", "prettier", stop_after_first = true } },
    graphql = { { "prettierd", "prettier", stop_after_first = true } },
    java = { "google-java-format" },
    kotlin = { "ktlint" },
    ruby = { "standardrb" },
    markdown = { { "prettierd", "prettier", stop_after_first = true } },
    erb = { "htmlbeautifier" },
    html = { "htmlbeautifier" },
    bash = { "beautysh" },
    proto = { "buf" },
    rust = { "rustfmt" },
    yaml = { "yamlfix" },
    toml = { "taplo" },
    css = { { "prettierd", "prettier", stop_after_first = true } },
    scss = { { "prettierd", "prettier", stop_after_first = true } },
    sh = { "shellcheck" },
    go = { "gofmt" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
    lsp_format = "fallback",
  },
}

return options
