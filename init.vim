call plug#begin('~/.local/share/nvim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'itchyny/lightline.vim'

Plug 'rust-lang/rust.vim'
Plug 'racer-rust/vim-racer'
Plug 'sebastianmarkow/deoplete-rust'

Plug 'kien/ctrlp.vim'

Plug 'neomake/neomake'

Plug 'fatih/vim-go'
Plug 'deoplete-plugins/deoplete-go', { 'do': 'make' }

let g:go_def_mode = "gopls"

call plug#end()

"set relativenumber
set colorcolumn=80
" Make the ColorColumn gray
highlight ColorColumn ctermbg=8

let g:deoplete#enable_at_startup = 1
let g:racer_experimental_completer = 1

" Deoplete magic for gopls
call deoplete#custom#option('omni_patterns', {
\ 'go': '[^. *\t]\.\w*',
\})

let $NVIM_TUI_ENABLE_CURSOR_SHAPE = 0

" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" NeoMake
call neomake#configure#automake('w')

" Deoplete Rust
let g:deoplete#sources#rust#racer_binary='/home/tim/.cargo/bin/racer'
let g:deoplete#sources#rust#rust_source_path='/home/tim/osrc/rust/src'

set wildignore+=*/target/*

filetype on

augroup filetypes
	autocmd!

	autocmd FileType scheme inoremap ( ()<left>
augroup end

" Rust - ignore target dir
set wildignore+=*/target/*

" Node/web - ignore node_modules
set wildignore+=*/node_modules/*
