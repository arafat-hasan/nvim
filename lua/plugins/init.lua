return {
  {
    "stevearc/conform.nvim",
    event = { "BufWritePre" },
    opts = require "configs.conform",
    keys = {
      {
        -- Customize or remove this keymap to your liking
        "<leader>f",
        function()
          require("conform").format({ async = true })
        end,
        mode = "",
        desc = "Format buffer",
      },
    },
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
       "html", "css"
  		},
  	},
  },

  { "nvim-tree/nvim-web-devicons", opts = {} },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "clangd",
        "clang-format",
        "standardrb",
        "prettier",
        "prettierd",
        "ktlint",
        "eslint_d",
        "google-java-format",
        "htmlbeautifier",
        "beautysh",
        "buf",
        "rustfmt",
        "yamlfix",
        "taplo",
        "shellcheck",
        "gopls",
        "delve",
        "astro-language-server",
      }
    }
  },

  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps (which-key)",
      },
    },
  },

  {
    "kawre/leetcode.nvim",
    build = ":TSUpdate html",
    event = "VeryLazy",
    cmd = "Leet",
    dependencies = {
        "nvim-telescope/telescope.nvim",
        "nvim-lua/plenary.nvim", -- required by telescope
        "MunifTanjim/nui.nvim",

        -- optional
        "nvim-treesitter/nvim-treesitter",
        "rcarriga/nvim-notify",
        "nvim-tree/nvim-web-devicons",
        -- "3rd/image.nvim",
    },
    opts = {
        ---@type lc.storage
        storage = {
            home = vim.fn.getcwd() .. "/leetcode",
            cache = vim.fn.stdpath("cache") .. "/leetcode",
        },
        -- ---@type boolean
        -- image_support = true,
    },
  },

  -- {
  --   "rcarriga/nvim-dap-ui",
  --   event = "VeryLazy",
  --   dependencies = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"},
  --   config = function()
  --     local dap = require("dap")
  --     local dapui = require("dapui")
  --     dapui.setup()
  --     dap.listeners.after.event_initialized["dapui_config"] = function()
  --       dapui.open()
  --     end
  --     dap.listeners.before.event_terminated["dapui_config"] = function()
  --       dapui.close()
  --     end
  --     dap.listeners.before.event_exited["dapui_config"] = function()
  --       dapui.close()
  --     end
  --   end
  -- },
  -- {
  --   "jay-babu/mason-nvim-dap.nvim",
  --   event = "VeryLazy",
  --   dependencies = {
  --     "williamboman/mason.nvim",
  --     "mfussenegger/nvim-dap",
  --   },
  --   opts = {
  --     handlers = {}
  --   },
  -- },
  -- {
  --   "mfussenegger/nvim-dap",
  --   config = function()
  --     local dap = require('dap')
  --     dap.adapters.cppdbg = {
  --       id = 'cppdbg',
  --       type = 'executable',
  --       command = '/usr/bin/OpenDebugAD7',
  --     }

  --     dap.configurations.cpp = {
  --       {
  --         name = "Launch file",
  --         type = "cppdbg",
  --         request = "launch",
  --         program = function()
  --           return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
  --         end,
  --         cwd = '${workspaceFolder}',
  --         stopAtEntry = true,
  --       },
  --       {
  --         name = 'Attach to gdbserver :1234',
  --         type = 'cppdbg',
  --         request = 'launch',
  --         MIMode = 'gdb',
  --         miDebuggerServerAddress = 'localhost:1234',
  --         miDebuggerPath = '/usr/bin/gdb',
  --         cwd = '${workspaceFolder}',
  --         program = function()
  --           return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
  --         end,
  --       },
  --     }
  --     dap.configurations.c = dap.configurations.cpp
  --     dap.configurations.rust = dap.configurations.cpp
  --   end,
  -- },

  {
    'xeluxee/competitest.nvim',
    dependencies = {"MunifTanjim/nui.nvim"},
    event = "VeryLazy",
    config = function()
      local competitest = require('competitest')
      competitest.setup{
        template_file = true,
        evaluate_template_modifiers = true,
        template_file = "$(HOME)/Work/github_personal/problem-solving/Library/skeleton.$(FEXT)",
        received_problems_path = "$(CWD)/$(JUDGE)/$(CONTEST)/$(PROBLEM).$(FEXT)",
        received_contests_directory = "$(CWD)/Contests/$(JUDGE)/$(CONTEST)",
        received_contests_problems_path = "$(PROBLEM)/main.$(FEXT)",
      }
    end,
  },
  -- {
  --   "nvimdev/guard.nvim",

  --   dependencies = {
  --       "nvimdev/guard-collection",
  --   },
  --   event = "BufReadPre",
  --   config = function()
  --     vim.g.guard_config = {
  --       -- format on write to buffer
  --       fmt_on_save = true,
  --       -- use lsp if no formatter was defined for this filetype
  --       lsp_as_default_formatter = false,
  --       -- whether or not to save the buffer after formatting
  --       save_on_fmt = true,
  --     }
  --   end,

  -- },


}
