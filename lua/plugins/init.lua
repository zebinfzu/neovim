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
