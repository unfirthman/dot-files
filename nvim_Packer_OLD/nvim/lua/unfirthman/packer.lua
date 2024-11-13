

-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function()
		  vim.cmd('colorscheme rose-pine')
	  end
  })

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
    }

    -- Auto tag
    use {
        "windwp/nvim-ts-autotag",
        config = function()
           require('nvim-treesitter.configs').setup {}
        end
    }

  use('nvim-treesitter/playground')
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use('nvim-tree/nvim-web-devicons')

  use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional
  },
  config = function()
    require("nvim-tree").setup {}
  end
}

  use {
	  'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }
-- react snippets
  use("SirVer/ultisnips")
  use("mlaursen/vim-react-snippets")


  use("folke/zen-mode.nvim")

  use("github/copilot.vim")
 -- use({"L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*"})
  --use('vim-airline/vim-airline')
  --use('vim-airline/vim-airline-themes')
  use('alvan/vim-closetag')

-- lua line (new airline)
  use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

-- Prettier
--  use('neovim/nvim-lspconfig')
--  use('MunifTanjim/prettier.nvim')
--  use('jose-elias-alvarez/null-ls.nvim')
   use {
       'prettier/vim-prettier',
       run = 'yarn install',
   }

-- lines
  use("lukas-reineke/indent-blankline.nvim")

-- auto-pairs

use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
}


-- css color
use {
    "NvChad/nvim-colorizer.lua",
    config = function() require("colorizer").setup {} end
}

-- tpope surround brackets, etc.
  use("tpope/vim-surround")

-- Kanban Chart

use('arakkkkk/kanban.nvim')


-- use({ 'toppair/peek.nvim', run = 'deno task --quiet build:fast' })


-- Vim as a Word Processor
  use("preservim/vim-pencil")


  use("preservim/vim-wordy")


  use("dpelle/vim-LanguageTool")


  use("p00f/nvim-ts-rainbow")
--  use("luochen1990/rainbow")
--  use("junegunn/rainbow_parentheses.vim")

-- utility bar that shows winbar
    use {
    "SmiteshP/nvim-navic",
    requires = "neovim/nvim-lspconfig"
}

--Win Bar!!!!

use({
  "utilyre/barbecue.nvim",
  tag = "*",
  requires = {
    "SmiteshP/nvim-navic",
    "nvim-tree/nvim-web-devicons", -- optional dependency
  },
  after = "nvim-web-devicons", -- keep this if you're using NvChad
  config = function()
    require("barbecue").setup({
        attach_navic = true,
    })
  end,
})


-- MarkDown preview
use('iamcco/markdown-preview.nvim')

-- git diff
-- Packer
use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }

use {'akinsho/git-conflict.nvim', tag = "*", config = function()
  require('git-conflict').setup()
end}

end)








