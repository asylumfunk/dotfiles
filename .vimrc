runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()


""""""""""""""""""""""""""""""""""""""""
" Shortcuts                            "
""""""""""""""""""""""""""""""""""""""""
let mapleader = ","

" buffers
nmap <leader>w :w!<cr>

" windows and tabs, movement
nmap <leader>j <C-W>j
nmap <leader>k <C-W>k
nmap <leader>h <C-W>h
nmap <leader>l <C-W>l
nmap <leader>m :tabprevious<cr>
nmap <leader>n :tabnext<cr>
nmap <leader>J <C-W>J
nmap <leader>K <C-W>K
nmap <leader>H <C-W>H
nmap <leader>L <C-W>L
nmap <leader>q :q<cr>
nmap <leader>r <C-W>r
nmap <leader>R <C-W>R
nmap <leader>T <C-W>T
nmap <leader>x <C-W>x
nmap <leader>- <C-W>-
nmap <leader>+ <C-W>+
nmap <leader>= <C-W>=
nmap <leader>< <C-W><
nmap <leader>> <C-W>>

" windows and tabs, creation
" intentional trailing spaces
nmap <leader>s :split 
nmap <leader>t :tabnew 
nmap <leader>v :vsplit 

