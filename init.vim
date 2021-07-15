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

" list of CoC extensions needed
let g:coc_global_extensions = [
\ 'coc-marketplace',
\ 'coc-go',
\ 'coc-powershell',
\ 'coc-tslint-plugin',
\ 'coc-tsserver',
\ 'coc-css',
\ 'coc-html',
\ 'coc-json',
\ 'coc-prettier',
\ 'coc-vetur'
\ ]

" --- GENERAL ---
syntax on
filetype plugin indent on
set encoding=utf-8
set termguicolors
set guicursor=
set background=dark
set regexpengine=1
set noshowcmd
set cmdheight=2

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

" integrate vim clipboard with system clipboard
set clipboard+=unnamedplus

" display title of current file in terminal title bar
set title

set hidden
set noerrorbells
set nowrap
set noswapfile
set nobackup
set nowritebackup
set scrolloff=8
set signcolumn=auto
set splitbelow splitright
set updatetime=50
set pyx=3

set colorcolumn=110
highlight ColorColumn ctermbg=darkgray

" Always show status line
set laststatus=2

" Format status line to show current file
set statusline=\ %f

" reload file if changed from outside
au FocusGained,BufEnter * :checktime

" stop results highlighting after cursor moves
let g:incsearch#auto_nohlsearch = 1

" colorscheme togglebit
colorscheme molokai

" Required for FZF
set rtp+=/usr/local/bin/fzf

nnoremap <C-f> :GFiles<CR>
" nnoremap <C-p> :FZF<CR>

" --- UltiSnips ---
let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsSnippetDirectories=["UltiSnips"]
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" --- VIM-GO
" disable all linters as that is taken care of by coc.nvim
let g:go_diagnostics_enabled = 0
let g:go_metalinter_enabled = []

" don't jump to errors after metalinter is invoked
let g:go_jump_to_error = 0

" run go imports on file save
let g:go_fmt_command = "goimports"
"
" automatically highlight variable your cursor is on
let g:go_auto_sameids = 0

" syntax highlighting
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1

autocmd BufEnter *.go nmap <leader>i  <Plug>(go-info)
autocmd BufEnter *.go nmap <leader>ii  <Plug>(go-implements)
autocmd BufEnter *.go nmap <leader>ci  <Plug>(go-describe)
autocmd BufEnter *.go nmap <leader>cc  <Plug>(go-callers)
nmap <leader>cr <Plug>(coc-references)
nmap <C-d> <Plug>(coc-definition)

" Remap GoBack to C-a
nmap <C-a> <C-o>

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

map <C-p> :NERDTreeToggle<CR>

" --- TABS ---
autocmd TabLeave * let g:lasttab = tabpagenr()
nnoremap <silent> <C-l> :exe "tabn ".g:lasttab<CR>
vnoremap <silent> <C-l> :exe "tabn ".g:lasttab<CR>

nnoremap <C-Right> :tabn<CR>
nnoremap <C-Left> :tabp<CR>

" --- KEY BINDINGS ---
let mapleader=" "
"
" map Ctrl+u to redo
nnoremap <C-u> :redo<CR>

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

nmap <leader>gs :tabe<CR>:Gstatus<CR>
nmap <leader>gc :Gcommit<CR>

" Tabbing in visual mode
vmap <Tab> >gv

" --- COC ----

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

autocmd ColorScheme * highlight CocErrorFloat guifg=#ffffff
autocmd ColorScheme * highlight CocInfoFloat guifg=#ffffff
autocmd ColorScheme * highlight CocWarningFloat guifg=#ffffff
autocmd ColorScheme * highlight SignColumn guibg=#adadad

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
nnoremap <leader>d :CocDiagnostics<CR>

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
