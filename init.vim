scriptencoding utf-8

"call plug#begin('~/.vim/plugged')
call plug#begin(stdpath('data') . '/plugged')
Plug 'gruvbox-community/gruvbox'
Plug 'hashivim/vim-terraform'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'airblade/vim-gitgutter'
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'} " this is for auto complete, prettier and tslinting
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'SirVer/ultisnips'
Plug 'rust-lang/rust.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()

let g:coc_global_extensions = ['coc-marketplace', 'coc-powershell', 'coc-tslint-plugin', 'coc-tsserver', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-vetur']  " list of CoC extensions needed

" --- GENERAL ---
syntax on
filetype plugin indent on
set encoding=utf-8
set termguicolors
set guicursor=
set background=dark
set regexpengine=1
set noshowcmd

set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent
set cursorline
set mouse=

set incsearch
set ignorecase
set smartcase
set hlsearch

set clipboard=unnamedplus

set number
set hidden
set noerrorbells
set nowrap
set noswapfile
set nobackup
set scrolloff=8
set signcolumn=yes
set splitbelow splitright
set colorcolumn=120
set updatetime=50
set pyx=3

colorscheme togglebit

" Required for FZF
set rtp+=/usr/local/bin/fzf

nnoremap <C-p> :GFiles<CR>
" nnoremap <C-p> :FZF<CR>

" --- UltiSnips ---
let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsSnippetDirectories=["UltiSnips"]
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" --- FILETYPES ---
augroup dotpwsh
    autocmd!
    autocmd Filetype css setlocal tabstop=2
    autocmd Filetype css setlocal softtabstop=2
    autocmd Filetype css setlocal shiftwidth=2
    autocmd Filetype html setlocal tabstop=2
    autocmd Filetype html setlocal softtabstop=2
    autocmd Filetype html setlocal shiftwidth=2
    autocmd Filetype javascript setlocal tabstop=2
    autocmd Filetype javascript setlocal softtabstop=2
    autocmd Filetype javascript setlocal shiftwidth=2
augroup END

" --- MARKDOWN ---
let g:vim_markdown_folding_disabled=1

" --- NERDTree ---
let NERDTreeShowHidden=1

map <C-n> :NERDTreeToggle<CR>

" --- TABS ---
autocmd TabLeave * let g:lasttab = tabpagenr()
nnoremap <silent> <C-l> :exe "tabn ".g:lasttab<CR>
vnoremap <silent> <C-l> :exe "tabn ".g:lasttab<CR>

nnoremap <leader>tp :tabp<CR>
nnoremap <leader>tn :tabn<CR>

" --- KEY BINDINGS ---
let mapleader=" "
nnoremap <CR> :nohlsearch<CR><CR>
nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+1<CR>
inoremap <S-Up> <Esc>:m-2<CR>
inoremap <S-Down> <Esc>:m+1<CR>
vnoremap <S-Up> :m '<-2<CR>gv=gv
vnoremap <S-Down> :m '>+1<CR>gv=gv

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

nmap <C-h> :vertical resize -4<CR>
nmap <C-l> :vertical resize +4<CR>
nmap <C-k> :resize +4<CR>
nmap <C-j> :resize -4<CR>

nmap <leader>" ysiw"
nmap <leader>] ysiw]
nmap <leader>} ysiw}

" Tabbing in visual mode
vmap <Tab> >gv

" --- COC ----
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Show warnings
nnoremap <leader>w :CocDiagnostics<CR>

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Prettier` command to format current buffer.
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
