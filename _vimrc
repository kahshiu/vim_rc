call plug#begin('~/.vim/plugged')
Plug 'lifepillar/vim-solarized8'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree'
Plug 'mattn/emmet-vim'
Plug 'godlygeek/tabular'
"Plug 'junegunn/vim-easy-align'
" Plug 'Valloric/YouCompleteMe'

" START: typescript packages for vim
" syntax highlighting and typescript to javascript compilation
Plug 'leafgarland/typescript-vim'
"Plug 'ianks/vim-tsx'
"Plug 'w0rp/ale'
" Typescript server
"Plug 'Quramy/tsuquyomi'
" async process manager
"Plug 'Shougo/vimproc.vim', {
"    \ 'build' : {
"    \     'windows' : 'tools\\update-dll-mingw',
"    \     'cygwin' : 'make -f make_cygwin.mak',
"    \     'mac' : 'make -f make_mac.mak',
"    \     'linux' : 'make',
"    \     'unix' : 'gmake',
"    \    },
"    \ }
Plug 'Valloric/YouCompleteMe', {
    \ 'build' : {
    \     'mac' : './install.sh --clang-completer --system-libclang --omnisharp-completer',
    \     'unix' : './install.sh --clang-completer --system-libclang --omnisharp-completer',
    \     'windows' : './install.sh --clang-completer --system-libclang --omnisharp-completer',
    \     'cygwin' : './install.sh --clang-completer --system-libclang --omnisharp-completer'
    \    }
    \ }
Plug $VIM . '/plugins/vimproc'

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


set foldmethod=syntax
set foldcolumn=1
let javascript_fold=1
set foldlevelstart=99

"""""""""""""
" variables
"""""""""""""
let mapleader      ='['

" cd `=pathname`
" :NERDTreeCWD
let g:nvimlocal    ='c:\users\kschong\appdata\local\nvim'
let g:gvimlocal    ='c:\my_vim\gvim_8.1.0991_x86\vim'
let g:claims       ='c:\localhost_claims_dev'
let g:claimsnode   ='c:\localhost_claims_dev3'

" ultisnips snippets custom directory, 
" make sure its saved in c:\Users\kschong\.vim\plugged\vim-snippets\my_snippets
let g:UltiSnipsSnippetDirectories=["UltiSnips","my_snippets"]
let g:ycm_key_list_select_completion=['<C-j>']

" let g:ale_linters = {
" \   'javascript': ['eslint'],
" \   'typescript': ['tsserver', 'tslint'],
" \   'vue': ['eslint']
" \}
"   'rust': ['rls', 'cargo']


"if !exists("g:ycm_semantic_triggers")
"  let g:ycm_semantic_triggers = {}
"endif
"  let g:ycm_semantic_triggers['typescript'] = ['.']
"
" Ale
highlight ALEErrorSign ctermfg=9
let g:ale_sign_error = '✖'
let g:ale_sign_warning = '⚠'
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\}

let g:ale_lint_on_text_changed = 'never'

noremap <Leader>lf :ALEFix<CR>

"""""""""""""
" key mapping
"""""""""""""
nmap <leader>v  :so $myvimrc<cr>
nmap <leader>ve :e! $myvimrc<cr>

" easy-align key mappings
"xmap ga <Plug>(EasyAlign)
"nmap ga <Plug>(EasyAlign)
"vmap ga <Plug>(EasyAlign)

nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>N :NERDTreeClose<CR>

nnoremap <left>    :tabprev<CR>
nnoremap <right>   :tabnext<CR>
nnoremap <up>      :bp<CR>
nnoremap <down>    :bn<CR>

" save files
inoremap <C-c> "*y
vnoremap <C-c> "*y
nnoremap <C-v> "*p
nnoremap <C-s> :w<CR>


" vim regularly used
" :cd %:p:h   cd to current file
" :help     switch to help
" :ctrl-]   jump to tag in help
" zz,zt,tb  
