" Necessaries (spelling?) {
   " set nocompatible              
" }


" Vundle Plugin management {
    filetype off                  " required
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
    " Put ALL Plugin stuff here...
    Plugin 'fatih/vim-go'
    Plugin 'terryma/vim-multiple-cursors'
    Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim'}
    Plugin 'scrooloose/nerdtree'
    Plugin 'scrooloose/nerdcommenter'
    Plugin 'tpope/vim-fugitive'
    Plugin 'pangloss/vim-javascript'
    Plugin 'valloric/youcompleteme'
    Plugin 'leafgarland/typescript-vim'
    Plugin 'roosta/srcery'
    Plugin 'MarcWeber/vim-addon-mw-utils'
    Plugin 'tomtom/tlib_vim'
    Plugin 'garbas/vim-snipmate'

    call vundle#end()            " required
    filetype plugin indent on    " required
" }


" General editor settings {
    "set noantialias
    colorscheme srcery
    set guifont=Droid\ Sans\ Mono\ for\ Powerline:h13
    set bg=dark
    set number " Line number
    syntax on
    set tabstop=2
    set shiftwidth=2
    set expandtab
    set autoread " Auto-update the file if it's been externally edited
    set incsearch " incremental search
    set hlsearch " highlight search terms
    set matchpairs+=<:>
    set matchtime=2
" }


" History, Undo, and Persistence stuff
    set backup " Allow for backup files
    set backupdir=~/.vim/tmp/backups " Where backups are stored
    set dir=~/.vim/tmp " Set dir for swap files

    if has('persistent_undo')
      set undodir=~/.vim/tmp/undo
      set undolevels=1000
      set undoreload=1000
    endif
    set history=5000
" }


" Powerline setup: make sure you've correctly installed the fonts (see the
" github page) {
    set encoding=utf-8
    set laststatus=2
    set rtp+=~/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim
    let g:Powerline_symbols='fancy'
" }


" vim-javascript setup {
    let g:javascript_plugin_jsdoc = 1
" }

" Set shell to bash (zsh is weird in vim) {
    set shell=/bin/bash
" }

" snipMate {
   let g:snips_trigger_key='<c-space>' " remap from <Tab> to <c-space> to not conflict with youCompleteMe
" }
