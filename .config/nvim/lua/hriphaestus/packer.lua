vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
    -- Package Manager
    use 'wbthomason/packer.nvim'
    -- LSP
    use 'neovim/nvim-lspconfig'
    -- Autocompletion
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-nvim-lsp'
    -- Snippet Expansion
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    -- Telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    -- Themes
    use 'ayu-theme/ayu-vim'
    use 'folke/tokyonight.nvim'
end)
