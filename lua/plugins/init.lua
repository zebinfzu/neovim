local plugins = {
  -- color
  {
    "RRethy/nvim-base16",
    lazy = true,
  },
  {
    event = "VeryLazy",
    'navarasu/onedark.nvim'
  },
  -- serchfile
  {
    event = "VeryLazy",
    "nvim-telescope/telescope.nvim",
    tag = "0.1.1",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  -- nvim-tree
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    dependencies = {
      -- tree icon
      "nvim-tree/nvim-web-devicons",
      -- tree bar
      'nvim-lualine/lualine.nvim',
      -- tree hlight
      'nvim-treesitter/nvim-treesitter',
      -- tree bufferline
      'akinsho/bufferline.nvim',
      'moll/vim-bbye',
    },
  },
  -- mason -- lsp
  {
    event = "VeryLazy",
    "williamboman/mason.nvim",
    build = ":MasonUpdate", -- :MasonUpdate updates registry contents
  },
  {
    event = "VeryLazy",
    "neovim/nvim-lspconfig",
    dependencies = { "williamboman/mason-lspconfig.nvim" },
  },
  "glepnir/lspsaga.nvim",
  -- completion
  {
    event = "VeryLazy",
    'hrsh7th/nvim-cmp',
    dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'hrsh7th/cmp-vsnip',
      'hrsh7th/vim-vsnip',
      'rafamadriz/friendly-snippets',
      'onsails/lspkind-nvim'
    },
  },
  "github/copilot.vim",
  -- indent-blankline
  "lukas-reineke/indent-blankline.nvim",
  -- rust and dap
  'mfussenegger/nvim-dap',
  'rcarriga/nvim-dap-ui',
  'simrat39/rust-tools.nvim',
  -- persistance
  {
    "folke/persistence.nvim",
    event = "BufReadPre", -- this will only start session saving when an actual file was opened
    opts = {
      -- add any custom options here
    }
  },
  -- git
  'lewis6991/gitsigns.nvim',
}
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup(plugins)
require("plugins/config")
