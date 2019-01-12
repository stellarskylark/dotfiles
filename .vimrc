" A minimal vimrc for new vim users to start with.
"
" Referenced here: http://vimuniversity.com/samples/your-first-vimrc-should-be-nearly-empty
"
" Original Author:	     Bram Moolenaar <Bram@vim.org>
" Made more minimal by:  Ben Orenstein
" Modified by :          Ben McCormick
" Last change:	         2014 June 8
"
" To use it, copy it to
"  for Unix based systems (including OSX and Linux):  ~/.vimrc
"  for Windows :  $VIM\_vimrc
"
"  If you don't understand a setting in here, just type ':h setting'.

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Switch syntax highlighting on
syntax on

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" Show line numbers
set number

" Allow hidden buffers, don't limit to 1 file per window/split
set hidden

set relativenumber

" Source plugins
so ~/.vim/plugins.vim

set laststatus=2

" Keybindings
let mapleader = ","
inoremap fd <esc>

" Vimrc stuff
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>rv :source ~/.vimrc<CR>

" NERDTree remaps
nnoremap <leader>; :NERDTreeToggle<CR>

" Tab controls
nnoremap <leader>n :tabn<CR>
nnoremap <leader>p :tabp<CR>

" Window controls
nnoremap <C-h> :wincmd h<CR>
nnoremap <C-j> :wincmd j<CR>
nnoremap <C-k> :wincmd k<CR>
nnoremap <C-l> :wincmd l<CR>

" Spell correction
nnoremap <leader>es :setlocal spell spelllang=en_us<CR>
iabbrev adn and
iabbrev waht what
iabbrev teh the
iabbrev tehn then

" Cursor control remaps
nnoremap <A-H> H
nnoremap <A-L> L
nnoremap H 0
nnoremap L $

" Groff commands
nnoremap <leader>c :!groff -mom expand("%:t") -Tpdf > expand("%:t:r") . ".pdf"<CR>

let g:slimv_swank_cmd = '! tmux new-window -d -n REPL-SBCL "sbcl --load ~/.vim/bundle/slimv/slime/start-swank.lisp"'
