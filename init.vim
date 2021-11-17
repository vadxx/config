set encoding=UTF-8
set number
set cursorline
set mouse=a

set tabstop=2
set softtabstop=2   " Set tabs to have 2 spaces
set shiftwidth=2    " When using the >> or << commands


map ; :
vmap < <gv
vmap > >gv

nmap ;\ :vsplit<CR> 
nmap ;- :split
nmap ;t :tabnew


set noeb vb t_vb=  " Disable beep
