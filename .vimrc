""""""""""""""""""""""""""""""""""""""""
" Runtime Environment                  "
""""""""""""""""""""""""""""""""""""""""
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

""""""""""""""""""""""""""""""""""""""""
" Shortcuts                            "
""""""""""""""""""""""""""""""""""""""""
let mapleader = ","
" buffers
nmap <leader>w :w!<cr>
nmap <leader>q :q<cr>
" change window
nmap <leader>j <C-W>j
nmap <leader>k <C-W>k
nmap <leader>h <C-W>h
nmap <leader>l <C-W>l
" change tab
nmap <leader>m :tabprevious<cr>
nmap <leader>n :tabnext<cr>
" move window
nmap <leader>J <C-W>J
nmap <leader>K <C-W>K
nmap <leader>H <C-W>H
nmap <leader>L <C-W>L
nmap <leader>T <C-W>T
" rotate windows
nmap <leader>r <C-W>r
nmap <leader>R <C-W>R
" exchange window
nmap <leader>x <C-W>x
" resize window
nmap <leader>- <C-W>-
nmap <leader>+ <C-W>+
nmap <leader>= <C-W>=
nmap <leader>< <C-W><
nmap <leader>> <C-W>>
" create window/tab
" intentional trailing spaces
nmap <leader>s :split 
nmap <leader>t :tabnew 
nmap <leader>v :vsplit 
" Highlight search on/off behavior
map <silent> <leader><cr> :nohlsearch<cr>

