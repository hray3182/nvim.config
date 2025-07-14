return {
  -- 核心 DAP 插件
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      -- UI 介面
      "rcarriga/nvim-dap-ui",
      "nvim-neotest/nvim-nio",
      
      -- 虛擬文字顯示
      "theHamsta/nvim-dap-virtual-text",
      
      -- Mason 整合，自動安裝 debug adapters
      "jay-babu/mason-nvim-dap.nvim",
    },
    keys = {
      { "<F5>", function() require("dap").continue() end, desc = "Debug: Start/Continue" },
      { "<F10>", function() require("dap").step_over() end, desc = "Debug: Step Over" },
      { "<F11>", function() require("dap").step_into() end, desc = "Debug: Step Into" },
      { "<F12>", function() require("dap").step_out() end, desc = "Debug: Step Out" },
      { "<leader>db", function() require("dap").toggle_breakpoint() end, desc = "Debug: Toggle Breakpoint" },
      { "<leader>dB", function() require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: ")) end, desc = "Debug: Set Conditional Breakpoint" },
      { "<leader>dr", function() require("dap").repl.open() end, desc = "Debug: Open REPL" },
      { "<leader>du", function() require("dapui").toggle() end, desc = "Debug: Toggle UI" },
      { "<leader>dt", function() require("dap").terminate() end, desc = "Debug: Terminate" },
    },
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")
      
      -- 設定 UI
      dapui.setup({
        icons = { expanded = "▾", collapsed = "▸", current_frame = "▸" },
        layouts = {
          {
            elements = {
              { id = "scopes", size = 0.33 },
              { id = "breakpoints", size = 0.17 },
              { id = "stacks", size = 0.25 },
              { id = "watches", size = 0.25 },
            },
            size = 0.33,
            position = "right",
          },
          {
            elements = {
              { id = "repl", size = 0.45 },
              { id = "console", size = 0.55 },
            },
            size = 0.27,
            position = "bottom",
          },
        },
      })
      
      -- 自動開啟/關閉 UI
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
      
      -- 設定虛擬文字
      require("nvim-dap-virtual-text").setup()
    end,
  },
  
  -- Mason DAP 整合
  {
    "jay-babu/mason-nvim-dap.nvim",
    dependencies = {
      "williamboman/mason.nvim",
      "mfussenegger/nvim-dap",
    },
    opts = {
      ensure_installed = {
        -- 在這裡加入你需要的 debug adapters
        "python",         -- debugpy
        "js",            -- node-debug2-adapter
        "codelldb",      -- C/C++/Rust
      },
      handlers = {}, -- 自動設定
    },
  },
  
  -- 語言特定配置
  -- Python
  {
    "mfussenegger/nvim-dap-python",
    ft = "python",
    dependencies = "mfussenegger/nvim-dap",
    config = function()
      -- 使用系統 python
      require("dap-python").setup("python")
    end,
  },
  
  -- Go
  {
    "leoluz/nvim-dap-go",
    ft = "go",
    dependencies = "mfussenegger/nvim-dap",
    config = function()
      require("dap-go").setup()
    end,
  },
}