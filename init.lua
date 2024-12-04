-- Ensure packer.nvim is installed and loaded
vim.cmd([[packadd packer.nvim]])

-- Initialize packer.nvim with plugins
require('packer').startup(function(use)
    -- Manage packer itself
    use 'wbthomason/packer.nvim'

    -- File icons for nvim-tree (optional)
    use 'kyazdani42/nvim-web-devicons'

    -- File tree plugin (nvim-tree)
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
        config = function()
            require('nvim-tree').setup {
                view = {
                    width = 30,
                    side = 'left',
                },
            }
        end
    }

    -- Autocompletion plugin (nvim-cmp)
    use {
        'hrsh7th/nvim-cmp',
        requires = {
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-nvim-lsp',
            'L3MON4D3/LuaSnip',
        },
        config = function()
            local cmp = require('cmp')
            cmp.setup({
                completion = {
                    autocomplete = {cmp.config.disable},
                },
                snippet = {
                    expand = function(args)
                        vim.fn["vsnip#expand"](args.body)
                    end,
                },
                mapping = {
                    ['<Tab>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
                    ['<S-Tab>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
                    ['<CR>'] = cmp.mapping.confirm({ select = true }),
                },
                sources = {
                    { name = 'buffer' },
                    { name = 'path' },
                }
            })
        end
    }
end)

-- Key mapping to toggle NvimTree
vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>')

-- Automatically open NvimTree when Neovim starts
vim.cmd([[autocmd VimEnter * NvimTreeOpen /root/code]])


-- You can add other mappings and settings here as needed
