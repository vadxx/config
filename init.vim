" core
set encoding=UTF-8
set number
set cursorline
set mouse=a
set showmatch	" show a matching pair of brackets
set clipboard=unnamedplus
set autoread
set complete-=i
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
" extra
set noswapfile
set noeb vb t_vb=  " disable beep
" plugins
call plug#begin('~/.config/init.vim')
Plug 'morhetz/gruvbox'
call plug#end()

colorscheme gruvbox
