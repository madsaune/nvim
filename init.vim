lua require('plugins')
lua require('plugin-config')
lua require('mappings')
lua require('config')
lua require('lsp')

" You might have to force true color when using regular vim inside tmux as the
" colorscheme can appear to be grayscale with "termguicolors" option enabled.
if !has('gui_running') && &term =~ '^\%(screen\|tmux\)'
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

" use 2 spaces for javascript
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2

" reload file if changed from outside
au FocusGained,BufEnter * :checktime

" avoid human error
:command! W w

" TODO: split out into commands.vim
augroup dotpwsh
    autocmd!
    autocmd Filetype markdown setlocal tabstop=2
    autocmd Filetype markdown setlocal shiftwidth=2
    autocmd Filetype markdown setlocal softtabstop=2
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

set completeopt=menuone,noselect
let g:compe = {}
let g:compe.enabled = v:true
let g:compe.autocomplete = v:true
let g:compe.debug = v:false
let g:compe.min_length = 1
let g:compe.preselect = 'enable'
let g:compe.throttle_time = 80
let g:compe.source_timeout = 200
let g:compe.incomplete_delay = 400
let g:compe.max_abbr_width = 100
let g:compe.max_kind_width = 100
let g:compe.max_menu_width = 100
let g:compe.documentation = v:true
let g:compe.source = {}
let g:compe.source.path = v:true
let g:compe.source.buffer = v:true
let g:compe.source.calc = v:true
let g:compe.source.nvim_lsp = v:true
let g:compe.source.nvim_lua = v:true
let g:compe.source.vsnip = v:true
let g:compe.source.ultisnips = v:true
