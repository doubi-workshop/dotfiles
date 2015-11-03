" Vundle {{{
    set nocompatible              " be iMproved, required
                                  " explicitly disable vi-compatible mode
    filetype off                  " required

    " set the runtime path to include Vundle and initialize
    " alternatively, pass a path where Vundle should install plugins
    " call vundle#begin('~/some/path/here')
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()

    " let Vundle manage Vundle, required
    Plugin 'VundleVim/Vundle.vim'

    " The following are examples of different formats supported.
    " Keep Plugin commands between vundle#begin/end.

    " plugin on GitHub repo
    " Fugitive -- git wrapper
    " Plugin 'tpope/vim-fugitive'

    " color scheme -- molokai
    Plugin 'tomasr/molokai'
    " vim-tmux integration
    Plugin 'christoomey/vim-tmux-navigator'
    " snipmate
    Plugin 'MarcWeber/vim-addon-mw-utils'
    Plugin 'tomtom/tlib_vim'
    Plugin 'garbas/vim-snipmate'
    Plugin 'honza/vim-snippets'
    " YouCompletMe
    " Plugin 'Valloric/YouCompleteMe'
    " CtrlP
    Plugin 'kien/ctrlp.vim'
    " Indexer
    " Plugin 'everzet/vim-indexer'
    " Plugin 'vim-scripts/DfrankUtil'
    " Plugin 'vim-scripts/vimprj'
    " TagBar
    Plugin 'vim-scripts/Tagbar'
    " NERD Tree
    Plugin 'scrooloose/nerdtree'
    " A
    Plugin 'vim-scripts/a.vim'
    " cscope
    Plugin 'brookhong/cscope.vim'
    " Plugin 'vim-scripts/cscope_macros.vim'
    " sginature(mark)
    Plugin 'kshenoy/vim-signature'
    " javascript
    Plugin 'jelera/vim-javascript-syntax'
    " autoformat
    Plugin 'Chiel92/vim-autoformat'
    " minibufepl
    Plugin 'fholgado/minibufexpl.vim'
    " TaskList
    Plugin 'vim-scripts/TaskList.vim'
    " GUndo
    Plugin 'sjl/gundo.vim'
    " python
    Plugin 'klen/python-mode'
    " Plugin 'ivanov/vim-ipython'
    Plugin 'oplatek/Conque-Shell' 
    " markdown
    Plugin 'shime/vim-livedown'
    " vim surround -- change brace, braket more easily
    Plugin 'tpope/vim-surround'


    " Git plugin not hosted on GitHub
    " Command-T -- 
    " Plugin 'git://git.wincent.com/command-t.git'
    " git repos on your local machine (i.e. when working on your own plugin)
    " Plugin 'file:///home/gmarik/path/to/plugin'
    " The sparkup vim script is in a subdirectory of this repo called vim.
    " Pass the path to set the runtimepath properly.
    " Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

    " All of your Plugins must be added before the following line
    call vundle#end()            " required
    filetype plugin indent on    " required
    " To ignore plugin indent changes, instead use:
    "filetype plugin on
    "
    " Brief help
    " :PluginList          - list configured plugins
    " :PluginInstall(!)    - install (update) plugins
    " :PluginSearch(!) foo - search (or refresh cache first) for foo
    " :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
    "
    " see :h vundle for more details or wiki for FAQ
    " Put your non-Plugin stuff after this line
" }}}

" General {{{
    set autoread    " auto read file when it is changed outside
    set fileformats=unix,dos,mac    " fileformt order
    set fileencoding=utf8    " UTF8 encoding
    scriptencoding utf-8
    set clipboard=unnamed    " use OS clipboard
    set viewoptions=folds,options,cursor,unix,slash    " unix/windows compatibility
    set history=1000    "change default 20 history
    set nobackup    " turn off backup (if you save a lot, backup is no use)
    set noequalalways 
" }}}

" Colors {{{
    colorscheme molokai
    syntax enable    " enable syntax processing
" }}}

" Spaces {{{
    set shiftround   " when at 3 spaces, and I hit > ... go to 4, not 5
    set tabstop=4    " number of visual spaces per TAB
    set shiftwidth=4    " indent spaces for '>>' '<<'
    set softtabstop=4    " number of spaces in TAB when editting
    set expandtab    " tabs are spaces
    set autoindent    " auto indent file
    set smartindent    " smart indent (most about C)
" }}}

" UI Config {{{
    set number    " showing line number
    set nowrap    " do not wrap line
    set showcmd    " show command line in bottom bar
    set cursorline    "highlight current line
    set mousehide    " hide mouse when typing
    set showmode    "show current mode
    set scrolljump=5    " lines to scroll when cursor leaves screen
    set scrolloff=3    " minmum lines to keep above and below cursor
    set splitright    " vsplit --> window to the right of current
    set splitbelow    " split --> window to the bottom of current

    if has("gui_running")
        set guioptions-=T    " remove the toolbar
        " Font settings
        if has("gui_gtk2")
            set guifont=Inconsolata\ 14
        elseif has("gui_macvim")
            set guifont=Menlo\ Regular:h14
        elseif has("gui_win32")
            set guifont=Consolas:h14:cANSI
        endif
    endif

    if &term == 'xterm' || &term == 'screen' || &term == 'tmux'
        set t_Co=256    " Enable 256 colors to make colorscheme work on terminal
    endif

    filetype indent on    " load filetype-specific indent files (at vim/indent/xxx.vim)
    set wildmenu    " visual autocomplete for command menu
    set lazyredraw    " redraw only when neeeded (for fast macro)
    set showmatch    " highlight matching {[(

    " Format the status line
    set laststatus=2    " 'always' has status line
    set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
    "              | | | | |  |   |      |  |     |    |
    "              | | | | |  |   |      |  |     |    +-- current column
    "              | | | | |  |   |      |  |     +-- current line
    "              | | | | |  |   |      |  +-- current % into file
    "              | | | | |  |   |      +-- current syntax in square brackets
    "              | | | | |  |   +-- current fileformat
    "              | | | | |  |  
    "              | | | | |  +-- number of lines
    "              | | | | +-- preview flag in square brackets
    "              | | | +-- help flag in square brackets
    "              | | +-- readonly flag in square brackets
    "              | +-- rodified flag in square brackets
    "              +-- full path to file in the buffer
" }}}

" Search {{{
    set incsearch    " incremental search while typing
    set hlsearch    " highlight matches 
" }}}

" Folding {{{
    set foldenable    " enable folding
    set foldlevelstart=10    " opening fold levels
    set foldnestmax=10    " most nested folds number
    set foldmethod=indent " fold based on indent

    " <space> to open/close folds
    nnoremap <space> za
" }}}

" Movement {{{
    " highlight last inserted text
    nnoremap gV `[v`]
" }}}

" Keybindings {{{
    set backspace=indent,eol,start    " backspace can delete most things

    " leader related shortcuts
    let mapleader=","
    " let g:mapleader=","    " change <leader> to ',' (default '\') 
    " close highlight <leader> defaults to '\'
    nnoremap <leader><space> :nohlsearch<CR>    

    " Map <Leader>ff to display all lines with keyword under cursor
    " and ask which one to jump to
    nmap <Leader>ff [I:let nr = input("Which one to jump: ")<Bar>exe "normal " . nr ."[\t"<CR>

    " jk is <ESC>
    inoremap jk <ESC>

    " edit vimrc/zshrc and load vimrc bindings
    nnoremap <leader>ev :vsp $MYVIMRC<CR>
    nnoremap <leader>ez :vsp ~/.zshrc<CR>
    nnoremap <leader>sv :source $MYVIMRC<CR>

    " Visual shifting not exist visual mode
    vnoremap < <gv
    vnoremap > >gv

    " Fast move between windows (<C-K> redefine digraph)
    map <C-J> <C-W>j<C-W>_
    map <C-K> <C-W>k<C-W>_
    map <C-L> <C-W>l<C-W>_
    map <C-H> <C-W>h<C-W>_

    " Fast move between tabs (redefine move top/bottom of screen)
    " map <S-H> gT
    " map <S-L> gt

    " NERDTree
    map <leader>nt :NERDTreeToggle<CR>

    " CtrlP
    map <leader>cb :CtrlPBuffer<CR>
    nnoremap <leader>ct :CtrlPTag<CR>

    " TagBar
    map <leader>tb :TagbarToggle<CR>

    " A
    map <leader>a :A<CR>
    " (A)uto(F)ormat
    map <leader>af :Autoformat<CR>
    " minibufexpl
    map <S-L> :MBEbn<CR>
    map <S-H> :MBEbp<CR>
    " TaskList
    map <leader>tl <Plug>TaskList
    " GUndo
    map <leader>gu :GundoToggle<CR>
" }}}

" NERDTree {{{
    " open NERDTree when start vim
    autocmd StdinReadPre * let s:std_in=1
    autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" }}}

" cscope {{{
    " open quick fix
    if has('quickfix')
        set cscopequickfix=s-,c-,d-,i-,t-,e-
    endif
" }}}
 
" minibufexpl {{{
    let g:miniBufExplBRSplit = 0
" }}}

" pymode {{{
    let g:pymode_rope_complete_on_dot = 0
" }}}
" bottom line is mode line
set modelines=1
" vim:foldmethod=marker:foldlevel=0
