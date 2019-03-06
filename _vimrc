call plug#begin('~/.vim/plugged')
Plug 'lifepillar/vim-solarized8'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/vim-easy-align'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
"Plug 'Valloric/YouCompleteMe'

call plug#end()
":PlugInstall

"""""""""""""
" visual setting
"""""""""""""
set guioptions-=m
set guioptions-=T
set ruler
set number
set textwidth  =0 
set wrapmargin =0
set nowrap

set termguicolors
set background =dark
colorscheme solarized8
syntax on

set guifont=consolas:h11:cANSI
set formatoptions-=cqt
set encoding=utf-8

"""""""""""""
" search setting
"""""""""""""
set hlsearch		"highlight search
set noincsearch		"incremental searching
set ignorecase		"searches are case insensitive
set smartcase		"unless they contain at least one capital letter

"""""""""""""
" whitespace management
"""""""""""""
set backspace   =indent,eol,start		"backspace through everything in insert mode
set virtualedit =all

set expandtab		"convert tabs to spaces
set shiftround	
set shiftwidth  =2      "setting for    << and >>    in normal mode
set tabstop     =2      "setting insert tabs' spacing (with expandtab on) 
set softtabstop =2      "setting delete tabs' spacing (with expandtab on)

"""""""""""""
" variables
"""""""""""""
let mapleader      ='\'

" cd `=pathname`
" :NERDTreeCWD
let g:nvimlocal    ='c:\users\kschong\appdata\local\nvim'
let g:gvimlocal    ='c:\my_vim\gvim_8.1.0991_x86\vim'
let g:claims       ='c:\localhost_claims_dev'
let g:claimsnode   ='c:\localhost_claims_dev3'

" ultisnips snippets custom directory, 
" make sure its saved in c:\Users\kschong\.vim\plugged\vim-snippets\my_snippets
let g:UltiSnipsSnippetDirectories=["UltiSnips","my_snippets"]

"""""""""""""
" key mapping
"""""""""""""
nmap <leader>v  :so $myvimrc<cr>
nmap <leader>ve :e! $myvimrc<cr>

xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
vmap ga <Plug>(EasyAlign)

nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>N :NERDTreeClose<CR>

nnoremap <left>    :tabprev<CR>
nnoremap <right>   :tabnext<CR>
nnoremap <up>      :bp<CR>
nnoremap <down>    :bn<CR>

vmap <C-c> "*y
nmap <C-v> "*p
nmap <C-s> :w<CR>


" vim regularly used
" :cd %:p:h   cd to current file
" :help     switch to help
" :ctrl-]   jump to tag in help
" zz,zt,tb  
