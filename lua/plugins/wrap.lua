return {
  {
    "LazyVim/LazyVim",
    opts = function()
      vim.opt.wrap = true -- 啟用自動換行
      vim.opt.linebreak = true -- 在單詞邊界換行
      vim.opt.breakindent = true -- 保持縮排
    end,
  },
}