require('nvim-treesitter.configs').setup {
    -- A list of parser names, or "all"
    ensure_installed = { 'c', 'cpp', 'lua', 'go', 'rust', 'javascript', 'typescript', 'help' },

    sync_install = false,

    auto_install = true,

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },

    indent = {
        enable = true,
    },

    -- macOS specific keymaps. The characters are generated using the option (alt)
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = '∑', -- option + w
            node_incremental = '∑', -- option + w
            scope_incremental = 'ß', -- option + s
            node_decremental = 'œ', -- option + q
        },
    },
}
