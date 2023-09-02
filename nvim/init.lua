require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
		    'nvim-tree/nvim-web-devicons', -- optional
		}	
	}
	use {
 		"luukvbaal/nnn.nvim",
		 config = function() require("nnn").setup() end
	}
end)

vim.wo.number = true
