local status, cmp = pcall(require, "cmp")
if (not status) then return end
-- local ls = require "luasnip"
local lspkind = require 'lspkind'

require("luasnip.loaders.from_vscode").lazy_load()
require("luasnip.loaders.from_snipmate").lazy_load()

cmp.setup({
    snippet = {
        expand = function(args) require('luasnip').lsp_expand(args.body) end
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-p>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.close(),
        ['<CR>'] = cmp.mapping.confirm({select = true})
    }),
    sources = cmp.config.sources({
        {name = 'nvim_lsp', dup = 0}, {name = 'buffer', dup = 0},
        {name = 'nvim_lsp_signature_help', dup = 0},
        {name = 'luasnip', dup = 0}, {name = 'path', dup = 0}
    }),
    formatting = {
        format = lspkind.cmp_format({with_text = false, maxwidth = 50})
    }
})

-- ls.filetype_extend("all", { "_" })

vim.cmd [[
  set completeopt=menuone,noinsert,noselect
  highlight! default link CmpItemKind CmpItemMenuDefault
]]
