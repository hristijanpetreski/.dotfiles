local cmp = require('cmp')
local capabilities = require('cmp_nvim_lsp').default_capabilities()

local on_attach = function(_, bufnr)
    -- Mappings
    local bufopts = { noremap = true, silent = true, buffer = bufnr }

    -- LSP
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', 'gT', vim.lsp.buf.type_definition, bufopts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, bufopts)
    vim.keymap.set('n', '<C-t>', vim.lsp.buf.code_action, bufopts)
    vim.keymap.set('n', '<C-h>', vim.lsp.buf.signature_help, bufopts)
    -- Diagnostics
    vim.keymap.set('n', '<leader>dn', vim.diagnostic.goto_next, bufopts)
    vim.keymap.set('n', '<leader>dp', vim.diagnostic.goto_prev, bufopts)
end

-- Go
require('lspconfig')['gopls'].setup{
   on_attach = on_attach,
   capabilities = capabilities,
}

-- TypeScript
require('lspconfig')['tsserver'].setup{
    on_attach = on_attach,
    capabilities = capabilities
}

-- Rust
require('lspconfig')['rust_analyzer'].setup{
    on_attach = on_attach,
    capabilities = capabilities,
    rust = {
        unstable_features = false,
        build_on_save = false,
        all_features = true,
    },
}

-- Python
require('lspconfig')['pyright'].setup{
    on_attach = on_attach,
    capabilities = capabilities,
}

-- Lua
local runtime_path = vim.split(package.path, ';')

require('lspconfig')['sumneko_lua'].setup{
    on_attach = on_attach,
    capabilities = capabilities,
    settings = {
        Lua = {
            runtime = {
                -- Tell the language server which version of Lua you're using (most likely LuaJIT)
                version = 'LuaJIT',
                -- Setup your lua path
                path = runtime_path,
            },
            diagnostics = {
                globals = { 'vim' },
            },
            workspace = { library = vim.api.nvim_get_runtime_file('', true) },
            -- Do not send telemetry data containing a randomized but unique identifier
            telemetry = { enable = false },
        },
    },
}

-- Volar (Vue)
require('lspconfig')['volar'].setup{
    on_attach = on_attach,
    capabilities = capabilities,
}

-- CMP Setup
vim.opt.completeopt = {'menu', 'menuone', 'noselect'}

cmp.setup({
    snippet = {
      expand = function(args)
        require('luasnip').lsp_expand(args.body)
      end,
    },
    window = {
      -- completion = cmp.config.window.bordered(),
      -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Esc>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'luasnip' },
    }, {
      { name = 'buffer' },
    })
  })

  -- Set configuration for specific filetype.
  cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      { name = 'cmp_git' }, 
    }, {
      { name = 'buffer' },
    })
  })

