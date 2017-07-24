" Necessaries (spelling?) {
   " set nocompatible              
" }


" Vundle Plugin management {
    filetype off                  " required
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
    " Put ALL Plugin stuff here...
    Plugin 'terryma/vim-multiple-cursors'
    Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim'}
    Plugin 'scrooloose/nerdtree'
    Plugin 'scrooloose/nerdcommenter'
    Plugin 'tpope/vim-fugitive'
    Plugin 'MarcWeber/vim-addon-mw-utils'
    Plugin 'tomtom/tlib_vim'
    Plugin 'garbas/vim-snipmate'
    Plugin 'editorconfig/editorconfig-vim'
    Plugin 'crusoexia/vim-javascript-lib'
    Plugin 'lu-ren/SerialExperimentsLain'
    Plugin 'jelera/vim-javascript-syntax'
    Plugin 'othree/yajs.vim' 
    Plugin 'benekastah/neomake'
    Plugin 'epilande/neomake-local-eslint.vim'
    Plugin 'fatih/vim-go'
    Plugin 'grvcoelho/vim-javascript-snippets'
    Plugin 'Raimondi/delimitMate'
    Plugin 'Valloric/YouCompleteMe'
    Plugin 'marijnh/tern_for_vim'
    Plugin 'sickill/vim-monokai'

    call vundle#end()            " required
    filetype plugin indent on    " required
" }

" General editor settings {
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
    set matchpairs+=<:>
    set matchtime=2
    set cursorline
    hi CursorLine term=bold cterm=bold guibg=Grey20
    hi Normal guibg=NONE ctermbg=NONE
    set autoindent
    set smartindent
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

" nerdTree {
    let mapleader = "'"
    nmap <leader>nt :NERDTree<cr>
" }

" Neomake (linting) {
    autocmd! BufWritePost * Neomake
    let g:neomake_verbose = 3 
    let g:neomake_open_list = 2		
    let g:neomake_list_height = 5		
        
    let g:neomake_stylelint = {		
      \ 'errorformat':		
      \ '%+P%f,' .		
      \ '%*\s%l:%c  %t  %m,' .		
      \ '%-Q'		
      \ }		
        
    let g:neomake_warning_sign = {		
      \ 'text': 'W',		
      \ 'texthl': 'GitGutterChangeDefault',		
      \ }		
        
    let g:neomake_error_sign = {		
      \ 'text': 'E',		
      \ 'texthl': 'GitGutterDeleteDefault',		
      \ }		
        
    " Prefer local project eslint over global		
    let g:neomake_javascript_eslint_exe = system('PATH=$(npm bin):$PATH && which eslint | tr -d "\n"')		
        
    " Prefer local project stylelint over global		
    let g:neomake_css_stylelint_exe = system('PATH=$(npm bin):$PATH && which stylelint | tr -d "\n"')		
        
    let g:neomake_javascript_enabled_makers = ['eslint']		
    let g:neomake_jsx_enabled_makers = ['eslint']		
    let g:neomake_json_enabled_makers = ['jsonlint']		
    let g:neomake_css_enabled_makers = ['stylelint']		
    let g:neomake_scss_enabled_makers = ['stylelint']		
        
    let g:neomake_css_stylelint_maker = neomake_stylelint		
    let g:neomake_scss_stylelint_maker = neomake_stylelint		

" }

" Tern {
  let g:tern_show_argument_hints='on_hold'
  " and 
  let g:tern_map_keys=1
" }
