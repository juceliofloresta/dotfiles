let g:python_host_prog = '~/.config/nvim/.python-envs/py2/bin/python'
let g:python3_host_prog = '~/.config/nvim/.python-envs/py3/bin/python'

set termguicolors
set guicursor=
syntax on

set hidden " change buffer without save
set number " show line numbers

set mouse=a

set path+=.,**

set lazyredraw " minus draw process

set nowrap
set laststatus=2

set smartcase

set hlsearch

set autoindent
set autoread

set nobackup
set noswapfile

set splitbelow
set splitright

if !&scrolloff
	set scrolloff=3
endif
if !&sidescrolloff
	set scrolloff=5
endif

set inccommand=split


" Wildmenu
set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png,*.ico
set wildignore+=*.pdf,*.psd
set wildignore+=**/node_modules/**
set wildignore+=**/bower_components/**
set wildignore+=**/__pycache__/**

" Clipboard
set clipboard=unnamed

set statusline=
set statusline+=\ •
set statusline+=\ %t
set statusline+=%=
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\ %{&fileformat}
set statusline+=\ %p%%
set statusline+=\ %l:%c

" For conceal markers.
if has('conceal')
  set conceallevel=0 concealcursor=nc
endif

set cursorline
set signcolumn=yes

source ~/.config/nvim/plug.vim
source ~/.config/nvim/map.vim

source ~/.config/nvim/highlight.vim

source ~/.config/nvim/experimental.vim
