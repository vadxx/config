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
set noshowmode
set noswapfile
set noeb vb t_vb=  " disable beep
set updatetime=100
" plugins
call plug#begin('~/.config/plugged')
Plug 'ojroques/vim-oscyank'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" completion
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-path'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'L3MON4D3/LuaSnip'
call plug#end()
" plugins keybinds
au TextYankPost * if v:event.operator is 'y' && v:event.regname is '' | OSCYankReg " | endif
" fzf
nmap ;ff <CMD>Telescope find_files<CR>
nmap ;fg <CMD>Telescope live_grep<CR>
nmap ;gs <CMD>Telescope git_status<CR>
nmap ;gc <CMD>Telescope git_commits<CR>
" tree
nmap <silent> <expr> <C-e> g:NERDTree.IsOpen() ? ":NERDTreeClose<CR>" : bufexists(expand('%')) ? ":NERDTreeFind<CR>" : ":NERDTree<CR>"
" custom look
let g:lightline = { 'colorscheme' : 'wombat' }
colorscheme gruvbox
set bg=dark
" LSP
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

require('nvim-lsp-installer').on_server_ready(function(server)
  local opts = {}
  server:setup(opts)
end)

local snip = require'luasnip'
local cmp = require'cmp'
cmp.setup {
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  mapping = {
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-n>'] = cmp.mapping.select_next_item(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
    ['<Tab>'] = function(fallback)
      if cmp.visible() then cmp.select_next_item()
      elseif snip.expandable() then snip.expand()
      elseif snip.expand_or_jumpable() then snip.expand_or_jump()
      else fallback()
      end
    end,
    ['<S-Tab>'] = function(fallback)
      if cmp.visible() then cmp.select_prev_item()
      elseif snip.jumpable(-1) then snip.jump(-1)
      else fallback()
      end
    end,
  },
  documentation = {
    border = { '╭', '─', '╮', '│', ╯', '─', '╰', '│' },
  },
  completion = {
    keyword_length = 2,
  },
  sources = {
    { name = 'nvim_lsp' }, { name = 'luasnip' }, { name = 'path' },
  },
}

EOF
