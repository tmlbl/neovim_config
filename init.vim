call plug#begin('~/.local/share/nvim/plugged')

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'racer-rust/vim-racer'

Plug 'kien/ctrlp.vim'

Plug 'neomake/neomake'

call plug#end()

let g:deoplete#enable_at_startup = 1
let g:racer_experimental_completer = 1

let $NVIM_TUI_ENABLE_CURSOR_SHAPE = 0

" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" NeoMake
call neomake#configure#automake('w')

set wildignore+=*/target/*
