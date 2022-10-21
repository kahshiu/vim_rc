set expandtab
set shiftwidth=2    " spaces for next line indentation (for balancing braces)
set shiftround
set tabstop=2       " spaces worth of each tab
set softtabstop=2   

set textwidth=0 
set wrapmargin=0 
set nowrap
set formatoptions-=t
set virtualedit=all

set laststatus=2    " always show status line
set number         " line number
set ruler

set hlsearch
set noincsearch
set ignorecase
set smartcase

" config relate to fzf
set rtp+=/usr/local/opt/fzf

call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
" Plug 'ctrlpvim/ctrlp.vim'
" Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Plug 'agude/vim-eldar'
" Plug 'sickill/vim-monokai'
Plug 'tomasr/molokai'
call plug#end()

syntax on 
" colorscheme eldar
" colorscheme monokai
colorscheme molokai

let &t_EI = "\e[1 q"
let &t_SI = "\e[4 q"

nnoremap <leader>rc :e ~/.vimrc<CR>
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>N :NERDTreeClose<CR>

nnoremap <left> :tabprev<CR>
nnoremap <right> :tabnext<CR>
nnoremap <up> :bp<CR>
nnoremap <down> :bn<CR>

" config related to ctrl-p;
"
" let g:ctrlp_cmd = '<c-p>'
" let g:ctrlp_cmd = 'CtrlP'
" let g:ctrlp_user_command = {
" \ 'types': {
"   \ 1: ['.git', 'cd %s && git ls-files --cached --exclude-standard --others'],
"   \ 2: ['.hg', 'hg --cwd %s locate -I .'],
"   \ },
" \ 'fallback': 'find %s -type f'
" \ }
"
"

" This is the default extra key bindings
nnoremap <c-p> :Files<CR>

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" An action can be a reference to a function that processes selected lines
function! s:build_quickfix_list(lines)
  call setqflist(map(copy(a:lines), '{ "filename": v:val }'))
  copen
  cc
endfunction

let g:fzf_action = {
  \ 'ctrl-q': function('s:build_quickfix_list'),
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Default fzf layout
" - Popup window (center of the screen)
" let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6 } }

" - Popup window (center of the current window)
" let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6, 'relative': v:true } }

" - Popup window (anchored to the bottom of the current window)
" let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6, 'relative': v:true, 'yoffset': 1.0 } }

" - down / up / left / right
let g:fzf_layout = { 'down': '40%' }

" - Window using a Vim command
" let g:fzf_layout = { 'window': 'enew' }
" let g:fzf_layout = { 'window': '-tabnew' }
" let g:fzf_layout = { 'window': '10new' }

" Customize fzf colors to match your color scheme
" - fzf#wrap translates this to a set of `--color` options
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Enable per-command history
" - History files will be stored in the specified directory
" - When set, CTRL-N and CTRL-P will be bound to 'next-history' and
"   'previous-history' instead of 'down' and 'up'.
let g:fzf_history_dir = '~/.local/share/fzf-history'"

cd ~/Documents
