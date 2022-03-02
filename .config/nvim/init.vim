" An example for a vimrc file.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2019 Dec 17
"
" To use it, copy it to
"	       for Unix:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"	 for MS-Windows:  $VIM\_vimrc
"	      for Haiku:  ~/config/settings/vim/vimrc
"	    for OpenVMS:  sys$login:.vimrc

" When started as "evim", evim.vim will already have done these settings, bail
" out.
if v:progname =~? "evim"
  finish
endif

" Get the defaults that most users want.
source $VIMRUNTIME/defaults.vim

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file (restore to previous version)
  if has('persistent_undo')
    set undofile	" keep an undo file (undo changes after closing)
  endif
endif

if &t_Co > 2 || has("gui_running")
  " Switch on highlighting the last used search pattern.
  set hlsearch
endif

" Put these in an autocmd group, so that we can delete them easily.
augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78
augroup END

" Add optional packages.
"
" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
" The ! means the package won't be loaded right away but when plugins are
" loaded during initialization.
if has('syntax') && has('eval')
  packadd! matchit
endif


"Stuffs I added"
call plug#begin()
Plug 'SirVer/ultisnips'
Plug 'vim-airline/vim-airline'
Plug 'NLKNguyen/papercolor-theme'
Plug 'ryanoasis/vim-devicons'
call plug#end()

"Setting up line numbering"
set number
set numberwidth=4
set relativenumber

"Setting up tabstop"
set tabstop=4
set shiftwidth=4
set expandtab

"Setting up autoindent"
set autoindent
set smartindent
set smarttab

"Setting up last status"
set laststatus=2

"Setting up encodting to utf8"
set encoding=utf-8

"Setting up vim font to a Meslo Nerd Font"
set guifont=FiraCode\ Nerd\ Font\ Mono\ for\ Powerline:h12

"Setting up colorscheme"
"Having some issues with it"

"Setting up Python Syntax Highling"
let g:python_highlight_all = 1
let g:python_highlight_builtins = 1
