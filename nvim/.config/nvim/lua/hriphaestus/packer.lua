vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Package Manager
    use('wbthomason/packer.nvim')
    -- Treesitter
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('nvim-treesitter/playground')
    -- LSP
    use('neovim/nvim-lspconfig')
    use('j-hui/fidget.nvim')
    -- Autocompletion
    use('hrsh7th/nvim-cmp')
    use('hrsh7th/cmp-path')
    use('hrsh7th/cmp-buffer')
    use('hrsh7th/cmp-nvim-lsp')
    -- Snippet Expansion
    use('L3MON4D3/LuaSnip')
    use('saadparwaiz1/cmp_luasnip')
    -- Telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    -- Harpoon
    use('ThePrimeagen/harpoon')
    -- Undo Tree
    use('mbbill/undotree')
    -- Utils
    use('numToStr/Comment.nvim')
    -- Themes
    use('nvim-lualine/lualine.nvim')
    use('ayu-theme/ayu-vim')
    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    })
end)
