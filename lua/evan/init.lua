require("evan.remap")
require("evan.set")
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

return require('lazy').setup({
    'nvim-tree/nvim-tree.lua',
    'nvim-tree/nvim-web-devicons',
    'github/copilot.vim',
    'nvim-treesitter/playground',
    "nvim-lua/plenary.nvim",
    'mbbill/undotree',
    'tpope/vim-fugitive',
    'nvim-treesitter/nvim-treesitter',
    'apple/pkl-neovim',
    'theprimeagen/vim-be-good',

    {
        'stevearc/oil.nvim',
        opts = {},
    },


    {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        -- or                            , branch = '0.1.x',
        dependencies = { {'nvim-lua/plenary.nvim'} }
    },

    {
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    },

    {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        dependencies = { {"nvim-lua/plenary.nvim"} }
    },

    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        dependencies = {
            --- Uncomment these if you want to manage LSP servers from neovim
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- LSP Support
            {'neovim/nvim-lspconfig'},
            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
        }
    },

})
