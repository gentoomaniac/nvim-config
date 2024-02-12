-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
      'nvim-telescope/telescope.nvim', tag = '0.1.5',
      -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
  }

  use {
    "SmiteshP/nvim-navic",
    requires = "neovim/nvim-lspconfig"
  }
  use 'mfussenegger/nvim-dap'

  -- Status bar
  use 'ryanoasis/vim-devicons'
  use 'glepnir/galaxyline.nvim'
  use 'Avimitin/nerd-galaxyline'
  --use 'hardcoreplayers/spaceline.vim'
  --[[
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  ]]--
  use {
    'yamatsum/nvim-nonicons',
    requires = {'kyazdani42/nvim-web-devicons'}
  }

  -- Colorschemes
  --[[
  use({ "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 , config = function()
      vim.cmd('colorscheme moonfly')
    end
  })
  --]]
  use("folke/tokyonight.nvim")
  use({
      "rose-pine/neovim",
      as = "rose-pine",
      config = function()
          vim.cmd("colorscheme rose-pine")
      end
  })

  use( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'} )

  use 'nvim-lua/plenary.nvim'
--  use 'ThePrimeagen/harpoon'
  use 'mbbill/undotree'

  use {
      "VonHeikemen/lsp-zero.nvim",
      branch = "v1.x",
      requires = {
          -- LSP Support
          {"neovim/nvim-lspconfig"},
          {"williamboman/mason.nvim"},
          {"williamboman/mason-lspconfig.nvim"},

          -- Autocompletion
          {"hrsh7th/nvim-cmp"},
          {"hrsh7th/cmp-buffer"},
          {"hrsh7th/cmp-path"},
          {"saadparwaiz1/cmp_luasnip"},
          {"hrsh7th/cmp-nvim-lsp"},
          {"hrsh7th/cmp-nvim-lua"},

          -- Snippets
          {"L3MON4D3/LuaSnip"},
          {"rafamadriz/friendly-snippets"},
      }
  }

end)
