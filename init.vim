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
Plug 'easymotion/vim-easymotion'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

colorscheme onedark

let mapleader = " "
nnoremap <leader>pv :Vex<CR>
nnoremap <leader><CR> :so ~/.vimrc<CR>
nnoremap <leader>pf :Files<CR>
nnoremap s <Plug>(easymotion-bd-w)
nnoremap <C-p> :GFiles<CR>
nnoremap <C-j> :cnext<CR>
nnoremap <C-k> :cprev<CR>
nnoremap <leader><leader>t :tabe term://.//zsh<CR>
tnoremap <esc> <C-\><C-N>

lua << EOF
require'nvim-treesitter.configs'.setup {
    ensure_installed = { "javascript", "html", "css" }, 
    sync_install = false,
    auto_install = true,
    ignore_install = {},
    highlight = {
        enable = true,
        disable = {},
        additional_vim_regex_highlighting = true,
    },
}
EOF

