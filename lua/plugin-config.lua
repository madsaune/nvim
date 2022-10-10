-- vim.g.UltiSnipsExpandTrigger = '<C-e>'
-- vim.g.UltiSnipsJumpForwardTrigger = '<C-b>'
-- vim.g.UltiSnipsJumpBackwardTrigger = '<C-z>'
vim.g.UltiSnipsExpandTrigger = "<F12>"
vim.g.UltiSnipsJumpForwardTrigger = "<F12>"
vim.g.UltiSnipsJumpBackwardTrigger = "<F12>"
vim.g.UltiSnipsSnippetDirectories = {'UltiSnips'}

vim.opt.rtp:append('/usr/local/bin/fzf')

vim.g.vim_markdown_folding_disabled = 1

vim.g.terraform_fmt_on_save = 1

vim.g.coc_suggest_disable = 1

vim.g.python3_host_prog = '/usr/local/bin/python3'

-- Setup nvim-cmp.
local cmp = require'cmp'
local cmp_ultisnips_mappings = require("cmp_nvim_ultisnips.mappings")

cmp.setup({
snippet = {
  expand = function(args)
    vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
  end,
},
window = {
  completion = cmp.config.window.bordered(),
  documentation = cmp.config.window.bordered(),
},
mapping = cmp.mapping.preset.insert({
  ['<C-b>'] = cmp.mapping.scroll_docs(-4),
  ['<C-f>'] = cmp.mapping.scroll_docs(4),
  ['<C-Space>'] = cmp.mapping.complete(),
  ['<C-e>'] = cmp.mapping.abort(),
  ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
  ["<Tab>"] = cmp.mapping(
    function(fallback)
      cmp_ultisnips_mappings.expand_or_jump_forwards(fallback)
    end,
    { "i", "s", --[[ "c" (to enable the mapping in command mode) ]] }
  ),
  ["<S-Tab>"] = cmp.mapping(
    function(fallback)
      cmp_ultisnips_mappings.jump_backwards(fallback)
    end,
    { "i", "s", --[[ "c" (to enable the mapping in command mode) ]] }
  ),
}),
sources = cmp.config.sources({
  { name = 'nvim_lsp' },
  { name = 'ultisnips' }, -- For ultisnips users.
}, {
  { name = 'buffer' },
})
})

-- Set configuration for specific filetype.
cmp.setup.filetype('gitcommit', {
sources = cmp.config.sources({
  { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
}, {
  { name = 'buffer' },
})
})

-- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline('/', {
mapping = cmp.mapping.preset.cmdline(),
sources = {
  { name = 'buffer' }
}
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
mapping = cmp.mapping.preset.cmdline(),
sources = cmp.config.sources({
  { name = 'path' }
}, {
  { name = 'cmdline' }
})
})
