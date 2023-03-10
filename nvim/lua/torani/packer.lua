vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  use {
    'navarasu/onedark.nvim',
    config = function()
      vim.cmd('colorscheme onedark')
    end
  }

  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

  use 'theprimeagen/harpoon'
  use 'mbbill/undotree'
  use 'tpope/vim-fugitive'

  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' }, -- Required
      { 'williamboman/mason.nvim' }, -- Optional
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' }, -- Required
      { 'hrsh7th/cmp-nvim-lsp' }, -- Required
      { 'hrsh7th/cmp-buffer' }, -- Optional
      { 'hrsh7th/cmp-path' }, -- Optional
      { 'saadparwaiz1/cmp_luasnip' }, -- Optional
      { 'hrsh7th/cmp-nvim-lua' }, -- Optional

      -- Snippets
      { 'L3MON4D3/LuaSnip' }, -- Required
      { 'rafamadriz/friendly-snippets' }, -- Optional
    }
  }

  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }

  use 'simrat39/rust-tools.nvim'

  -- Debugging
  use 'nvim-lua/plenary.nvim'
  use 'mfussenegger/nvim-dap'

  use 'folke/trouble.nvim'
  use 'nvim-tree/nvim-web-devicons'

  use {
    'tonyfettes/fcitx5.nvim',
    tag = 'v0.0.1-alpha',
    rocks = { 'dbus_proxy', 'lgi' },
    config = function()
      require 'fcitx5'.setup {}
      vim.cmd [[inoremap <S-space> <Cmd>lua require'fcitx5'.toggle()<CR>]]
    end
  }

  use {
    'tummetott/reticle.nvim',
    config = function()
      require('reticle').setup {
        -- add options here or leave empty
      }
    end
  }
end)
