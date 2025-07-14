return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        javascript = { "prettier" },
        typescript = { "prettier" },
        javascriptreact = { "prettier" },
        typescriptreact = { "prettier" },
        css = { "prettier" },
        html = { "prettier" },
        json = { "prettier" },
        yaml = { "prettier" },
        markdown = { "prettier" },
        python = { "black", "isort" },
        lua = { "stylua" },
        go = { "gofmt", "goimports" },
        rust = { "rustfmt" },
        sh = { "shfmt" },
      },
      format_on_save = {
        -- 自動在儲存時格式化
        timeout_ms = 500,
        lsp_fallback = true,
      },
    },
  },
  
  -- 使用 mason 自動安裝 formatters
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "prettier",
        "stylua",
        "black",
        "isort",
        "shfmt",
      },
    },
  },
}