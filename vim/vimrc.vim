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
    " c.vim -- various c/c++ programming support
    " Plugin 'vim-scripts/c.vim'
 
    " vim-protobuf syntax highlight
    Plugin 'uarun/vim-protobuf'
    "
    " easymotion -- awesome motion
    Plugin 'easymotion/vim-easymotion'
    " nerdcommenter -- easy comment and uncomment
    Plugin 'scrooloose/nerdcommenter'
    " vim-airline -- beautiful airline
    Plugin 'bling/vim-airline'
    " DoxygenToolkit -- auto generate doxygen like comment
    Plugin 'vim-scripts/DoxygenToolkit.vim'
    "vim-indent-guides -- visulize vim indent
    Plugin 'nathanaelkane/vim-indent-guides'
    " auto-pairs -- auto insert brace etc
    Plugin 'jiangmiao/auto-pairs'
    " STL-Syntax -- syntax file for stl
    Plugin 'Mizuchi/STL-Syntax'
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
    Plugin 'Valloric/YouCompleteMe'
    " syntastic -- show static syntax error
    Plugin 'scrooloose/syntastic'
    " CtrlP -- like sublime ctrl+P
    Plugin 'kien/ctrlp.vim'
    " ctrlsf -- CTRL+SHIFT+F like sublime
    Plugin 'dyng/ctrlsf.vim'
    " Indexer
    Plugin 'vim-scripts/DfrankUtil'
    Plugin 'vim-scripts/vimprj'
    Plugin 'vim-scripts/indexer.tar.gz'
    " TagBar
    Plugin 'vim-scripts/Tagbar'
    " NERD Tree
    Plugin 'scrooloose/nerdtree'
    " A
    Plugin 'vim-scripts/a.vim'
    " cscope
    Plugin 'brookhong/cscope.vim'
    " Plugin 'vim-scripts/cscope_macros.vim'
    " sginature(mark) -- visulise mark
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
    " Plugin 'klen/python-mode'
    " Plugin 'ivanov/vim-ipython'
    Plugin 'oplatek/Conque-Shell' 
    " markdown
    " Plugin 'shime/vim-livedown'
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
    set noswapfile  "do not use swap file
    set autoread    " auto read file when it is changed outside
    set autowrite   " auto write file when change buffer"
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

" Paste {{{
    nnoremap <F2> :set invpaste paste?<CR>
    set pastetoggle=<F2>
    set showmode
" }}}

" Tags {{{
    set tags+=/usr/include/c++/4.4.6/stdcpp.tags
    set tags+=/usr/include/sys.tags
    set tags+=/usr/local/include/local.tags
    set tag+=${HOME}/lib/superviseddescent/superviseddescent.tags
    set tag+=${HOME}/lib/caffe/caffe.tags
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
    nnoremap <leader>ev :vsp ~/.vimrc<CR>
    nnoremap <leader>ez :vsp ~/.zshrc<CR>
    nnoremap <leader>sv :source ~/.vimrc<CR>

    " Visual shifting not exist visual mode
    vnoremap < <gv
    vnoremap > >gv

    " Fast move between windows (<C-K> redefine digraph)
    " map <c-j> <C-W>j
    " map <c-k> <C-W>k
    " map <c-l> <C-W>l
    " map <c-h> <C-W>h

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
    " vim-indent-guides
    nmap <silent> <leader>ig <Plug>IndentGuidesToggle
    " doxygentoolkit -- function comment
    map <leader>dx :Dox<CR>
    " vim-snipmate
    imap <leader><Tab> <Plug>snipMateNextOrTrigger
    smap <leader><Tab> <Plug>snipMateNextOrTrigger
    imap <leader><S-Tab> <Plug>snipMateBack
    smap <leader><S-Tab> <Plug>snipMateBack
    vmap <leader><Tab> <Plug>snipMateVisual
    " YouCompleteMe
    nnoremap <leader>jd :YcmCompleter GoToDeclaration<CR>
    nnoremap <leader>je :YcmCompleter GoToDefinition<CR> 
" }}}

" NERDTree {{{
    " open NERDTree when start vim
    autocmd StdinReadPre * let s:std_in=1
    autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
    let NERDTreeWinSize=32
    let NERDTreeShowHidden=1
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

" vim-indent-guides {{{
    " 随 vim 自启动
    let g:indent_guides_enable_on_vim_startup=1
    " 从第二层开始可视化显示缩进
    let g:indent_guides_start_level=2
    " 色块宽度
    let g:indent_guides_guide_size=1
" }}}

" indexer {{{
  " 设置插件 indexer 调用 ctags 的参数
	let g:indexer_ctagsCommandLineOptions="--c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v --fields=+iaSl --extra=+q"
" }}}

" TagBar {{{
  let g:tagbar_width = 20
  " 设置 ctags 对哪些代码元素生成标签
  let g:tagbar_type_cpp = {
      \ 'kinds' : [
          \ 'd:macros:1',
          \ 'g:enums',
          \ 't:typedefs:0:0',
          \ 'e:enumerators:0:0',
          \ 'n:namespaces',
          \ 'c:classes',
          \ 's:structs',
          \ 'u:unions',
          \ 'f:functions',
          \ 'm:members:0:0',
          \ 'v:global:0:0',
          \ 'x:external:0:0',
          \ 'l:local:0:0'
      \ ],
      \ 'sro'        : '::',
      \ 'kind2scope' : {
          \ 'g' : 'enum',
          \ 'n' : 'namespace',
          \ 'c' : 'class',
          \ 's' : 'struct',
          \ 'u' : 'union'
      \ },
      \ 'scope2kind' : {
          \ 'enum'      : 'g',
          \ 'namespace' : 'n',
          \ 'class'     : 'c',
          \ 'struct'    : 's',
          \ 'union'     : 'u'
      \ }
  \ }
" }}}

" syntastic {{{
" }}}

" YouCompeteMe {{{
    " 补全功能在注释中同样有效
    let g:ycm_complete_in_comments=1
    " 允许 vim 加载 .ycm_extra_conf.py 文件，不再提示
    let g:ycm_confirm_extra_conf=0
    " 开启 YCM 标签补全引擎
    " let g:ycm_collect_identifiers_from_tags_files=1
    " 补全内容不以分割子窗口形式出现，只显示补全列表
    set completeopt-=preview
    " 语法关键字补全         
    " let g:ycm_seed_identifiers_with_syntax=1 
" }}}

" bottom line is mode line
set modelines=1
" vim:foldmethod=marker:foldlevel=0
