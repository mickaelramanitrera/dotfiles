-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

-- required by nvim-neo-tree
-- Unless you are still migrating, remove the deprecated commands from v1.x
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- my preferred onedark theme
    use 'navarasu/onedark.nvim'
    -- another theme
    use {"catppuccin/nvim", as = "catppuccin"}
    -- another theme
    use 'folke/tokyonight.nvim'
    -- another theme
    use "rebelot/kanagawa.nvim"
    -- lualine
    use 'nvim-lualine/lualine.nvim'
    -- language server protocol
    use 'neovim/nvim-lspconfig'
    -- tree-sitter for syntax highlighting
    use 'nvim-treesitter/nvim-treesitter'
    -- auto tag and auto pair
    use 'windwp/nvim-ts-autotag'
    use 'windwp/nvim-autopairs'
    -- telescope finder
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = {
            {'nvim-lua/plenary.nvim'},
            {'nvim-telescope/telescope-live-grep-args.nvim'}
        },
        config = function()
            require('telescope').load_extension('live_grep_args')
        end
    }
    -- use { "nvim-telescope/telescope-file-browser.nvim" }
    -- file explorer
    use {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        requires = {
            "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim"
        }
    }
    -- webdev icons
    use 'nvim-tree/nvim-web-devicons'
    -- Git plugin
    -- use 'airblade/vim-gitgutter'
    use {
        'lewis6991/gitsigns.nvim'
        -- tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
    }
    -- VS code like pictograms
    use 'onsails/lspkind-nvim'
    -- Auto completion
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    use 'saadparwaiz1/cmp_luasnip'
    use 'hrsh7th/cmp-path'

    -- luasnip for snippets
    use({
        "L3MON4D3/LuaSnip",
        -- follow latest release.
        tag = "v1.*",
        run = "make install_jsregexp",
        dependencies = {"rafamadriz/friendly-snippets", "honza/vim-snippets"}
    })
    use "rafamadriz/friendly-snippets"
    use "honza/vim-snippets"

    -- lsp plugin
    use({
        "nvimdev/lspsaga.nvim",
        after = 'nvim-lspconfig',
        -- ft = {'c', 'cpp', 'lua', 'rust', 'go', 'typescript'},
        -- opt = true,
        -- event = "LspAttach",
        -- branch = "main",
        config = function()
            require('lspsaga').setup({
                -- finder = {keys = {close = 'q', quit = 'k'}}
                -- server_filetype_map = {typescript = 'typescript', rust = 'rust'},
                -- -- event = 'BufRead',
                -- symbol_in_winbar = {
                --     enable = false,
                --     separator = '> ',
                --     hide_keyword = true,
                --     show_file = true,
                --     folder_level = 2,
                --     respect_root = false,
                --     color_mode = true
                -- },
                -- code_action = {
                --     num_shortcut = false,
                --     show_server_name = false,
                --     extend_gitsigns = true,
                --     keys = {
                --         -- string | table type
                --         quit = "q",
                --         exec = "<CR>"
                --     }
                -- }
            })
        end
    })
    -- lsp bridge
    use 'jose-elias-alvarez/null-ls.nvim'
    use 'MunifTanjim/eslint.nvim'
    use 'MunifTanjim/prettier.nvim'
    -- indent guides
    use 'lukas-reineke/indent-blankline.nvim'
    -- git vim-fugitive clone in lua
    use 'dinhhuy258/git.nvim'
    -- git close buffers without closing splits
    use 'famiu/bufdelete.nvim'
    -- easy comment toggles
    use {
        'numToStr/Comment.nvim',
        config = function() require('Comment').setup() end
    }
    -- Harpoon file navigation
    use 'ThePrimeagen/harpoon'
    -- helm syntax
    use 'towolf/vim-helm'
    -- rust
    use 'simrat39/rust-tools.nvim'
    -- Debugging
    use 'mfussenegger/nvim-dap'
    use {"rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"}}
    use 'theHamsta/nvim-dap-virtual-text'
    use 'nvim-telescope/telescope-dap.nvim'

    -- folding
    -- use {'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async'}

    -- floating cmdline
    use {'VonHeikemen/fine-cmdline.nvim', requires = {{'MunifTanjim/nui.nvim'}}}
end)
