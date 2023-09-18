local plugins = {
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.2",
        dependencies = {"nvim-lua/plenary.nvim"}
    },
    "mbbill/undotree",
    "tpope/vim-sleuth",
    "folke/neodev.nvim",
    "j-hui/fidget.nvim",
    "tpope/vim-rhubarb",
    "tpope/vim-fugitive",
    "folke/which-key.nvim",
    "numToStr/Comment.nvim",
    "neovim/nvim-lspconfig",
    "williamboman/mason.nvim",
    "nvim-lualine/lualine.nvim",
    "MunifTanjim/prettier.nvim",
    "williamboman/mason-lspconfig.nvim",
    {
        -- Autocompletion
        "hrsh7th/nvim-cmp",
        dependencies = {
            -- Snippet Engine & its associated nvim-cmp source
            "L3MON4D3/LuaSnip",
            "saadparwaiz1/cmp_luasnip",

            -- Adds LSP completion capabilities
            "hrsh7th/cmp-nvim-lsp",

            -- Adds a number of user-friendly snippets
            "rafamadriz/friendly-snippets",
        },
    },
    {
        -- Highlight, edit, and navigate code
        "nvim-treesitter/nvim-treesitter",
        dependencies = {
            "nvim-treesitter/nvim-treesitter-textobjects",
        },
    },
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 }
}

local opts = {}

require("lazy").setup(plugins, opts)
