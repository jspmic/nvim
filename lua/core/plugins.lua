local function bootstrap_pckr()
  local pckr_path = vim.fn.stdpath("data") .. "/pckr/pckr.nvim"

  if not (vim.uv or vim.loop).fs_stat(pckr_path) then
    vim.fn.system({
      'git',
      'clone',
      "--filter=blob:none",
      'https://github.com/lewis6991/pckr.nvim',
      pckr_path
    })
  end

  vim.opt.rtp:prepend(pckr_path)
end

bootstrap_pckr()

require('pckr').add{
	-- Icons plugins
	"lewis6991/gitsigns.nvim";
	"kyazdani42/nvim-web-devicons";
	"nvim-tree/nvim-web-devicons";
	{
		'yamatsum/nvim-nonicons',
		requires = {'kyazdani42/nvim-web-devicons'},
		config = function()
			require("nvim-nonicons").setup{}
		end
	};

	-- The famous telescope
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		requires = { {'nvim-lua/plenary.nvim'} }
	};
	"rcarriga/nvim-notify";

	-- LSP plugins
	"williamboman/mason.nvim";
	"williamboman/nvim-lsp-installer";
	"williamboman/mason-lspconfig.nvim";
	"neovim/nvim-lspconfig";
	"winston0410/cmd-parser.nvim";
	"hrsh7th/nvim-cmp";
	"hrsh7th/cmp-nvim-lsp";

	-- Colorschemes and related
	'marko-cerovac/material.nvim';
	"sontungexpt/witch";
	"sainnhe/sonokai";
	"Mofiqul/adwaita.nvim";
	"kyazdani42/blue-moon";
	"rafamadriz/neon";
	"fenetikm/falcon";
	"rose-pine/neovim";
	"zaldih/themery.nvim";
	"xiyaowong/transparent.nvim";
	"mhartington/oceanic-next";
	'nyoom-engineering/oxocarbon.nvim';
	{
		"tiagovla/tokyodark.nvim",
		config = function()
			require("tokyodark").setup()
		end,
	};
	{
		'romgrk/barbar.nvim',
		requires = {'lewis6991/gitsigns.nvim'}
	};
	{
		'glepnir/zephyr-nvim',
		requires = { 'nvim-treesitter/nvim-treesitter', opt = true },
	};
	"ellisonleao/gruvbox.nvim";

	-- Tree file plugin
	"nvim-tree/nvim-tree.lua";
	{
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate"
	};
	{
		"ramojus/mellifluous.nvim",
		config = function()
			require("mellifluous").setup({})
		end
	};
	{
		"startup-nvim/startup.nvim",
		requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"}
	};

	-- Comment plugin
	"terrortylor/nvim-comment";

	-- Snipets and code-related
	"L3MON4D3/LuaSnip";
	"rafamadriz/friendly-snippets";
	"ellisonleao/dotenv.nvim";
	{'michaelb/sniprun', run = 'sh ./install.sh'};

	-- Draw
	"jbyuki/venn.nvim";

	-- Interface plugins
	"RRethy/vim-illuminate";
	{
		"petertriho/nvim-scrollbar",
		config = function()
			require("scrollbar").setup()
		end
	};
	"yamatsum/nvim-cursorline";
	"preservim/tagbar";
	"ofirgall/ofirkai.nvim";
	{
		"NTBBloodbath/galaxyline.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true }
	};
	{
		"folke/twilight.nvim",
		config = function()
			require("twilight").setup()
		end
	};
	{
		'nvim-lualine/lualine.nvim',
		requires = { 'nvim-tree/nvim-web-devicons', opt = true }
	};

	-- Others

	{
		"kdheepak/lazygit.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
		},
	};

	'nguyenvukhang/nvim-toggler';
	{
		"akinsho/toggleterm.nvim",
		tag = '*'
	};

	{
		'2kabhishek/nerdy.nvim',
		config = function()
			require('telescope').load_extension('nerdy')
		end,
	};
	{
		"OXY2DEV/markview.nvim",
		requires = {
			"nvim-treesitter/nvim-treesitter",
			"nvim-tree/nvim-web-devicons"},
	};
	{
		"epwalsh/pomo.nvim",
		tag = "*",  -- Recommended, use latest release instead of latest commit
		requires = {"rcarriga/nvim-notify"}
	};
	{
		"winston0410/range-highlight.nvim",
		requires = {'winston0410/cmd-parser.nvim'}
	};
	{
		 "csessh/aoc.nvim",
		requires = {"nvim-lua/plenary.nvim"},
		config = function()
			require("aoc").setup()
		end,
	};
	{
		'PHSix/nvim-hybrid'
	};
	{
		"RRethy/base16-nvim"
	};

	{
		"iamcco/markdown-preview.nvim",
		build = function() vim.fn["mkdp#util#install"]() end,
		ft = { "markdown" },
		config = function()
		  vim.g.mkdp_filetypes = { "markdown" }
		end,
	};
	{
		"allaman/emoji.nvim",
		ft = "markdown",
	  	dependencies = {
	  	  "ibhagwan/fzf-lua",
	  	},
	  	opts = {
	  	  enable_cmp_integration = true,
	  	  plugin_path = vim.fn.expand("$HOME/plugins/"),
	  	},
	  	config = function(_, opts)
	  	  require("emoji").setup(opts)
	  	  -- Optional Telescope integration
	  	  local ts = require("telescope").load_extension("emoji")
	  	  vim.keymap.set("n", "<leader>m", ts.emoji, { desc = "[S]earch [E]moji" })
	  	end,
	};
	{
		"mluders/comfy-line-numbers.nvim"
	};
}
