""""""""""""""""""""""""""""""""""""""""
" Runtime Environment                  "
""""""""""""""""""""""""""""""""""""""""
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

""""""""""""""""""""""""""""""""""""""""
" Appearance                           "
""""""""""""""""""""""""""""""""""""""""
colorscheme koehler
set background=dark "'dark' or 'light', used for highlight colors
set number "print the line number in front of each line
set ruler "show cursor line and column in the status line
set scrolloff=8 "minimum nr. of lines above and below cursor
syntax enable

""""""""""""""""""""""""""""""""""""""""
" Configuration                        "
""""""""""""""""""""""""""""""""""""""""
set exrc "read .vimrc and .exrc in the current directory
set secure "secure mode for reading .vimrc in current dir

""""""""""""""""""""""""""""""""""""""""
" Formatting                           "
""""""""""""""""""""""""""""""""""""""""
set encoding=utf-8 "encoding used internally
set endofline "write <EOL> for last line in file
set wrap "long lines wrap and continue on the next line

""""""""""""""""""""""""""""""""""""""""
" Indenting                            "
""""""""""""""""""""""""""""""""""""""""
set autoindent "take indent for new line from previous line
set copyindent "make 'autoindent' use existing indent structure
set noexpandtab "(don't) use spaces when <Tab> is inserted
set smartindent "smart autoindenting for C programs
set shiftwidth=4 "number of spaces to use for (auto)indent step
set softtabstop=0 "number of spaces that <Tab> uses while editing
set tabstop=4 "number of spaces that <Tab> in file uses

""""""""""""""""""""""""""""""""""""""""
" Search                               "
""""""""""""""""""""""""""""""""""""""""
set incsearch "highlight match while typing search pattern
set hlsearch "highlight matches with last search pattern

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

