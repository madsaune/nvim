-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/nvim-cmp'
  use 'williamboman/nvim-lsp-installer'

  use {'neoclide/coc.nvim', branch = 'release'}
  use "lukas-reineke/lsp-format.nvim"

  -- color themes
  use {'catppuccin/nvim', as = 'catppuccin'}
  use {'morhetz/gruvbox', as = 'gruvbox'}

  -- file explorer
  use 'preservim/nerdtree'

  -- markdown
  use 'godlygeek/tabular'
  use 'plasticboy/vim-markdown'
  use({
      "iamcco/markdown-preview.nvim",
      run = function() vim.fn["mkdp#util#install"]() end,
  })

  -- terraform
  use 'hashivim/vim-terraform'

  -- statusbar
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'

  -- fzf
  use {'junegunn/fzf', run = function() vim.fn['fzf#install']() end }
  use 'junegunn/fzf.vim'

  use 'SirVer/ultisnips'
  use 'quangnguyen30192/cmp-nvim-ultisnips'

  use 'tpope/vim-commentary'
  use 'tpope/vim-surround'
  use 'tpope/vim-fugitive'

  use 'editorconfig/editorconfig-vim'
  use 'airblade/vim-gitgutter'

  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'MichaHoffmann/tree-sitter-hcl'
  use 'tree-sitter/tree-sitter-python'

  use { 'prettier/vim-prettier', run = 'yarn install --frozen-lockfile --production' }

end)
