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
set updatetime=100
" plugins
call plug#begin('~/.config/plugged')
Plug 'ojroques/vim-oscyank'
Plug 'junegunn/fzf', { 'do': { -> fzf#install()} }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()
" plugins keybinds
nnoremap <C-b> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
au TextYankPost * if v:event.operator is 'y' && v:event.regname is '' | OSCYankReg " | endif
" custom look
let g:lightline = { 'colorscheme' : 'wombat' }
colorscheme gruvbox
set bg=dark

lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = {},
  sync_install = false,
  ignore_install = {},
  highlight = { enable = true },
  autopairs = { enable = true },
  context_commentstring = { 
    enable = true,
    enable_autocmd = false,
  },
  indent = { enable = true },
  autotag = { enable = true },
}
EOF
