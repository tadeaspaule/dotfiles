set nocompatible
set nobackup
set nowritebackup
set noundofile
set clipboard=unnamedplus
set hlsearch
set number
set ignorecase
set updatetime=100
set tabstop=2
set shiftwidth=2
set noexpandtab
set scrolloff=4
set linebreak
set nu rnu
set encoding=utf-8
set fileencoding=utf-8
set mouse=a
set shortmess=filnxtoOFI

" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
" The ! means the package won't be loaded right away but when plugins are
" loaded during initialization.
if has('syntax') && has('eval')
  packadd! matchit
endif

" map leader to spacebar
let mapleader = "\<Space>"

source $HOME/.config/nvim/config/plugins.vim
source $HOME/.config/nvim/config/lsp.vim
source $HOME/.config/nvim/config/ui.vim
source $HOME/.config/nvim/config/keybinds.vim

