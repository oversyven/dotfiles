return {
    -- Mason
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },

    -- Mason-lspconfig
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "bashls", "gopls", "rust_analyzer" }
            })
        end
    },

    -- lspconfig
    {
        "neovim/nvim-lspconfig",
        config = function()
            -- Set up lspconfig.
            local capabilities = require('cmp_nvim_lsp').default_capabilities()

            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({
                capabilities = capabilities
            })
            lspconfig.bashls.setup({
                capabilities = capabilities
            })
            lspconfig.gopls.setup({
                capabilities = capabilities
            })
			lspconfig.rust_analyzer.setup({
				capabilities = capabilities,
				-- Server-specific settings. See `:help lspconfig-setup`
				settings = {
					["rust-analyzer"] = {
						cargo = {
							allFeatures = true,
						},
						imports = {
							group = {
								enable = false,
							},
						},
						completion = {
							postfix = {
								enable = false,
							},
						},
					},
				},
			})
        end
	},

    -- cmp
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            'neovim/nvim-lspconfig',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-cmdline',
            'hrsh7th/nvim-cmp',
            'L3MON4D3/LuaSnip',
        },
        config = function()
            -- Set up nvim-cmp.
          local cmp = require'cmp'

          cmp.setup({
            snippet = {
              -- REQUIRED - you must specify a snippet engine
              expand = function(args)
                require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
              end,
            },
            window = {
              -- completion = cmp.config.window.bordered(),
              -- documentation = cmp.config.window.bordered(),
            },
            mapping = cmp.mapping.preset.insert({
              ['<C-b>'] = cmp.mapping.scroll_docs(-4),
              ['<C-f>'] = cmp.mapping.scroll_docs(4),
              ['<C-Space>'] = cmp.mapping.complete(),
              ['<C-e>'] = cmp.mapping.abort(),
              ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
            }),
            sources = cmp.config.sources({
              { name = 'nvim_lsp' },
              { name = 'luasnip' }, -- For luasnip users.
            }, {
              { name = 'buffer' },
            })
          })
        end
    }
}
