local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap = fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
end

return require('packer').startup(function(use)

	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use { -- A blazing fast and easy to configure neovim statusline plugin written in pure lua.
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true },
		config = [[ require('plugins/lualine') ]]
	}


	-- Theme
	use 'folke/tokyonight.nvim' -- A clean, dark Neovim theme written in Lua


	-- LSP Stuff
	use 'williamboman/nvim-lsp-installer' -- Neovim plugin that allows you to seamlessly manage LSP servers with :LspInstall

	use { -- Quickstart configurations for the Nvim LSP client
		'neovim/nvim-lspconfig',
		config = [[ require('plugins/lspconfig') ]]
	}

	use 'jose-elias-alvarez/nvim-lsp-ts-utils' -- Utilities to improve the TypeScript development experience for Neovim's built-in LSP client.

	use { -- A pretty diagnostics, references, telescope results, quickfix and location list to help you solve all the trouble your code is causing.
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
	}

	use { -- vscode-like pictograms for neovim lsp completion items.
		'onsails/lspkind.nvim',
		config = [[ require('plugins/lspkind') ]],
	}

	use { -- JSON schemas for Neovim
		'b0o/schemastore.nvim'
	}


	-- Treesitter
	use { -- Nvim Treesitter configurations and abstraction layer
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate',
		config = [[ require('plugins/treesitter') ]]
	}

	use 'windwp/nvim-ts-autotag' -- Use treesitter to auto close and auto rename html tag


	-- CMP
	use { -- A completion plugin for neovim coded in Lua.
		'hrsh7th/nvim-cmp',
		requires = {
			'hrsh7th/cmp-nvim-lsp', -- nvim-cmp source for neovim builtin LSP client
			'hrsh7th/cmp-nvim-lua', -- nvim-cmp source for nvim lua
			'hrsh7th/cmp-buffer', -- nvim-cmp source for buffer words.
			'hrsh7th/cmp-path', -- nvim-cmp source for filesystem paths.
			'hrsh7th/cmp-calc', -- nvim-cmp source for math calculation.
			'saadparwaiz1/cmp_luasnip', -- luasnip completion source for nvim-cmp
			'David-Kunz/cmp-npm', -- An additional source for nvim-cmp to autocomplete packages and its versions
			'lukas-reineke/cmp-rg', -- ripgrep source for nvim-cmp
			'f3fora/cmp-spell', -- spell source for nvim-cmp based on vim's spellsuggest
		},
		config = [[ require('plugins/cmp') ]],
	}

	use { -- Git source for nvim-cmp
		'petertriho/cmp-git',
		requires = 'nvim-lua/plenary.nvim'
	}

	use 'github/copilot.vim' -- Neovim plugin for GitHub Copilot

	use { -- Lua plugin for starting and interacting with github copilot
		'zbirenbaum/copilot.lua',
		event = { 'VimEnter' },
		config = function()
			vim.defer_fn(function()
				require('copilot').setup()
			end, 100)
		end,
	}

	use { -- Lua plugin to turn github copilot into a cmp source
		'zbirenbaum/copilot-cmp',
		after = { 'copilot.lua', 'nvim-cmp' },
	}


	-- Telescope
	use { -- Find, Filter, Preview, Pick. All lua, all the time.
		'nvim-telescope/telescope.nvim',
		requires = {
			'nvim-lua/plenary.nvim',
		}
	}

	-- FZF sorter for telescope written in c
	use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }


	-- git
	use { -- A lua neovim plugin to generate shareable file permalinks (with line ranges) for several git web frontend hosts.
		'ruifm/gitlinker.nvim',
		requires = 'nvim-lua/plenary.nvim',
		require "gitlinker".setup()
	}

	use { -- git.nvim is the simple clone of the plugin vim-fugitive which is written in Lua.
		'dinhhuy258/git.nvim',
		config = [[ require('plugins/git') ]],
	}

	use { -- Single tabpage interface for easily cycling through diffs for all modified files for any git rev.
		'sindrets/diffview.nvim',
		requires = 'nvim-lua/plenary.nvim'
	}

	use { -- A plugin to visualise and resolve merge conflicts in neovim
		'akinsho/git-conflict.nvim',
		config = function()
			require('git-conflict').setup()
		end
	}


	-- Tools
	use { -- Smart and powerful comment plugin for neovim. Supports treesitter, dot repeat, left-right/up-down motions, hooks, and more
		'numToStr/Comment.nvim',
		config = function()
			require('Comment').setup()
		end
	}

	-- Find the enemy and replace them with dark power.
	use 'windwp/nvim-spectre'

	use { -- A Neovim plugin to easily run and debug Jest tests
		'David-Kunz/jester',
		config = [[ require('plugins/jester') ]],
	}

	-- Snippets
	use { -- Snippet Engine for Neovim written in Lua.
		'L3MON4D3/LuaSnip',
		requires = {
			"rafamadriz/friendly-snippets", -- Snippets collection for a set of different programming languages for faster development.
		},
		config = [[ require('plugins/luasnip') ]],
	}


	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if packer_bootstrap then
		require('packer').sync()
	end
end)
