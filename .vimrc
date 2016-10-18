" Necessaries (spelling?) {
    set nocompatible              " be iMproved, required
" }


" Vundle Plugin management {
    filetype off                  " required
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
    " Put ALL Plugin stuff here...
    Plugin 'fatih/vim-go'
    Plugin 'MvanDiemen/ghostbuster'
    Plugin 'terryma/vim-multiple-cursors'
    Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim'}
    Plugin 'scrooloose/nerdtree'
    Plugin 'scrooloose/nerdcommenter'
    Plugin 'tpope/vim-fugitive'
    Plugin 'pangloss/vim-javascript'
    Plugin 'valloric/youcompleteme'
    Plugin 'leafgarland/typescript-vim'
    Plugin 'crusoexia/vim-monokai'

    call vundle#end()            " required
    filetype plugin indent on    " required
" }


" General editor settings {
    "set noantialias
    colorscheme monokai
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
" }


" History, Undo, and Persistence stuff
    set backup " No backup files
    set backupdir=~/.vim/tmp/backups
    set nowritebackup " samezies!
    set noswapfile " obvious

    if has('persistent_undo')
      set undodir=~/.vim/tmp/undo
      set undolevels=500
      set undoreload=500
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