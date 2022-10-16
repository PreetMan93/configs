" -------------------- Settings --------------------
" tab modifcations
set tabstop=4 " how many columns of whitespace a \t character is worth 
set shiftwidth=4 " how many columns of whitespace an indentation is worth 
set expandtab " insert {shiftwidth} amount of spaces when the tab key is pressed 

" lightline options
set laststatus=2 " always show status line 
set noshowmode " disable default status lines

" aesthetics
set number " set line numbers 
set termguicolors " use 24 bit colors
set cursorline " highlight current line that cursor is on


" -------------------- Plugins --------------------
call plug#begin()
" Plugins for Navigation
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'easymotion/vim-easymotion'

" Plugins for Aesthetics
Plug 'sheerun/vim-polyglot' " syntax highlighting
Plug 'joshdick/onedark.vim'
Plug 'itchyny/lightline.vim' " status bar

" Plugins for LSP and auto-completion 
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" Set status line and theme
colorscheme onedark
let g:lightline = { 'colorscheme': 'onedark' }


" -------------------- Key Mappings --------------------
let mapleader = " "

" Navigation 
nnoremap <leader>pf :Files<CR>
nnoremap <C-p> :GFiles<CR>
nnoremap <leader>pv :Vex<CR>
nnoremap s <Plug>(easymotion-bd-w)
nnoremap <leader>tn :tabnew 

" Terminal keybindings
nnoremap <leader>tt :tab terminal<CR>
nnoremap <leader>bt :below terminal ++rows=12<CR>
tnoremap <esc> <C-w><S-n>

" auto-indent with coc-pair brackets
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

