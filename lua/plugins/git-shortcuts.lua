return {
  -- 添加額外的 Git 相關快捷鍵
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      -- 快速查看變更的檔案
      { "<leader>gf", "<cmd>Telescope git_status<cr>", desc = "Git changed files" },
      { "<leader>gb", "<cmd>Telescope git_branches<cr>", desc = "Git branches" },
      { "<leader>gh", "<cmd>Telescope git_stash<cr>", desc = "Git stash" },
    },
  },
  
  -- 使用 Gitsigns 的快捷鍵
  {
    "lewis6991/gitsigns.nvim",
    keys = {
      -- 在 buffer 內跳到下/上一個變更
      { "]c", function() require("gitsigns").next_hunk() end, desc = "Next git change" },
      { "[c", function() require("gitsigns").prev_hunk() end, desc = "Previous git change" },
      -- 預覽變更
      { "<leader>gp", function() require("gitsigns").preview_hunk() end, desc = "Preview git change" },
    },
  },
}