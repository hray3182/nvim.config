return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          explorer = {
            hidden = true, -- 顯示隱藏檔案
            ignored = true, -- 不顯示 ignored 檔案
          },
          files = {
            hidden = true, -- 在檔案搜尋時顯示隱藏檔案
            ignored = true, -- 不顯示 ignored 檔案
          },
        },
      },
    },
  },
}
