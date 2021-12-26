" core
set encoding=UTF-8
set number
set cursorline
set mouse=a
set showmatch	" show a matching pair of brackets
set clipboard=unnamedplus
set autoread
set completeopt+=menuone,noinsert
" tabs
set autoindent " indent when moving to next line while coding
set expandtab	" expand tabs into spaces
set tabstop=2
set softtabstop=2   " set tabs to have 2 spaces
set shiftwidth=2    " when using the >> or << commands
" custom keybinds
map ; :
vmap < <gv
vmap > >gv
nmap ;h :vsplit<CR> 
nmap ;v :split<CR>
nmap ;t :tabnew<CR>
nmap ;fg :Rg<CR>
nmap ;ff :Files<CR>
" extra
set noswapfile
set noeb vb t_vb=  " disable beep
" plugins
call plug#begin('~/.config/plugged')
Plug 'ojroques/vim-oscyank'
Plug 'junegunn/fzf', { 'do': { -> fzf#install()} }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
call plug#end()

set updatetime=100
au TextYankPost * if v:event.operator is 'y' && v:event.regname is '' | OSCYankReg " | endif
colorscheme gruvbox
