set encoding=UTF-8
set number
set cursorline
set mouse=a
set autoindent " indent when moving to next line while coding
set expandtab	" expand tabs into spaces
set tabstop=2
set softtabstop=2   " set tabs to have 2 spaces
set shiftwidth=2    " when using the >> or << commands
set showmatch	" show a matching pair of brackets

map ; :
vmap < <gv
vmap > >gv

nmap ;\ :vsplit<CR> 
nmap ;- :split<CR>
nmap ;t :tabnew<CR>

let @/ = ""		" clear search pattern
set noeb vb t_vb=  " disable beep

hi Comment ctermfg=green
hi LineNr term=bold ctermfg=DarkGrey
hi StatusLine ctermbg=none cterm=bold

