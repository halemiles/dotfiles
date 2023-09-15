require('packer').startup(function(use)
         use 'wbthomason/packer.nvim'
         use {
                 'nvim-tree/nvim-tree.lua',
                 requires = {
                     'nvim-tree/nvim-web-devicons', -- optional
                 }
         }
	 use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.3',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
	}
 
	
 end)
