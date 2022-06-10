local set = vim.opt

vim.cmd [[
	syntax on
	filetype plugin indent on
	colorscheme catppuccin
]]

set.encoding = 'utf-8'
set.termguicolors = true
set.background= 'dark'
set.regexpengine = 1

-- dont show commands in lower right corner
set.showcmd = false

-- more space for displaying messages
set.cmdheight = 2

-- indent with 4 spaces
set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4
set.expandtab = true
set.smartindent = true
set.autoindent = true

-- hightlight active line
set.cursorline = true

-- hide mouse
set.mouse = nil

-- searching
set.incsearch = true
set.ignorecase = true
set.smartcase = true
set.hlsearch = false

-- integrate vim clipboard with system clipboard
set.clipboard:append('unnamedplus')

-- display title of current file in terminal title bar
set.title = true

-- allow hidden buffers
set.hidden = true

-- disable beeping
set.errorbells = false

-- dont wrap long lines
set.wrap = false

-- dont use swapfiles
set.swapfile = false

-- disable backups
set.backup = false
set.writebackup = false

-- start scrolling when 8 lines left
set.scrolloff = 8

-- always show the sign column
set.signcolumn = 'yes'

-- new splits are added to bottom or right
set.splitbelow = true
set.splitright = true

-- avoid delays when typing
set.updatetime = 50

set.pyx = 3

-- display colorcolumn at 110 characters
set.colorcolumn = '115'

-- Always show status line
set.laststatus = 2

-- Format status line to show current file
set.statusline = ' %f'

-- enable folding
set.foldmethod = 'indent'
set.foldenable = true
set.foldlevelstart = 10
set.foldnestmax = 10


-- Make background transparent
vim.cmd [[
    highlight Normal ctermbg=none
    highlight NonText ctermbg=none
    highlight Normal guibg=none
    highlight NonText guibg=none
]]

-- Make comments use italic
vim.cmd('highlight Comment cterm=italic gui=italic')

-- color column color
vim.cmd('highlight ColorColumn ctermbg=darkgray')
