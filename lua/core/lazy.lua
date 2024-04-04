vim.g.mapleader = " "
vim.g.maplocalleader = " "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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

require('lazy').setup({
  spec = {
    {
      'the-essence-of-life/spare',
      branch = "2.0",
      import = 'spare.plugins',
      opts = require("core.config")
    },
    { import = "plugins" }
  },
  defaults = {
    lazy = true
  },
  ui = {
    border = "rounded",
    backdrop = 100,
  },
  checker = {
    enabled = false,
    concurrency = 1,
    notify = false,
    frequency = 3600,
  },
  profiling = {
    loader = true,
    require = false,
  },
  change_detection = {
    enabled = true,
    notify = false,
  },
  performance = {
    rtp = {
      disabled_plugins = {
        "netrwPlugin"
      }
    }
  },
})
