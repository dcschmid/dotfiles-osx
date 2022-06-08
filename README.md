# dotfiles-osx
My new dotfiles for OSX

## Neovim

This is my actually neovim configuration, what I am using for private and working development. You can use it as a base for
your own neovim configuration.

### Shortcuts
Leader key = , (Comma)

#### Basic
| Shortcut      | Functionality                                   |
| ------------- | ----------------------------------------------- |
| leader + w    |  fast saving                                    |
| -             |  open netrw file explorer                       |
| leader + ba   |  close all the buffers		                      |

#### Split Management
| Shortcut      | Functionality                                   |
| ------------- | ----------------------------------------------- |
| leader + v    |  open a vertical split                          |
| control + h   |  move to the left split                         |
| control + l   |  move to the right split                        |
| control + j   |  move to the top split                          |
| control + k   |  move to the bottom split                       |

#### Search
| Shortcut						| Functionality                                   |
| ------------------- | ----------------------------------------------- |
| space								|  search                                         |
| control + space     |  backward search                                |
| leader + space      |  remove search highlights                       |

#### Tab Management
| Shortcut						| Functionality                                   |
| ------------------- | ----------------------------------------------- |
| leader + nt					|  open new tab                                   |
| leader + to					|  close other tabs                               |
| leader + tc					|  close actual tab					                      |
| leader + tp					|  switch to previous tab			 	                  |
| leader + tn					|  switch to next tab						                  |
| leader + tl					|  toggle between this and the last accessed tab	|

#### Telescope
| Shortcut						| Functionality																																						|
| ------------------- | --------------------------------------------------------------------------------------- |
| control + p					|  Lists files in your current working directory																					|
| control + g					|  Fuzzy search through the output of git ls-files command																|
| leader + fg					|	 Search for a string in your current working directory and get results live as you type	|
| leader + g					|  Searches for the string under your cursor in your current working directory						|
| ;										|  Lists open buffers in current neovim instance																					|

#### Trouble
| Shortcut						| Functionality																																						|
| ------------------- | --------------------------------------------------------------------------------------- |
| leader + xx					|  toggle Trouble window																																	|
| leader + xr					|  refresh the active list																																|
| leader + xw					|	 switch to workspace diagnostics from the builtin LSP client														|
| leader + xd					|  switch to document diagnostics from the builtin LSP client															|

#### ESLint
| Shortcut						| Functionality																																						|
| ------------------- | --------------------------------------------------------------------------------------- |
| leader + el					|  run EslintFixAll																																				|

### Used Pluginss
Here I list all used plugins with links to the corresponding documentation.

#### Plugin Management
- [Packer](https://github.com/wbthomason/packer.nvim):
	A use-package inspired plugin manager for Neovim. Uses native packages,
	supports Luarocks dependencies, written in Lua, allows for expressive config

#### Theme
- [tokyonight.nvim](https://github.com/folke/tokyonight.nvim):
	A clean, dark Neovim theme written in Lua, with support for lsp, treesitter and lots of plugins.

#### Statusline
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
  A blazing fast and easy to configure neovim statusline plugin written in pure lua.

#### LSP
- [nvim-lsp-installer](https://github.com/williamboman/nvim-lsp-installer)
  Neovim plugin that allows you to seamlessly manage LSP servers with :LspInstall

- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
	Quickstart configurations for the Nvim LSP client

- [nvim-lsp-ts-utils](https://github.com/jose-elias-alvarez/nvim-lsp-ts-utils)
  Utilities to improve the TypeScript development experience for Neovim's built-in LSP client.

- [lspkind.nvim](https://github.com/onsails/lspkind.nvim)
	vscode-like pictograms for neovim lsp completion items

- [trouble.nvim](https://github.com/folke/trouble.nvim)
	🚦A pretty diagnostics, references, telescope results, quickfix and location list to help you solve all the trouble your code is causing.

- [schemastore.nvim](https://github.com/b0o/SchemaStore.nvim)
	🛍  JSON schemas fo Neovim

#### Treesitter
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
	Nvim Treesitter configurations and abstraction layer

- [nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag)
	Use treesitter to auto close and auto rename html tag

#### CMP
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
	A completion plugin for neovim coded in Lua.

- [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
	nvim-cmp source for neovim builtin LSP client

- [cmp-nvim-lua](https://github.com/hrsh7th/cmp-nvim-lua)
	nvim-cmp source for nvim lua

- [cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
	nvim-cmp source for buffer words

- [cmp-path](https://github.com/hrsh7th/cmp-path)
	nvim-cmp source for path

- [cmp-calc](https://github.com/hrsh7th/cmp-calc)
	nvim-cmp source for math calculation

- [cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
	luasnip completion source for nvim-cmp

- [cmp-npm](https://github.com/David-Kunz/cmp-npm)
	An additional source for nvim-cmp to autocomplete packages and its versions

- [cmp-rg](https://github.com/lukas-reineke/cmp-rg)
	ripgrep source for nvim-cmp

- [cmp-spell](https://github.com/f3fora/cmp-spell)
	spell source for nvim-cmp based on vim's spellsuggest

- [cmp-git](https://github.com/petertriho/cmp-git)
	Git source for nvim-cmp

- [copilot.vim](https://github.com/github/copilot.vim)
	Neovim plugin for GitHub Copilot

- [copilot.lua](https://github.com/zbirenbaum/copilot.lua)
	Lua plugin for starting and interacting with github copilot

- [copilot-cmp](https://github.com/zbirenbaum/copilot-cmp)
	Lua plugin to turn github copilot into a cmp source

#### Telescope
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
	Find, Filter, Preview, Pick. All lua, all the time.

- [telescope-zf-native.nvim](https://github.com/natecraddock/telescope-zf-native.nvim)
	native telescope bindings to zf for sorting results

#### Git
- [gh.nvim](https://github.com/ldelossa/gh.nvim)
	A fully featured GitHub integration for performing code reviews in Neovim

- [gitlinker.nvim](https://github.com/ruifm/gitlinker.nvim)
	A lua neovim plugin to generate shareable file permalinks (with line ranges) for several git web frontend hosts.
	Inspired by tpope/vim-fugitive's :GBrowse

- [git.nvim](https://github.com/dinhhuy258/git.nvim)
	git.nvim is the simple clone of the plugin vim-fugitive which is written in Lua.

- [diffview.nvim](https://github.com/sindrets/diffview.nvim)
	Single tabpage interface for easily cycling through diffs for all modified files for any git rev.

- [git-conflict.nvim](https://github.com/akinsho/git-conflict.nvim)
	A plugin to visualise and resolve merge conflicts in neovim

#### Tools
- [Comment.nvim](https://github.com/numToStr/Comment.nvim)
	Smart and powerful comment plugin for neovim. Supports treesitter, dot repeat, left-right/up-down motions, hooks, and more

- [sad.nvim](https://github.com/ray-x/sad.nvim)
	Space Age seD in Neovim. A project-wide find and replace plugin for Neovim.

- [jester](https://github.com/David-Kunz/jester)
	A Neovim plugin to easily run and debug Jest tests

- [LuaSnip](https://github.com/L3MON4D3/LuaSnip)
	Snippet Engine for Neovim written in Lua.

