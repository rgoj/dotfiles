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


" Installed Plugins
" -----------------

Plugin 'junegunn/goyo.vim'

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
" Mappings {{{
" ========

" Avoid using <Esc>
" -----------------

" The below mappings are nice, but I have a hunch I should read up a bit on
" the differences between map, imap, cmap, no recursion, etc.

" Exit editing mode with 'jk' instead of pressing <Esc>
imap jk <Esc>
cmap jk <Esc> 

" (Experimental) Exit editing mode and enter ':' command with ';;'
imap ;; <Esc>:
map ;; <Esc>:


" Quick vimrc editing
" -------------------

" See these excellent sources [7, 3]
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>


" }}}
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
