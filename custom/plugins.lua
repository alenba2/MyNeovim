---@type ChadrcConfig
local plugins = {
  {
    "nvimtools/none-ls.nvim",
    event = "VeryLazy",
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },
  {
    "startup-nvim/startup.nvim",
    requires = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
    config = function()
      require("startup").setup()
    end,
  },
  "sbdchd/neoformat",
  "edluffy/hologram.nvim",
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  {
    "vim-crystal/vim-crystal",
    ft = "crystal",
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- Installs Fomatters
        "eslint-lsp",
        "typescript-language-server",
        "tailwindcss-language-server",
        "angular-language-server",
        "prettierd",
        "stylua",
      },
    },
  },
  {
    "windwp/nvim-ts-autotag",
    ft = {
      "javascript",
      "javascriptreact",
      "typescript",
      "typescriptreact",
    },
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function()
      opts = require "plugins.configs.treesitter"
      opts.ensure_installed = {
        "lua",
        "javascript",
        "typescript",
        "tsx",
        "css",
      }
      return opts
    end,
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",

    config = function()
      -- EDIT AT configs.noice_config
      config = require "custom.configs.noice_config"
    end,
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
    },
  },
}

return plugins
