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
| -             |  open netrw file explorer                       |
| leader + ba   |  close all the buffers		                      |
| leader + w    |  fast saving                                    |

#### Split Management
| Shortcut      | Functionality                                                                                                  |
| ------------- | -------------------------------------------------------------------------------------------------------------- |
| control + h   |  Move to existing or create a new split to the left of your current window + open file or custom command       |
| control + j   |  Move to existing or create a new split to the top of your current window + open file or custom command        |
| control + k   |  Move to existing or create a new split to the bottom of your current window + open file or custom command     |
| control + l   |  Move to existing or create a new split to the right of your current window + open file or custom command      |

#### Search
| Shortcut						| Functionality                                   |
| ------------------- | ----------------------------------------------- |
| control + space     |  backward search                                |
| leader + space      |  remove search highlights                       |
| space								|  search                                         |

#### Tab Management
| Shortcut						| Functionality                                   |
| ------------------- | ----------------------------------------------- |
| leader + nt					|  open new tab                                   |
| leader + tc					|  close actual tab					                      |
| leader + tl					|  toggle between this and the last accessed tab	|
| leader + tn					|  switch to next tab						                  |
| leader + to					|  close other tabs                               |
| leader + tp					|  switch to previous tab			 	                  |

#### Telescope
| Shortcut						| Functionality																																						|
| ------------------- | --------------------------------------------------------------------------------------- |
| ;										|  Lists open buffers in current neovim instance																					|
| control + g					|  Fuzzy search through the output of git ls-files command																|
| control + p					|  Lists files in your current working directory																					|
| leader + fg					|	 Search for a string in your current working directory and get results live as you type	|
| leader + g					|  Searches for the string under your cursor in your current working directory						|

#### Trouble
| Shortcut						| Functionality																																						|
| ------------------- | --------------------------------------------------------------------------------------- |
| leader + xd					|  switch to document diagnostics from the builtin LSP client															|
| leader + xr					|  refresh the active list																																|
| leader + xw					|	 switch to workspace diagnostics from the builtin LSP client														|
| leader + xx					|  toggle Trouble window																																	|


#### LSP
| Shortcut						| Functionality																																						|
| ------------------- | --------------------------------------------------------------------------------------- |
| K										|  Displays hover information about the symbol under the cursor in a floating window. 		|
| [ + d					      |  Move to the previous diagnostic in the current buffer.																	|
| ] + d					      |  Move to the next diagnostic.																														|
| control + k					|  Displays signature information about the symbol under the cursor in a floating window. |
| gD							  	|  Jumps to the declaration of the symbol under the cursor.																|
| gd								  |  Jumps to the definition of the symbol under the cursor.																|
| gi									|  Lists all the implementations for the symbol under the cursor in the quickfix window. 	|
| gr									|  Lists all the references to the symbol under the cursor in the quickfix window.				|
| leader + gi 				|  Rename TypeScript file and update imports																							|
| leader + go 				|  Import all missing imports in TS Files																									|
| leader + gs 				|  Organize imports in TypeScript Files																										|
| space + ca					|  Selects a code action available at the current cursor position.												|
| space + d						|  Jumps to the definition of the type of the symbol under the cursor.										|
| space + e					  |  Show diagnostics in a floating window.																									|
| space + f 					|  Formats the current buffer																															|
| space + q					  |  Add buffer diagnostics to the location list.																						|
| space + rn					|  Renames all references to the symbol under the cursor.																	|

#### Comment
| Shortcut						| Functionality																																						|
| ------------------- | --------------------------------------------------------------------------------------- |
| gb									| Toggles the region using blockwise comment in visual mode			      										|
| gbc									| Toggles the current line using blockwise comment in normal mode													|
| gc									| Toggles the region using linewise comment in visual mode      													|
| gcc									| Toggles the current line using linewise comment in normal mode													|

#### Git
| Shortcut						| Functionality																																						|
| ------------------- | --------------------------------------------------------------------------------------- |
| :DiffviewClose	    | Close the current diffview. You can also use :tabclose																	|
| :DiffviewFileHistory| Opens a new file history view that lists all commits that affected the given paths.			|
| :DiffviewOpen	      | Open Git Diffview	Tab																					      										|
| :DiffviewRefresh	  | Update stats and entries in the file list of the current Diffview												|
| :Git								| run git command in terminal, Eg: :Git checkout -b test																	|
| :GitConflictListQf	| Show all conflicted files in quickfix window									      										|
| c0									| Select both none of the changes																      										|
| cb									| Select both changes																						      										|
| co									| Select the current changes				                  					      										|
| ct									| Select the incoming changes																		      										|
| leader + gR				  | Revert the current file to the specific commit																					|
| leader + gb					| Open blame window																																				|
| leader + gd				  | Opens a new diff that compares against the current index																|
| leader + gn				  | Create a pull request with the target branch is set in the `target_branch` option				|
| leader + go				  | Open file/folder in git repository																											|
| leader + gp				  | Open pull request of the current branch																									|
| leader + gr				  | Revert to the specific commit																														|
| leader + gw				  | To bring up the telescope window listing your workspaces																|
| leader + gwn				| To bring up the telescope window to create a new worktree																|
| leader + gy				  | generate shareable file permalinks (with line ranges)																		|

#### Tools
| Shortcut						| Functionality																																						|
| ------------------- | --------------------------------------------------------------------------------------- |
| leader + el					|  run EslintFixAll																																				|
| leader + s					|  open search panel    																																	|
| leader + sm					|  open saved session list																																|
| leader + so					|  sort visual selection																																	|
| leader + sw					|  search for selected word    																														|


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

- [nvim-telescope/telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim)
	FZF sorter for telescope written in c

#### Git
- [gitlinker.nvim](https://github.com/ruifm/gitlinker.nvim)
	A lua neovim plugin to generate shareable file permalinks (with line ranges) for several git web frontend hosts.
	Inspired by tpope/vim-fugitive's :GBrowse

- [git.nvim](https://github.com/dinhhuy258/git.nvim)
	git.nvim is the simple clone of the plugin vim-fugitive which is written in Lua.

- [diffview.nvim](https://github.com/sindrets/diffview.nvim)
	Single tabpage interface for easily cycling through diffs for all modified files for any git rev.

- [git-conflict.nvim](https://github.com/akinsho/git-conflict.nvim)
	A plugin to visualise and resolve merge conflicts in neovim

- [git-worktree.nvim](https://github.com/ThePrimeagen/git-worktree.nvim)
	A simple wrapper around git worktree operations, create, switch, and delete.

#### Tools
- [Comment.nvim](https://github.com/numToStr/Comment.nvim)
	Smart and powerful comment plugin for neovim. Supports treesitter, dot repeat, left-right/up-down motions, hooks, and more

- [nvim-spectre](https://github.com/nvim-pack/nvim-spectre)
	Find the enemy and replace them with dark power.

- [jester](https://github.com/David-Kunz/jester)
	A Neovim plugin to easily run and debug Jest test

- [persisted.nvim](https://github.com/olimorris/persisted.nvim)
	Simple session management for Neovim with git branching, autosave/autoload and Telescope support

- [sort.nvim](https://github.com/sQVe/sort.nvim)
	Sorting plugin for Neovim that supports line-wise and delimiter sorting.

- [editorconfig.nvim](https://github.com/gpanders/editorconfig.nvim)
	EditorConfig plugin for Neovim

- [focus.nvim](https://github.com/beauwilliams/focus.nvim)
	Auto-Focusing and Auto-Resizing Splits/Windows for Neovim

- [LuaSnip](https://github.com/L3MON4D3/LuaSnip)
	Snippet Engine for Neovim written in Lua.

