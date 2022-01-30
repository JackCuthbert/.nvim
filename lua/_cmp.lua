local present, cmp = pcall(require, 'cmp')
if present then
    cmp.setup {
        mapping = {
            ['<C-p>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), {'i', 'c'}),
            ['<C-n>'] = cmp.mapping(cmp.mapping.scroll_docs(4), {'i', 'c'}),
            ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), {'i', 'c'}),
            ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
            ['<C-e>'] = cmp.mapping({i = cmp.mapping.abort(), c = cmp.mapping.close()}),
            ['<CR>'] = cmp.mapping.confirm({
                select = true -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
            }),
            ['<Tab>'] = cmp.mapping.select_next_item({behavior = cmp.SelectBehavior.Insert}),
            ['<S-Tab>'] = cmp.mapping.select_prev_item({behavior = cmp.SelectBehavior.Insert})
        },
        formatting = {
            format = require('lspkind').cmp_format {
                with_text = true,
                menu = {buffer = '[buf]', nvim_lsp = '[LSP]', path = '[path]'}
            }
        },
        sources = cmp.config.sources({{name = 'nvim_lsp'}}, {{name = 'buffer'}}, {{name = 'path'}})
    }

    cmp.setup.cmdline('/', {sources = {{name = 'buffer'}}})

    cmp.setup.cmdline(':', {sources = cmp.config.sources({{name = 'path'}}, {{name = 'cmdline'}})})
end
