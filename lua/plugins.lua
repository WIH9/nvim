-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'navarasu/onedark.nvim'

  -- Language server
  use {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
  }

  -- Autocompletion
  use {
    'onsails/lspkind-nvim',
    'L3MON4D3/LuaSnip',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/nvim-cmp',
  }

  use 'nvim-lualine/lualine.nvim'

  use 'nvim-treesitter/nvim-treesitter'

  use 'windwp/nvim-ts-autotag'
  use 'windwp/nvim-autopairs'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use 'nvim-telescope/telescope-file-browser.nvim'

  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}

  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  use({
    "glepnir/lspsaga.nvim",
    branch = "main"
  })

  use 'jose-elias-alvarez/null-ls.nvim'

  use 'MunifTanjim/prettier.nvim'

  use 'lewis6991/gitsigns.nvim'

  use 'dinhhuy258/git.nvim'
end)
