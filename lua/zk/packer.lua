vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	-- lua/plugins/rose-pine.lua
	use {
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			vim.cmd("colorscheme rose-pine")
		end
	}

	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}
	use { 'nvim-treesitter/playground', }
	use { 'mbbill/undotree', }
	use { 'tpope/vim-fugitive', }
	use { 'mason-org/mason.nvim', }
	use {  'neovim/nvim-lspconfig', }
	use {  'hrsh7th/nvim-cmp', }
	use {  'hrsh7th/cmp-nvim-lsp', }
	use {  'L3MON4D3/LuaSnip', }
	use {  'saadparwaiz1/cmp_luasnip', }
	use {  'hrsh7th/cmp-buffer', }
	use {  'hrsh7th/cmp-path', }
end)
