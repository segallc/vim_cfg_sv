le         : vimrc
" @Description	: VIM Run Command File
" ----------------------------------------------------------------------------

" ----------------------
" General
" ----------------------
set relativenumber
set number
set ignorecase
set expandtab
set shiftwidth=2
set tabstop=2
set softtabstop=2
set nowrap
set linebreak
set showbreak=...\
set nobackup
set writebackup
set noswapfile
set noundofile
set wildmode=list:longest
set wildignorecase
set splitbelow
set splitright
set cmdheight=2
set hidden
set lazyredraw
set noea
set noerrorbells
set smartcase
set cursorline
set hlsearch
set incsearch
if (has("termguicolors"))
  set termguicolors
  endif
  let mapleader=","

  " ----------------------
  " Mappings
  " ----------------------
  " Line moving up/down
  nnoremap <C-j> :m+<CR>
  nnoremap <C-k> :m-2<CR>
  inoremap <C-j> <Esc>:m+<CR>gi
  inoremap <C-k> <Esc>:m-2<CR>gi
  vnoremap <C-j> :m'>+<CR>gv
  vnoremap <C-k> :m-2<CR>gv
  " Buffer navigation
  nnoremap <C-h> :bprev<CR>
  nnoremap <C-l> :bnext<CR>
  " File navigation
  nmap <C-u> <C-u>zz
  nmap <C-d> <C-d>zz
  " FIXME - Stop highlighting on pressing <Esc> twice
  nnoremap <silent> <Esc><Esc> :nohlsearch<CR>

  " ----------------------
  " Functions
  " ----------------------
  function! TrimWhiteSpace()
    let l:save = winsaveview()
      keeppatterns %s/\s\+$//e
        call winrestview(l:save)
	endfunction

	command! TrimWhiteSpace call TrimWhiteSpace()

call plug#begin()
Plug 'preservim/NERDTree'
Plug 'preservim/nerdcommenter'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'vhda/verilog_systemverilog.vim'
Plug 'adelarsq/vim-matchit'
Plug 'dracula/vim', { 'name': 'dracula' }
call plug#end()

syntax on

nnoremap <F2> :NERDTreeToggle <CR>
colorscheme dracula
