call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Valloric/YouCompleteMe'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'kien/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'rking/ag.vim'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"colorschemes
Plug 'morhetz/gruvbox'

"Go-lang
Plug 'fatih/vim-go'

call plug#end()

syntax on
let g:mapleader=','
let g:airline_theme='badwolf'
colorscheme gruvbox
set background=dark
set number
set expandtab
set tabstop=4

set hlsearch
set incsearch


"mappings 

map <C-n> :NERDTreeToggle<CR>
map <C-i> :GoBuild<CR>
map <Leader> <Plug>(easymotion-prefix)

map <silent> <C-h> :call WinMove('h')<CR>
map <silent> <C-j> :call WinMove('j')<CR>
map <silent> <C-k> :call WinMove('k')<CR>
map <silent> <C-l> :call WinMove('l')<CR>

function! WinMove(key) 
  let t:curwin = winnr()
  exec "wincmd ".a:key
  if (t:curwin == winnr())
    if (match(a:key, '[jk]'))
      wincmd v 
    else
      wincmd s
    endif
    exec "wincmd ".a:key
  endif
endfunction
