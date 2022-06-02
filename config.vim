" You might have to force true color when using regular vim inside tmux as the
" colorscheme can appear to be grayscale with "termguicolors" option enabled.
if !has('gui_running') && &term =~ '^\%(screen\|tmux\)'
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

syntax on
filetype plugin indent on

set encoding=utf-8
set termguicolors
set background=dark
set regexpengine=1

colorscheme catppuccin

" dont show commands in lower right corner
set noshowcmd

" more space for displaying messages
set cmdheight=2

" indent with 4 spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent

" use 2 spaces for javascript
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2

" hightlight active line
set cursorline

" hide mouse
set mouse=

" searching
set incsearch
set ignorecase
set smartcase
set nohlsearch

" integrate vim clipboard with system clipboard
set clipboard+=unnamedplus

" display title of current file in terminal title bar
set title

" allow hidden buffers
set hidden

" disable beeping
set noerrorbells

" dont wrap long lines
set nowrap

" dont use swapfiles
set noswapfile

" disable backups
set nobackup
set nowritebackup

" start scrolling when 8 lines left
set scrolloff=8

" always show the sign column
set signcolumn=yes

" new splits are added to bottom or right
set splitbelow splitright

" avoid delays when typing
set updatetime=50

set pyx=3

" display colorcolumn at 110 characters
set colorcolumn=115
highlight ColorColumn ctermbg=darkgray

" Make comments use italic
highlight Comment cterm=italic gui=italic

" Make background transparent
highlight Normal guibg=none

" Always show status line
set laststatus=2

" Format status line to show current file
set statusline=\ %f

" reload file if changed from outside
au FocusGained,BufEnter * :checktime

" enable folding
set foldmethod=indent
set foldenable
set foldlevelstart=10
set foldnestmax=10

" avoid human error
:command! W w
