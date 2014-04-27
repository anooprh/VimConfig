"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Anoop Hallur's vimrc file, updated 28 April, 2014
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Change Leader Key
let mapleader = ","

" Disabling swap files, backup files,  creation in vim
:set nobackup
:set nowb
:set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tab settings 
:set tabstop=4
:set shiftwidth=4
:set softtabstop=4
:set expandtab
:set smarttab

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set to auto read when a file is changed from the outside
:set autoread

" gets rid of all the crap that Vim does to be vi compatible
:set nocompatible
" prevents some security exploits having to do with modelines in files
:set modelines=0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" No idea what I am doing here. Blame
" http://stevelosh.com/blog/2010/09/coming-home-to-vim/ if something goes
" wrong
" Each of these lines are basically to make Vim behave in a sane manner
:set encoding=utf-8
:set scrolloff=3
:set autoindent
:set showmode
:set showcmd
:set hidden
:set wildmenu
:set wildmode=list:longest
:set visualbell
:set cursorline
:set ttyfast
:set ruler
:set backspace=indent,eol,start
:set laststatus=2
:set relativenumber
:set undofile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Searching / Moving Related
nnoremap / /\v
vnoremap / /\v
:set ignorecase
:set smartcase
:set gdefault
:set incsearch
:set showmatch
:set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  makes Vim handle long lines correctly
:set wrap "Automatically wrap text
:set textwidth=79
:set formatoptions=qrn1
:set colorcolumn=80

:set ai "Auto indent
:set si "Smart indent

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
nmap <A-j> mz:m+<cr>`z
nmap <A-k> mz:m-2<cr>`z
vmap <A-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <A-k> :m'<-2<cr>`>my`<mzgv`yo`z

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" open a new vertical split and switch over to it
nnoremap <leader>w <C-w>v<C-w>l
" commands needed to move around your splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"This will disable the arrow keys while you’re in normal mode 
"to help you learn to use hjkl.
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  configure Vim to watch for changes in your .vimrc and automatically reload
"  the config
augroup myvimrchooks
    au!
    autocmd bufwritepost .vimrc source ~/.vimrc
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pathogen Plugin
"
" https://github.com/tpope/vim-pathogen

execute pathogen#infect()
syntax on
filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Auto Save Plugin

" enable AutoSave on Vim startup
let g:auto_save = 1  

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Nerd Tree Settings

" How to jump back to NERDTree from file in tab?  --> ctrl-ww
" open a NERDTree automatically when vim starts up
autocmd vimenter * if !argc() | NERDTree | endif
" map a Ctrl p to open NERDTree
map <C-p> :NERDTreeToggle<CR>
nmap <C-o> :NERDTreeFind<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Nerd Commenter toggle comment, ctrl M to toggle comment
" nmap <C-m>  <leader>c<space> 
" Actually Enter Key in normal does that job already, so disabling it
