" Plugins {{{
" =======

" Setup the Vundle Plugin Manager
" -------------------------------

set nocompatible  " be vimproved, required for Vundle
filetype off      " required for Vundle

" Automatically installing Vundle if it's not installed [1, 2]
let installing_vundle=0
if !filereadable($HOME."/.vim/bundle/Vundle.vim/README.md")
    echo "Installing Vundle..."
    echo ""
    silent !mkdir -p $HOME/.vim/bundle
    silent !git clone https://github.com/gmarik/Vundle.vim $HOME/.vim/bundle/Vundle.vim
    let installing_vundle=1
endif

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim


" Plugins managed by Vundle
" -------------------------

call vundle#begin()  " keep Plugin commands between vundle#begin/end

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'


" Language-specific plugins
" -------------------------

" Javascript

" Improved Javascript syntax highlighting and indentation
"Plugin 'pangloss/vim-javascript'
"let g:javascript_plugin_jsdoc = 1
"let g:javascript_plugin_ngdoc = 1
"let g:javascript_plugin_flow = 1
"" 'Enables code folding for javascript based on our syntax file'
"augroup javascript_folding
    "au!
    "au FileType javascript setlocal foldmethod=syntax
"augroup END

" Improved Javascript syntax highlighting and indentation
"Plugin 'othree/yajs'

Plugin 'jelera/vim-javascript-syntax'
"Plugin 'isruslan/vim-es6'


" Other installed plugins
" -----------------------

Plugin 'tpope/vim-fugitive'

Plugin 'scrooloose/syntastic'
let g:syntastic_javascript_checkers = ["jscs", "jshint"]
let g:syntastic_check_on_wq = 1

Plugin 'tpope/vim-markdown'

Plugin 'rking/ag.vim'  " Requires the_silver_searcher to be installed

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'

Plugin 'kien/ctrlp.vim'
Plugin 'junegunn/goyo.vim'
Plugin 'matchit.zip'  " extended % matching for HTML, LaTeX, and many other languages
"Plugin 'elzr/vim-json'  " syntax highlighting for JSON

" Save views (folds, cursor position) automatically
Plugin 'vim-scripts/restore_view.vim'
set viewoptions=cursor,folds,slash,unix

Plugin 'airblade/vim-gitgutter'

" Show syntax group of word under cursor
Plugin 'gerw/vim-hilinktrace'

call vundle#end()  " keep Plugin commands between vundle#begin/end


" Install Plugins after first-time Vundle installation
" ----------------------------------------------------
if installing_vundle == 1
    :silent! PluginInstall
    :qa
endif


" Turn on filetype detection, filetype plugins and per-filetype indentation
" -------------------------------------------------------------------------

filetype plugin indent on


" }}}
" White space {{{
" ===========

" See excellent vimcasts episode [4]
set tabstop=2      " Width of tab character
set softtabstop=2  " Add/remove given amount of spaces with <Tab>/<Bksp>
set shiftwidth=2   " Amount of spaces for indentation commands
set expandtab      " Expand tabs into spaces


" }}}
" Colours {{{
" =======

" Colour schemes
Plugin 'KeitaNakamura/neodark.vim'
let g:neodark#background = '#191919'
let g:neodark#use_256color = 1
Plugin 'nanotech/jellybeans.vim'
Plugin 'blueshirts/darcula'
Plugin 'tomasiser/vim-code-dark'

" Current colour scheme and scores
colorscheme darcula  " 7/10
"colorscheme codedark  " 6/10
"colorscheme neodark  " 4/10
"colorscheme jellybeans  " 3/10

" Customisations for default colour scheme
":hi Folded ctermbg=black

" }}}
" Mappings {{{
" ========

" Avoid using <Esc>
" -----------------

" The below mappings are nice, but I have a hunch I should read up a bit on
" the differences between map, imap, cmap, no recursion, etc.

" Exit editing mode without reaching to <Esc>
imap ;j <Esc>
cmap ;j <Esc> 

" Exit editing mode and enter command mode immediately
imap ;k <Esc>:
map ;k <Esc>:

" Quickly open NERDTree
imap ;l <Esc>::NERDTreeToggle<CR>
map ;l :NERDTreeToggle<CR>

" Quick vimrc editing
" -------------------

" See these excellent sources [7, 3]
nnoremap <leader>ev :vsp ~/.vimrc<CR>
noremap <leader>sv :source ~/.vimrc<CR>


" }}}
" Folding {{{
" =======

" Persist and load folds automatically
" ------------------------------------

"augroup AutoSaveFolds
"  autocmd!
"  autocmd BufWinLeave * mkview
"  autocmd BufWinEnter * silent loadview
"augroup END


" }}}
" General {{{
" =======

" Relative line numbers
set relativenumber
set number

" Reducing UI cluttter
set fillchars=fold:\ ,vert:\│


"}}}

" References {{{
" ==========

" [1]: https://github.com/timss/vimconf/blob/master/.vimrc#L17
" [2]: http://www.erikzaadi.com/2012/03/19/auto-installing-vundle-from-your-vimrc/
" [3]: http://dougblack.io/words/a-good-vimrc.html
" [4]: http://vimcasts.org/episodes/tabs-and-spaces/
" [5]: http://learnvimscriptthehardway.stevelosh.com/chapters/07.html


" }}}
" Use folding for the vimrc file, start folded {{{
" vim:foldmethod=marker:foldlevel=0
" }}}
