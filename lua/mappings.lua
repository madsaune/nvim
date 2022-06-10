-- use space as <leader> key
vim.g.mapleader = ' '

vim.keymap.set('n', '<C-f>', '<cmd>Telescope find_files<cr>', { noremap = true })
vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>', { noremap = true })
vim.keymap.set('n', '<leader>ffh', '<cmd>Telescope find_files hidden=true<cr>', { noremap = true })
vim.keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', { noremap = true })
vim.keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<cr>', { noremap = true })
vim.keymap.set('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', { noremap = true })

vim.keymap.set('n', '<leader>b', ':Buffers<CR>', { noremap = true })

vim.keymap.set('n', '<C-a>', '<C-o>')

vim.keymap.set('', '<C-p>', ':NERDTreeToggle<CR>')

vim.keymap.set('n', '<C-Right>', ':tabn<CR>', { noremap = true })
vim.keymap.set('n', '<C-Left>', ':tabp<CR>', { noremap = true })

vim.keymap.set('n', '<CR>', ':nohlsearch<CR><CR>', { noremap = true })
vim.keymap.set('n', '<S-Up>', ':m-2<CR>', { noremap = true })
vim.keymap.set('n', '<S-Down>', ':m+1<CR>', { noremap = true })

vim.keymap.set('i', '<S-Up>', '<Esc>:m-2<CR>', { noremap = true })
vim.keymap.set('i', '<S-Down>', '<Esc>:m+1<CR>', { noremap = true })

vim.keymap.set('v', '<S-Up>', ":m '<-2<CR>gv=gv", { noremap = true })
vim.keymap.set('v', '<S-Down>', ":m '>+1<CR>gv=gv", { noremap = true })

vim.keymap.set('n', '<leader>h', ':wincmd h<CR>', { noremap = true })
vim.keymap.set('n', '<leader>j', ':wincmd j<CR>', { noremap = true })
vim.keymap.set('n', '<leader>k', ':wincmd k<CR>', { noremap = true })
vim.keymap.set('n', '<leader>l', ':wincmd l<CR>', { noremap = true })

vim.keymap.set('n', '<C-h>', ':vertical resize -4<CR>')
vim.keymap.set('n', '<C-l>', ':vertical resize +4<CR>')
vim.keymap.set('n', '<C-k>', ':resize +4<CR>')
vim.keymap.set('n', '<C-j>', ':resize -4<CR>')

vim.keymap.set('n', '<leader>"', 'ysiw"')
vim.keymap.set('n', '<leader>]', 'ysiw]')
vim.keymap.set('n', '<leader>}', 'ysiw}')

vim.keymap.set('n', '<leader>gs', ':tabe<CR>:Git<CR>')
vim.keymap.set('n', '<leader>gc', ':Gcommit<CR>')

vim.keymap.set('v', '<Tab>', '>gv')



