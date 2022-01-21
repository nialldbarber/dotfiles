" Defaults
filetype plugin indent on
:syntax on

" Auto closing
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" Theme
syntax enable

" Indenting
set tabstop=4 softtabstop=4
set shiftwidth=4 
set expandtab
set smartindent

" Keep cursor as block even in edit mode 
set guicursor=i:block
" Set numbers relative to current pos
set relativenumber
" Change current line number from 0->current w
" Relativenumber set
set nu
" Self explanatory defaults
set hidden
set noerrorbells
set scrolloff=8
set colorcolumn=80
set signcolumn=yes
" Example = /poop will highlight all cases of 'poop' 
set incsearch

" Plugins
call plug#begin('~/.vim/plugged')
    Plug 'gruvbox-community/gruvbox'
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()

colorscheme gruvbox
