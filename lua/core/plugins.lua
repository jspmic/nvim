local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use "sainnhe/sonokai"
	use "nvim-tree/nvim-tree.lua"
	use "nvim-tree/nvim-web-devicons"
	use "terrortylor/nvim-comment"
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use {
		"williamboman/mason.nvim",
		"williamboman/nvim-lsp-installer",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	}
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'L3MON4D3/LuaSnip'
	use "rafamadriz/friendly-snippets"
	use({
		"NTBBloodbath/galaxyline.nvim",
		-- your statusline
		-- config = function()
		-- require("galaxyline.themes.eviline")
		-- end,
		-- some optional icons
		requires = { "kyazdani42/nvim-web-devicons", opt = true }
	})
	use 'rose-pine/neovim'
	use {
		'romgrk/barbar.nvim',
		requires = {'lewis6991/gitsigns.nvim'}
	}
	use {'nyoom-engineering/oxocarbon.nvim'}
	use { 'nguyenvukhang/nvim-toggler' }
	use {
		"akinsho/toggleterm.nvim",
		tag = '*',
		}
	use {
		"petertriho/nvim-scrollbar",
		config = function()
		require("scrollbar").setup()
		end
	}
	use { "RRethy/vim-illuminate" }
	use {
		'yamatsum/nvim-nonicons',
		requires = {'kyazdani42/nvim-web-devicons'},
		config = function()
		require("nvim-nonicons").setup{}
		end
	}

	use {
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate"
	}
	use {
		'glepnir/zephyr-nvim',
		requires = { 'nvim-treesitter/nvim-treesitter', opt = true },
	}
	use "yamatsum/nvim-cursorline"
	use { 'michaelb/sniprun', run = 'sh ./install.sh'}
	use "ellisonleao/dotenv.nvim"
	use {
		"folke/twilight.nvim",
		config = function()
			require("twilight").setup()
		end
	}
	use({
		"kdheepak/lazygit.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
		},
	})
	use {
		'2kabhishek/nerdy.nvim',
		config = function()
			require('telescope').load_extension('nerdy')
		end,
	}
	use 'zaldih/themery.nvim'
	use { "ellisonleao/gruvbox.nvim" }
	use {"ellisonleao/glow.nvim"}
	use {
		"OXY2DEV/markview.nvim",
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
			"nvim-tree/nvim-web-devicons"},
	}
	use {
    "tiagovla/tokyodark.nvim",
    config = function()
        require("tokyodark").setup()
    end,
	}
	use 'Mofiqul/adwaita.nvim'
	use({
		"ramojus/mellifluous.nvim",
		config = function()
			require("mellifluous").setup({})
		end,
	})
	use 'xiyaowong/transparent.nvim'
	use 'mhartington/oceanic-next'
	-- packer.nvim
	use({
		"robitx/gp.nvim",
	})
	use {
	  'jghauser/follow-md-links.nvim'
	}
	use {
		"startup-nvim/startup.nvim",
		requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"}
	}
	use {
		"sontungexpt/witch"
	}
	use "preservim/tagbar"
	use "kyazdani42/blue-moon"
	use "rafamadriz/neon"
	use 'ofirgall/ofirkai.nvim'
	use "fenetikm/falcon"
	use "jbyuki/venn.nvim"
	use {
		"epwalsh/pomo.nvim",
		tag = "*",  -- Recommended, use latest release instead of latest commit
		requires = {"rcarriga/nvim-notify"}
	}

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end
)
