" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set shell=/bin/sh             " Fix for loading right ruby in macvim
set nocompatible

set backup                    " Enable creation of backup files
set backupdir=~/.vim/backups  " Directory where backups will go
set directory=~/.vim/tmp      " Directory for temporary files
set undofile
set undodir=~/.vim/undo

set cf                        " Enable error files & error jumping
set history=256               " keep 256 lines of command line history
set showcmd                   " display incomplete commands
set incsearch                 " do incremental searching
set ignorecase                " Ignore case while searching
set smartcase                 " Case Sensitive if Search Term has Upper Case
set hlsearch                  " Highlight search by default

set autoread
set scrolloff=5

" Formatting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set backspace=2               " allow backspacing over everything in insert mode
set autoindent
set smartindent
set tabstop=2
set softtabstop=2
set shiftwidth=2              " Tabs under smart indent
set number
set numberwidth=3
set nowrap
set linebreak
set showbreak=↳\              " shown at the start of a wrapped line
set cursorline
set smarttab
set expandtab
set fileformat=unix

" Visual
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set showmatch                 " Show matching brackets
set novisualbell
set noerrorbells
set laststatus=2
set ttymouse=xterm2
set mouse=a                   " Enables mouse within terminals

" pathogen config
runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()

" Only do this part when compiled with support for auto commands.
if has("autocmd")
  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'textwidth' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
    au!

    " For all text files set 'textwidth' to 78 characters.
    autocmd FileType vo_base setlocal spell
    autocmd FileType text setlocal spell textwidth=78

    " For all ruby files
    autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et 
    autocmd FileType haml,yaml set foldmethod=indent

    " When editing a file, always jump to the last known cursor position.
    " Don't do it when the position is invalid or when inside an event handler
    " (happens when dropping a file on gvim).
    autocmd BufReadPost *
          \ if line("'\"") > 0 && line("'\"") <= line("$") |
          \   exe "normal g`\"" |
          \ endif

    " Automatically remove hidden fugitive buffers
    autocmd BufReadPost fugitive://* set bufhidden=delete

    " Automatically load .vimrc changes
    autocmd BufWritePost vimrc source $MYVIMRC
    autocmd BufWritePost .vimrc source $MYVIMRC 
  augroup END
endif " has("autocmd")

"color zenburn
color railscasts

" Convenient Mappings
nnoremap <C-s> :w<CR>
vnoremap <C-s> :w<CR>
inoremap <C-s> <ESC>:w<CR>a

nnoremap qq :q<CR>

vnoremap <C-C> "+y
vnoremap <C-X> "+x
inoremap <C-V> <ESC>"+pa

" Tab Navigation with Ctrl+Tab
nnoremap <C-Tab> :tabnext<CR>
nnoremap <C-S-Tab> :tabprev<CR>

" Move tabs around with Ctrl+Shift+Arrow key
nnoremap <silent> <C-S-Left> :exe 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <C-S-Right> :exe 'silent! tabmove ' . tabpagenr()<CR>

" Bubble single line - dependent on vim-unimpaired plugin
nmap <C-Up> [e
nmap <C-Down> ]e

" Bubble multiple lines - also dependent on vim-unimpaired plugin
vmap <C-Up> [egv
vmap <C-Down> ]egv

" These are mappings for the longlines mode equivalent"
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

nnoremap ; :
nnoremap Y y$
nnoremap <silent> <Leader>/ :nohlsearch<CR>

" Common Plugins
syntax on
filetype plugin indent on

set foldenable
set foldmethod=syntax
set foldlevel=99

runtime! macros/matchit.vim " Advanced % matching

" Statusline modifications, added Fugitive Status Line & Syntastic Error Message
set statusline=[%t]%w%m%r%<
set statusline+=[Type=%Y]
set statusline+=%{fugitive#statusline()}
set statusline+=%{rvm#statusline()}
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set statusline+=%=[%l,%c][%p%%]

" Vim supports dictionary autocomplete Ctrl_X+Ctrl_K
set dictionary=/usr/share/dict/words
set thesaurus=~/.vim/spell/mthesaur.txt

" Provides nice wild menu completion, makes command completion in ambiguous
" case very easy
set wildmenu wildmode=full wildignorecase

" Vim inbuilt spell check, <Leader>z= for options, <Leader>zg to add word to list
"set spell " enable this when needed, not needed all the time, can get annoying

" Ruby special settings
let g:rubycomplete_rails = 1
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1

" Remap command key (since ruby_debugger overrides <Leader>t)
nnoremap <Leader>T :CommandT<CR> 

" Plugin Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Syntastic setting for vim to use |:sign| for marking syntax errors
let g:syntastic_enable_signs=1

" Ruby Debug IDE settings
map <F5> :DbgStepInto<CR>
map <F6> :DbgStepOver<CR>
map <F7> :DbgStepOut<CR>
map <F8> :DbgRun<CR>
let g:ruby_debugger_progname = 'mvim'
"let g:ruby_debugger_fast_sender = 1
let g:ruby_debugger_default_script = 'rails s'

" NERDTree Settings
let NERDTreeChDirMode=1
"let NERDTreeQuitOnOpen=1
"let NERDTreeShowHidden=1
let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
let NERDTreeKeepTreeInNewTab=1
map <Leader>nt :NERDTreeToggle<CR>:NERDTreeMirror<CR>
map <Leader>nf :NERDTreeFind<CR>

" Fuzzy Find file, tree, buffer, line
nmap <Leader>ff :FufFile **/<CR>
nmap <Leader>ft :FufFile<CR>
nmap <Leader>fb :FufBuffer<CR>
nmap <Leader>fl :FufLine<CR>
nmap <Leader>fr :FufRenewCache<CR>

" Preview Settings
let g:PreviewBrowsers='google-chrome'

" Ack settings
let g:ackprg="ack-grep -a -H --nocolor --nogroup --column" 

" Session settings
set sessionoptions+=resize
let g:session_autoload=1
let g:session_autosave=1
let g:session_default_to_last=1
let g:session_command_aliases=1

" Powerline settings
let g:Powerline_symbols = 'fancy'

" TaskList settings
map <Leader>td <Plug>TaskList

" Gist settings
let g:gist_show_privates = 1
let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 1

" Lint settings
let g:lint_highlight_color = 'DarkGray'

" QuickTask settings
let g:quicktask_autosave = 1

" JQueryDoc settings
let g:jquery_doc_command = 'open'

" RubyDoc settings
let g:ruby_doc_commanad = 'open'

" Rspec
let g:RspecKeymap = 0
noremap <C-M-r> :RunSpec<CR>
noremap <C-M-l> :RunSpecLine<CR>

" TwitVim
let twitvim_api_root = "https://api.twitter.com/1"
let twitvim_browser_cmd = 'chromium-browser'
