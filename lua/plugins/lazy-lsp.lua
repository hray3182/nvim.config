return {
  {
    "dundalek/lazy-lsp.nvim",
    dependencies = {
      "neovim/nvim-lspconfig",
    },
    config = function()
      require("lazy-lsp").setup({
        -- 預設配置會自動偵測並設定可用的 LSP 伺服器
        -- 你可以在這裡添加特定的配置
        excluded_servers = {
          -- 排除不想自動載入的伺服器
          -- "sqls",
          -- "denols",
        },
        preferred_servers = {
          -- 設定特定檔案類型的優先伺服器
          -- python = { "pylsp", "pyright" },
          -- markdown = {},
        },
        configs = {
          -- 為特定伺服器添加自訂配置
          -- lua_ls = {
          --   settings = {
          --     Lua = {
          --       diagnostics = {
          --         globals = { "vim" },
          --       },
          --     },
          --   },
          -- },
        },
      })
    end,
  },
}