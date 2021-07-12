" Place this file im ~/.config/nvim/init.vim
"
" Refresh config file
" :so %
"
" Buffers
" :ls = list buffers
" :bd <buffer number> = delete buffe
" :b <buffer number> = go to buffer n
" :n <file name> = new file
" :e = open file browser
"
" Mouse
" set mouse=a = enables mouse for all modes - auto starts visual mode and
" ignores line numbers
" :h click and :h mouse = help for mouse

set mouse+=a
" Right click copy
vnoremap <RightMouse> "+y
nnoremap <RightMouse> "+p
" Doesn't work - moba has this mapped
" nnoremap <S-RightMouse> P

"
" Windows
" Ctrl w v = vertical split
" Ctrl w s = horizontal split
" ctrl w = = equal split panes
" ctrl w r = rotate current buffers
" ctrl w o = close all except current buffer
" :h wincmd = show help for windows
"
" :sp | te = split terminal
" :vs | te = vertical split terminal
"
" Ctrl 6 = jump between last two files
" Will remap this one - awkward to use
"
" noremap <C-6> <C-^>
" Apparently this keybindig has issues with regular windows terminal
" Works in mobaxterm


"
" # search backword for word under cursor * search forward for word under
" cursor
" Jump to beginning and end of word insert ea and bi
" Combo to delete up to ) dt)
" Combo to visual up to ) vt)
" Shift C = Delete line after cursor and insert mode
" Shift D = Delete line after cusror
" Shift S = delete entire line and put insert mode properly indented
" :<linenumber> jump to line
" {} jump forwards / backwards to emtpy line <paragraph>
" Ctrl d + ctrl u = page up / down
" % = matching pair of parenthesis jump
"   Use with f to jump to curly
" di{ = delete everything inside {}
" cip = delete paragraph and put into insert mode
" yi( = yank everything inside parens
" vi[ = visual highlight everything inside parens
" Use a to also delete / yank / highlight including the parenthesis
"
" Healthcheck for plugin errors
" :healthcheck
"
" Troubleshooting
" :TSInstall all
" :PlugInstall
" :LspInstall python
" :LspStart python
"
" Change directory to current file
" :cd %:p:h
" Auto change dir
" autocmd BufEnter * silent! lcd %:p:h
"
" Windows
"
" Install vim plug
" md ~\AppData\Local\nvim\autoload
" $uri = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
" (New-Object Net.WebClient).DownloadFile(
"   $uri,
"   $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath(
"     "~\AppData\Local\nvim\autoload\plug.vim"
"   )
" )
" Make nvim directory in app data local
" Link config mklink c:\Users\morla\AppData\Local\nvim\init.vim c:\Users\morla\OneDrive\Notes\init.vim
" Copy neovim to Appdata local programs
" Make shortcut on desktop / link to task bar
" Make default editor to open files
" Install plugins
"
" Goals of vim
" 0 Good movement
" Easy motion
" gg / G = top of file, bottom of file
" gi = last insert
"
" 0.5 Good find / replace
" Possibly easy motion dot repeat?
"
" 1 Git integration
"
" 2 fzf / quick nagivation between files
" :Vex = vertical :Sex = horizontal split editor
"
" 2.5 good search within file
" / = search
"
" 3 good tab / split support
" Ctrl + w n = new window
" Ctrl + w hjkl = move between windows
" Ctrl + w = = split evenly
"
" 4 good terminal support
" Copy paste single line to terminal or multiple lines (ex f8)
" :set paste / :set nopaste to prevent indent on tabs, or set pastetoggle=<F3>
" to keybind
"
" Could combine with file with telescope - hit key command, search for
" command, copy command, send to terminal - think OSCP notes
"
" i = insert mode to run commands
" Maps escape to exit insert mode in terminal
tnoremap <Esc> <C-\><C-n>
tnoremap <C-w>h <C-\><C-n><C-w>h
tnoremap <C-w>j <C-\><C-n><C-w>j
tnoremap <C-w>k <C-\><C-n><C-w>k
tnoremap <C-w>l <C-\><C-n><C-w>l

" 5 lsp / syntax highlighting
"
" 6 debugger
" Could use IDEs for debugging, but neovim for edit
" Probably hardest feature - essentially have to use debug plugins
" May be best to use debuggers with more advance editors
"
" 7 Runs on Windows / linux / OSX
"
" 8 Portable config
"
" 9 FAST
" Use neovim / fast plugins
"
" 10 Clipboard support (can copy / paste with host)
" WLS - just put win32yank.exe in path on linux - slows down visual mode
" May not be possible for remote work
" For now, mouse works OK - vimium doesn't work well
" If we get shared clipboard - just use clipboard
" Figure out copy paste with line numbers
"
" 10 Remote work
" For now - use ssh and install nvim on server
" Also - if on remote, try to just work remote ex: install pycharm on remote,
" install neovim on remote
" Use script to auto install nvim
" Find portable way of bundling LSP
"
" 11 Format on save
"
" Help
" :options
" :h <option name>
"
" Plugins: Use vim plug
" https://github.com/junegunn/vim-plug
"
" Config
" https://github.com/ThePrimeagen/.dotfiles
" https://www.youtube.com/watch?v=DogKdiRx7ls
"
" Navigation
" https://www.youtube.com/watch?v=8PnNeIoZwx0

" Clipboard config

" Copy to clipboard
" set clipboard=unnamedplus

" Keys to copy to / from clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y

" " Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

" Tab auto config
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

" Block cursor
set guicursor

" Line number config
set relativenumber
set nu

" Remove highlighting after search
set nohlsearch

" Keeps buffer around
set hidden

" No error sounds
set noerrorbells

" Don't wrap long lines
set nowrap

" Splits vertical
" Split with terminal :vs | te
set splitbelow

" Search case sensitive
"set smartcase
"set ignorecase

" Backups / undo / swap files
" Use with undo tree plugin
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

" Incremental search
set incsearch

" Auto scroll lines
set scrolloff=8

" Good for linting adds column to the left for errors
set signcolumn=yes

" Shows line thats too long
" set colorcolumn=80
set termguicolors

" More space for messages
set cmdheight=2

" Plugin installation (single vim script file)
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" Plugins will be downloaded under the specified directory.
" Use :PlugInstall to install plugins (may have to exit and reopen file)
call plug#begin('~/.vim/plugged')

" Easy motion
" Plug 'easymotion/vim-easymotion'

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" Gruvbox
Plug 'gruvbox-community/gruvbox'

" Plebvim lsp Plugins
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'hrsh7th/vim-vsnip'
Plug 'glepnir/lspsaga.nvim'
Plug 'simrat39/symbols-outline.nvim'
Plug 'kabouzeid/nvim-lspinstall'

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Adds ability to see treesitter info within vim
" Plug 'nvim-treesitter/playground'

" Debugger
" Don't use - just use real debuggers which work remote and lots less config
" Plug 'puremourning/vimspector'

" Language support
Plug 'ambv/black'
Plug 'rust-lang/rust.vim'
Plug 'darrikonn/vim-gofmt'
Plug 'sbdchd/neoformat'

" Git
Plug 'tpope/vim-fugitive'
Plug 'junegunn/gv.vim'

" Undo
Plug 'mbbill/undotree'

" Git worktree
" Plug 'ThePrimeagen/git-worktree.nvim'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

" Look and feel
colorscheme gruvbox
" Show OS background
highlight Normal guibg=none

" let g:vimspector_install_gadgets = [ 'debugpy', 'vscode-cpptools',
" 'CodeLLDB' ]

" Leader key
let mapleader = " "

" No paste auto copy
vnoremap <leader>p "_dP

" Telescope config
" https://giters.com/ThePrimeagen/telescope.nvim
" Lua error
"nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
" nnoremap <C-p> :lua require('telescope.builtin').git_files()<CR>
" nnoremap <Leader>pf :lua require('telescope.builtin').find_files()<CR>

" nnoremap <leader>pw :lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<CR>
" nnoremap <leader>pb :lua require('telescope.builtin').buffers()<CR>
" nnoremap <leader>vh :lua require('telescope.builtin').help_tags()<CR>

" require'telescope.builtin'.find_files{
"   -- Optional
"   -- cwd = "/home/tj/"
"   -- find_command = { "rg", "-i", "--hidden", "--files", "-g", "!.git" }
" }

nnoremap <C-p> <cmd>Telescope find_files<cr>
" Figure out way to have find_files with directory specified
" nnoremap <Leader>fa <cmd>lua require'telescope.builtin'.find_files{ cwd = "/", find_command = { "rg","-i", "--hidden", "--files", "-g", "!{.git,/proc,/mnt,/dev,/snap,/sys,/run}" }}<CR>
nnoremap <Leader>fh <cmd>lua require'telescope.builtin'.find_files{ cwd = "/home", find_command = { "rg","-i", "--hidden", "--files", "-g", "!{.git,.svn}" }}<CR>
noremap <leader>fg <cmd>Telescope live_grep<cr>
" nnoremap <leader>fb <cmd>Telescope buffers<cr>
" nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fb <cmd>Telescope file_browser<cr>
nnoremap <leader>fc <cmd>Telescope commands<cr>
nnoremap <leader>fn <cmd>Telescope current_buffer_fuzzy_find<cr>
nnoremap <leader>fo <cmd>Telescope oldfiles<cr>
lua << EOF
local actions = require('telescope.actions')
require('telescope').setup {
    defaults = {
        file_sorter = require('telescope.sorters').get_fzy_sorter,
        prompt_prefix = ' >',
        color_devicons = true,

        file_previewer   = require('telescope.previewers').vim_buffer_cat.new,
        grep_previewer   = require('telescope.previewers').vim_buffer_vimgrep.new,
        qflist_previewer = require('telescope.previewers').vim_buffer_qflist.new,

        mappings = {
            i = {
                ["<C-x>"] = false,
                ["<C-q>"] = actions.send_to_qflist,
            },
        }
    },
    extensions = {
        fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
        }
    }
}

--require("telescope").load_extension("git_worktree")
require('telescope').load_extension('fzy_native')
EOF

" Easy motion config
" map <leader> <Plug>(easymotion-prefix)
" Move character
"nmap s <Plug>(easymotion-overwin-f)

" Move line
" May make relative line numbers obsolete

" map <Leader>k <Plug>(easymotion-k)

" Search
" map  / <Plug>(easymotion-sn)
" omap / <Plug>(easymotion-tn)
" map  n <Plug>(easymotion-next)
" map  N <Plug>(easymotion-prev)

" let g:EasyMotion_smartcase = 1
" let g:EasyMotion_do_mapping = 0

" Trim whitespace on save
fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup TEST
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END


" Setup LSP servers
lua << EOF
local function setup_servers()
  require'lspinstall'.setup()
  local servers = require'lspinstall'.installed_servers()
  for _, server in pairs(servers) do
    require'lspconfig'[server].setup{}
  end
end

setup_servers()

-- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim
require'lspinstall'.post_install_hook = function ()
  setup_servers() -- reload installed servers
  vim.cmd("bufdo e") -- this triggers the FileType autocmd that starts the server
end
EOF

" LSP config
nnoremap <leader>vd :lua vim.lsp.buf.definition()<CR>
nnoremap <leader>vi :lua vim.lsp.buf.implementation()<CR>
nnoremap <leader>vsh :lua vim.lsp.buf.signature_help()<CR>
nnoremap <leader>vrr :lua vim.lsp.buf.references()<CR>
nnoremap <leader>vrn :lua vim.lsp.buf.rename()<CR>
nnoremap <leader>vh :lua vim.lsp.buf.hover()<CR>
nnoremap <leader>vca :lua vim.lsp.buf.code_action()<CR>
nnoremap <leader>vsd :lua vim.lsp.diagnostic.show_line_diagnostics(); vim.lsp.util.show_line_diagnostics()<CR>
nnoremap <leader>vn :lua vim.lsp.diagnostic.goto_next()<CR>

" compe config
set completeopt=menuone,noselect
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

let g:compe = {}
let g:compe.enabled = v:true
let g:compe.autocomplete = v:true
let g:compe.debug = v:false
let g:compe.min_length = 1
let g:compe.preselect = 'enable'
let g:compe.throttle_time = 80
let g:compe.source_timeout = 200
let g:compe.resolve_timeout = 800
let g:compe.incomplete_delay = 400
let g:compe.max_abbr_width = 100
let g:compe.max_kind_width = 100
let g:compe.max_menu_width = 100
let g:compe.documentation = v:true

let g:compe.source = {}
let g:compe.source.path = v:true
"let g:compe.source.spell = v:true
let g:compe.source.buffer = v:true
let g:compe.source.calc = v:true
let g:compe.source.nvim_lsp = v:true
let g:compe.source.nvim_lua = v:true
"let g:compe.source.treesitter = v:true
"let g:compe.source.vsnip = v:true
"let g:compe.source.ultisnips = v:true
"let g:compe.source.luasnip = v:true
"let g:compe.source.emoji = v:true

inoremap <silent><expr> <C-Space> compe#complete()
inoremap <silent><expr> <CR>      compe#confirm('<CR>')
inoremap <silent><expr> <C-e>     compe#close('<C-e>')
inoremap <silent><expr> <C-f>     compe#scroll({ 'delta': +4 })
inoremap <silent><expr> <C-d>     compe#scroll({ 'delta': -4 })

lua <<EOF
-- compe tab completion
local t = function(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
    local col = vim.fn.col('.') - 1
    return col == 0 or vim.fn.getline('.'):sub():match('%s') ~= nil
end

-- Use (s-)tab to:
--- move to prev/next item in completion menuone
--- jump to prev/next snippet's placeholder
_G.tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-n>"
  elseif vim.fn['vsnip#available'](1) == 1 then
    return t "<Plug>(vsnip-expand-or-jump)"
  elseif check_back_space() then
    return t "<Tab>"
  else
    return vim.fn['compe#complete']()
  end
end
_G.s_tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-p>"
  elseif vim.fn['vsnip#jumpable'](-1) == 1 then
    return t "<Plug>(vsnip-jump-prev)"
  else
    -- If <S-Tab> is not working in your terminal, change it to <C-h>
    return t "<S-Tab>"
  end
end

vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})

-- Treesitter config
require'nvim-treesitter.configs'.setup {
ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  ignore_install = { "julia" }, -- List of parsers to ignore installing
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "fish" },  -- list of language that will be disabled
  },
}
EOF

" Git config
nnoremap <leader>ga :Git fetch --all<CR>
nnoremap <leader>grum :Git rebase upstream/master<CR>
nnoremap <leader>grom :Git rebase origin/master<CR>

nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>
nmap <leader>gs :G<CR>

" Git Worktree
lua <<EOF

-- local Worktree = require("git-worktree")
-- local Job = require("plenary.job")
-- local Path = require("plenary.path")
--
-- local function is_nrdp()
--     return not not (string.find(vim.loop.cwd(), vim.env.NRDP, 1, true))
-- end
--
-- local function is_tvui()
--     return not not (string.find(vim.loop.cwd(), vim.env.TVUI, 1, true))
-- end
--
-- local function get_nrdp_build_paths(path)
--     return
--         Path:new({vim.env.NRDP, path, "configure"}):absolute(),
--         Path:new({vim.env.NRDP, "build", path}):absolute()
-- end
--
-- Worktree.on_tree_change(function(op, path, upstream)
--
--     if op == Worktree.Operations.Switch and is_tvui() then
--         Job:new({
--             "./tvui", "install"
--         }):start()
--     end
--
--     if op == Worktree.Operations.Create and is_nrdp() then
--         local submodule = Job:new({
--             "git", "submodule", "update"
--         })
--
--         local configure_path, build_path = get_nrdp_build_paths(path)
--         local make_build = Job:new({
--             "mkdir", "-p", build_path
--         })
--
--         local configure = Job:new({
--             configure_path, "--ninja", "--debug",
--             cwd = build_path,
--         })
--
--         submodule:and_then_on_success(make_build)
--         make_build:and_then_on_success(configure)
--         submodule:start()
--     end
-- end)
EOF
