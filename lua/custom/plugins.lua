local plugins = {
    --- Uncomment the two plugins below if you want to manage the language servers from neovim
{
    'williamboman/mason.nvim',
    opts = {
      ensure_installed = {
        "typescript-language-server",
        "html-lsp",
        "css-lsp",
        "emmet-language-server",
      }
    }
  },
{'williamboman/mason-lspconfig.nvim'},

{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
{
    'neovim/nvim-lspconfig',
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    'jose-elias-alvarez/null-ls.nvim',
  },
  {
    'mhartington/formatter.nvim',
    event = 'VeryLazy',
    opts = function()
      return require 'custom.configs.formatter'
    end
  },
  -- {
  --   'jose-elias-alvarez/null-ls.nvim',
  --   event = 'VeryLazy',
  --   opts = function()
  --     return require 'custom.configs.null-ls'
  --   end,
  -- },
  {
    'MunifTanjim/prettier.nvim',
  },
{'hrsh7th/cmp-nvim-lsp'},
{'hrsh7th/nvim-cmp'},
{'L3MON4D3/LuaSnip'},
}
return plugins
