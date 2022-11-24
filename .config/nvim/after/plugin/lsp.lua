local on_attach = function(client, bufnr)
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
}

-- TypeScript
require('lspconfig')['denols'].setup{
    on_attach = on_attach,
}
