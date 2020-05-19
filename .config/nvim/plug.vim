" Plug init
call plug#begin('~/.local/share/nvim/plugged')

Plug 'dense-analysis/ale'
Plug 'sheerun/vim-polyglot'
Plug 'chriskempson/base16-vim'
Plug 'editorconfig/editorconfig-vim'

" Language Server Protocol
call plug#end()


let g:ale_completion_enabled = 1
let g:ale_fix_on_save = 1
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\}

let g:ale_sign_error = '•'
let g:ale_sign_warning = '•'
