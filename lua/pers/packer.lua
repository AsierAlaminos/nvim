vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.6',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use { "rose-pine/neovim", as = "rose-pine" }
  use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use ('nvim-treesitter/playground')
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v3.x',
	  requires = {
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  {'neovim/nvim-lspconfig'},
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'L3MON4D3/LuaSnip'},
	  }
  }
  use {"williamboman/mason.nvim"}
  use {'m4xshen/autoclose.nvim'}
  use {'nvim-tree/nvim-web-devicons'}
  use {'glepnir/dashboard-nvim'}
  use {'goolord/alpha-nvim'}
  use {
      "kyazdani42/nvim-tree.lua",
      requires = { "kyazdani42/nvim-web-devicons" },
      config = function()
          require("nvim-web-devicons").setup()

          require("nvim-tree").setup {
              hijack_cursor = true,
              view = {
                  width = 40
              }
          }
      end
  }
  use{
	  'MeanderingProgrammer/render-markdown.nvim',
	  after = { 'nvim-treesitter' },
	  requires = { 'echasnovski/mini.nvim', opt = true }, -- if you use the mini.nvim suite
	  -- requires = { 'echasnovski/mini.icons', opt = true }, -- if you use standalone mini plugins
	  -- requires = { 'nvim-tree/nvim-web-devicons', opt = true }, -- if you prefer nvim-web-devicons
	  config = function()
		  require('render-markdown').setup({})
	  end,
  }
end)
