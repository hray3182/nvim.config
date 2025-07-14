return {
  {
    "echasnovski/mini.diff",
    event = "VeryLazy",
    opts = {
      view = {
        style = "sign", -- 'sign' 或 'number'
        signs = {
          add = "▎",
          change = "▎",
          delete = "",
        },
      },
    },
    config = function(_, opts)
      require("mini.diff").setup(opts)
    end,
  },
}