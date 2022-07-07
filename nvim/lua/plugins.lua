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

	use { -- A Neovim plugin to easily run and debug Jest test
		'David-Kunz/jester',
		config = [[ require('plugins/jester') ]],
	}

	use({ -- Simple session management for Neovim with git branching, autosave/autoload and Telescope support
		"olimorris/persisted.nvim",
		config = function()
			require("persisted").setup({
				use_git_branch = true, -- create session files based on the branch of the git enabled repository
				autosave = true, -- automatically save session files when exiting Neovim
				autoload = true, -- automatically load the session for the cwd on Neovim startup
				command = "VimLeavePre",
				telescope = {
					before_source = function()
						-- Close all open buffers
						pcall(vim.cmd, "bufdo bwipeout")
					end,
					after_source = function(session)
						-- Change the git branch
						pcall(vim.cmd, "git checkout " .. session.branch)
					end,
				},
			})
			require("telescope").load_extension("persisted") -- To load the telescope extension
		end,
	})


	-- Sorting plugin for Neovim that supports line-wise and delimiter sorting.
	use({
		'sQVe/sort.nvim',

		-- Optional setup for overriding defaults.
		config = function()
			require("sort").setup({
				-- Input configuration here.
				-- Refer to the configuration section below for options.
			})
		end
	})

	-- EditorConfig plugin for Neovim
	use 'gpanders/editorconfig.nvim'

	-- Auto-Focusing and Auto-Resizing Splits/Windows for Neovim
	use {
		'beauwilliams/focus.nvim',
		config = function() require('focus').setup() end
	}

	-- A simple wrapper around git worktree operations, create, switch, and delete.
	use { 'ThePrimeagen/git-worktree.nvim' }

	-- Neovim plugin to improve the default vim.ui interfaces
	use {
		'stevearc/dressing.nvim',
		config = function() require('dressing').setup() end
	}

	-- A NeoVim plugin for saving your work before the world collapses or you type :qa!
	use {
		'Pocco81/AutoSave.nvim',
		config = [[ require('plugins/autosave') ]],
	}

	-- collaborative editing in Neovim using built-in capabilities
	use { 'jbyuki/instant.nvim' }

	-- Snippets
	use { -- Snippet Engine for Neovim written in Lua.
		'L3MON4D3/LuaSnip',
		requires = {
			"rafamadriz/friendly-snippets", -- Snippets collection for a set of different programming languages for faster development.
		},
		config = [[ require('plugins/luasnip') ]],
	}


	use {
		'KadoBOT/nvim-spotify',
		requires = 'nvim-telescope/telescope.nvim',
		config = function()
			local spotify = require 'nvim-spotify'

			spotify.setup {
				-- default opts
				status = {
					update_interval = 10000, -- the interval (ms) to check for what's currently playing
					format = '%s %t by %a' -- spotify-tui --format argument
				}
			}
		end,
		run = 'make'
	}

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if packer_bootstrap then
		require('packer').sync()
	end
end)
