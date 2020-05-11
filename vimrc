set nocompatible " be iMproved, required
filetype off " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'                 " Bundle Manager
Plugin 'scrooloose/nerdtree'
Plugin 'tomasr/molokai'
Plugin 'scrooloose/nerdcommenter'
Plugin 'jiangmiao/auto-pairs'
Plugin 'AutoComplPop'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
" All of your Plugins must be added before the following line
call vundle#end() " required
filetype plugin indent on " required
"" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList - lists configured plugins
" :PluginInstall - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" ------------------------------------------
" My Config
" ------------------------------------------
set tabstop=2           " Set tab to 2 space.
set expandtab
set autoindent
set shiftwidth=2        " Set auto tab to 2 space.
set cursorline          " Highlight the line cursor.
set cursorcolumn        " Highlight the column cursor.
set nu                  " Show line number.
set rnu                 " Show relative line number.
set mouse=a             " Let use mouse true.
set hlsearch            " Highlight the search results.
set scrolloff=16        " Let curor in half of screen.

set t_Co=256            " Set vi to 256-bits colors.
colorscheme  molokai

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Autocomplete the symbol
"inoremap ' ''<ESC>i
"inoremap " ""<ESC>i
"inoremap ( ()<ESC>i
"inoremap [ []<ESC>i
"inoremap { {<CR>}<ESC>O
imap <C-CR> <ESC>o
imap <C-l> <RIGHT>

" Highlight the redundant spaces and tabs.
highlight RedundantSpaces ctermbg=red guibg=red
match RedundantSpaces /\s\+$\| \+\ze\t\|\t/

" ------------------------------------------
" NERDTree Config
" ------------------------------------------
map <F3> :NERDTreeToggle<CR>
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" ------------------------------------------
" NERDCommenter Config
" ------------------------------------------
let g:NERDSpaceDelims=1


" ------------------------------------------
" auto-pairs Config
" ------------------------------------------
let g:AutoPairsFlyMode=1


" ------------------------------------------
" Source User Config
" ------------------------------------------
source ~/.vimrc_user
