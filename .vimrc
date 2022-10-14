set scrolloff=8
set tabstop=4 softtabstop=4
set shiftwidth=4
set number 
set expandtab
set smartindent
set termguicolors

call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'easymotion/vim-easymotion'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

syntax on
colorscheme onedark

let mapleader = " "
nnoremap <leader>pv :Vex<CR>
nnoremap <leader>pf :Files<CR>
nnoremap s <Plug>(easymotion-bd-w)
nnoremap <C-p> :GFiles<CR>
nnoremap <leader>t :tab terminal<CR>
