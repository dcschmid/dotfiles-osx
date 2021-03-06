local exec = vim.api.nvim_exec -- execute Vimscript
local set  = vim.opt -- global options
local cmd  = vim.cmd -- execute Vim commands
local g    = vim.g -- global variables
local k    = vim.api.nvim_set_keymap -- set global keymaps

cmd('autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=grey') --to Show whitespace, MUST be inserted BEFORE the colorscheme command
cmd('colorscheme tokyonight')
set.guifont        = 'Hack Nerd Font Mono 16'
set.termguicolors  = true -- Enable GUI colors for the terminal to get truecolor
set.list           = false -- show whitespace
set.listchars      = {
	nbsp     = '⦸', -- CIRCLED REVERSE SOLIDUS (U+29B8, UTF-8: E2 A6 B8)
	extends  = '»', -- RIGHT-POINTING DOUBLE ANGLE QUOTATION MARK (U+00BB, UTF-8: C2 BB)
	precedes = '«', -- LEFT-POINTING DOUBLE ANGLE QUOTATION MARK (U+00AB, UTF-8: C2 AB)
	tab      = '▷─', -- WHITE RIGHT-POINTING TRIANGLE (U+25B7, UTF-8: E2 96 B7) + BOX DRAWINGS HEAVY TRIPLE DASH HORIZONTAL (U+2505, UTF-8: E2 94 85)
	trail    = '•', -- BULLET (U+2022, UTF-8: E2 80 A2)
	space    = ' ',
}
set.fillchars      = {
	diff = '∙', -- BULLET OPERATOR (U+2219, UTF-8: E2 88 99)
	eob  = ' ', -- NO-BREAK SPACE (U+00A0, UTF-8: C2 A0) to suppress ~ at EndOfBuffer
	fold = '·', -- MIDDLE DOT (U+00B7, UTF-8: C2 B7)
	vert = ' ', -- remove ugly vertical lines on window division
}
set.clipboard      = set.clipboard + "unnamedplus" --copy & paste
set.wrap           = false -- don't automatically wrap on load
set.showmatch      = true -- show the matching part of the pair for [] {} and ()
set.cursorline     = true -- highlight current line
set.number         = true -- show line numbers
set.relativenumber = false -- show relative line number
set.incsearch      = true -- incremental search
set.hlsearch       = true -- highlighted search results
set.ignorecase     = true -- ignore case sensetive while searching
set.smartcase      = true
set.scrolloff      = 1 -- when scrolling, keep cursor 1 lines away from screen border
set.sidescrolloff  = 2 -- keep 30 columns visible left and right of the cursor at all times
set.backspace      = 'indent,start,eol' -- make backspace behave like normal again
set.updatetime     = 500 -- CursorHold interval
set.softtabstop    = 4
set.shiftwidth     = 4 -- spaces per tab (when shifting), when using the >> or << commands, shift lines by 4 spaces
set.tabstop        = 4 -- spaces per tab
set.smarttab       = true -- <tab>/<BS> indent/dedent in leading whitespace
set.autoindent     = true -- maintain indent of current line
set.expandtab      = false -- don't expand tabs into spaces
set.shiftround     = true
set.splitbelow     = true -- open horizontal splits below current window
set.splitright     = true -- open vertical splits to the right of the current window
set.laststatus     = 2 -- always show status line
set.hidden         = true -- allows you to hide buffers with unsaved changes without being prompted
set.inccommand     = 'split' -- live preview of :s results
set.shell          = 'zsh' -- shell to use for `!`, `:!`, `system()` etc.
set.swapfile       = false
g.mapleader        = "," -- set mapleader key to ,
g.netrw_banner     = 0 -- remove directory banner in netrw
g.lasttab          = 1

-- keymaps
k('n', '<leader>w', [[:w!<CR>]], { noremap = true, silent = true }) -- Fast saving
k('n', '<C-h>', [[:FocusSplitLeft<CR>]], { noremap = true, silent = true }) -- Ctrl + h to move to the left split
k('n', '<C-l>', [[:FocusSplitRight<CR>]], { noremap = true, silent = true }) -- Ctrl + l to move to the right one
k('n', '<C-j>', [[:FocusSplitUp<CR>]], { noremap = true, silent = true }) -- Ctrl + j to move to the top one
k('n', '<C-k>', [[:FocusSplitDown<CR>]], { noremap = true, silent = true }) -- Ctrl + k to move to the bottom one
k('n', '<space>', [[/]], { noremap = true, silent = true }) -- search
k('n', '<C-space>', [[?]], { noremap = true, silent = true }) -- backward search
k('n', '<leader><space>', [[:nohlsearch<CR>]], { noremap = true, silent = true }) -- remove search highlight
k('n', '<leader>ba', [[:w | %bd | e#]], { noremap = true, silent = true }) -- close all the buffers
k('n', '<leader>nt', [[:tabnew<CR>]], { noremap = true, silent = true }) -- open new tab
k('n', '<leader>to', [[:tabonly<CR>]], { noremap = true, silent = true }) -- close other tabs
k('n', '<leader>tc', [[:tabclose<CR>]], { noremap = true, silent = true }) -- close tab
k('n', '<leader>tp', [[:tabprevious<CR>]], { noremap = true, silent = true }) -- previous tab
k('n', '<leader>tn', [[:tabnext<CR>]], { noremap = true, silent = true }) -- next tab
k('n', '<leader>tl', [[:exe "tabn ".g:lasttab<CR>]], { noremap = true, silent = true }) -- let 'tl' toggle between this and the last accessed tab
k('n', '-', [[:Explore<CR>]], { noremap = true, silent = true }) -- open netrw (native file expolorer)
k('n', '<C-p>', [[:Telescope find_files<CR>]], { noremap = true, silent = true }) -- Lists files in your current working directory, respects .gitignore
k('n', '<C-g>', [[:Telescope git_files<CR>]], { noremap = true, silent = true }) -- Fuzzy search through the output of git ls-files command
k('n', '<leader>fg', [[:Telescope live_grep<CR>]], { noremap = true, silent = true }) -- Search for a string in your current working directory and get results live as you type
k('n', '<leader>g', [[:Telescope grep_string<CR>]], { noremap = true, silent = true }) -- Search for the string under your cursor in your current working directory
k('n', ';', [[:Telescope buffers<CR>]], { noremap = true, silent = true }) -- Lists open buffers in current neovim instance
k("n", "<leader>xx", "<cmd>TroubleToggle<cr>", { silent = true, noremap = true }) -- toggle Trouble window
k("n", "<leader>xr", "<cmd>TroubleRefresh<cr>", { silent = true, noremap = true }) -- refresh Trouble window
k("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>", { silent = true, noremap = true }) -- switch to document diagnostics from the builtin LSP client
k("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>", { silent = true, noremap = true }) -- switch to workspace diagnostics from the builtin LSP client
k("n", "<leader>s", "<cmd>lua require('spectre').open()<CR>", { silent = true, noremap = true }) -- open spectre
k("n", "<leader>sw", "<cmd>lua require('spectre').open_visual({select_word=true})<CR>", { silent = true, noremap = true }) -- search current word
k("n", "<leader>sp", "<cmd>lua require('spectre').open_file_search()<CR>", { silent = true, noremap = true }) -- search current word
k("n", "<leader>sm", "<cmd>Telescope persisted<CR>", { silent = true, noremap = true }) -- search current word
k("v", "<leader>so", "<Esc><cmd>Sort<CR>", { silent = true, noremap = true }) -- search current word
k("n", "<leader>gw", "[[:lua require('telescope').extensions.git_worktree.git_worktrees()<CR>]]",
	{ silent = true, noremap = true }) -- search current word
k("n", "<leader>gwn", "[[:lua require('telescope').extensions.git_worktree.create_git_worktree()<CR>]]",
	{ silent = true, noremap = true }) -- search current word

vim.diagnostic.config({
	virtual_text = false,
})

-- highlight on yank
exec([[
   augroup YankHighlight
     autocmd!
     autocmd TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=500, on_visual=true}
   augroup end
]], false)

-- jump to the last position when reopening a file
cmd([[
 if has("autocmd")
   au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
 endif
]])

-- patterns to ignore during file-navigation
set.wildignore = set.wildignore + '*.o,*.rej,*.so'
-- remove whitespace on save
cmd([[au BufWritePre * :%s/\s\+$//e]])
-- faster scrolling
set.lazyredraw = true
-- don't auto commenting new lines
cmd([[au BufEnter * set fo-=c fo-=r fo-=o]])
-- completion options
set.completeopt = 'menuone,noselect,noinsert'
-- 4 spaces for selected filetypes
cmd([[ autocmd FileType xml,html,xhtml,css,scss,javascript,lua,dart setlocal shiftwidth=4 tabstop=4 ]])
