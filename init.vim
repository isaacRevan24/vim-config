syntax on
set exrc
set tabstop=4 softtabstop=4
set shiftwidth=4
set nu
set expandtab
set smartindent
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set nowrap
set noswapfile
set nobackup
set undofile
set incsearch
set scrolloff=8
set colorcolumn=80
set signcolumn=yes
set backspace=indent,eol,start
set completeopt-=preview
set t_BE=0
behave mswin

filetype plugin indent on
set autowrite

:colorscheme evening
highlight Normal guibg=none

let mapleader = " "

inoremap ( ()<Left>
inoremap { {}<Left>
inoremap {<CR> {<CR>}<Left>
inoremap [ []<Left>
inoremap < <><Left>
inoremap' ''<Left>
inoremap " ""<Left>

" Telescope config
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fc <cmd>Telescope command_history<cr>
nnoremap <leader>fgst <cmd>Telescope git_status<cr>

autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>t  <Plug>(go-test)
" Nerd tree config
nnoremap <C-h> :NERDTreeToggle<CR>

call plug#begin('~/.vim/plugged')
" Telescope requirements
Plug 'nvim-lua/popup.nvim' 
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" File tree
Plug 'preservim/nerdtree'

" Programming language plugs
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'rust-lang/rust.vim'

"Color scheme
Plug 'gruvbox-community/gruvbox'

"Git plugin
Plug 'tpope/vim-fugitive'
call plug#end()

colorscheme gruvbox

" Golang config
au filetype go inoremap <buffer> . .<C-x><C-o>
autocmd Filetype go setlocal tabstop=4 shiftwidth=4 softtabstop=4
let g:go_mt_command = "goimports"
let g:go_auto_type_info = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1 
let g:go_highlight_function_calls = 1 
let g:go_highlight_extra_types = 1 
let g:go_highlight_operators = 1

" Python config
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
