set nocompatible 
filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Set powerline
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

" Always show statusline
set laststatus=2
"
" " Use 256 colours (Use this setting only if your terminal supports 256
" colours)
set t_Co=256


" alteratively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')


" Add all your plugins here (not older version used Bundle instead of Plugin)

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimplyFold'
" Bundle for autocomplete
Bundle 'Valloric/YouCompleteMe'
" Syntax checking and higlighting
Plugin 'scrooloose/syntastic'

" PEP8 Checking
Plugin 'nvie/vim-flake8'

"File browsing
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs' "NerdTree using tab
" hide .pyc
let NERDTreeIgnore=['\.pyc$', '\~$'] "Ignore files in NERDTree
" Ctrl-P searching file
Plugin 'kien/ctrlp.vim'
" learning ctrlp and nerdTree
" https://www.youtube.com/watch?v=9XrHk3xjYsw

" Setting Color scheme --------
" color scheme for for terminal mode
Plugin 'jnurmine/Zenburn'
" color scheme for gui mode (gvim)
Plugin 'altercation/vim-colors-solarized'

" GIT
Plugin 'tpope/vim-fugitive'
" http://vimcasts.org/episodes/fugitive-vim---a-complement-to-command-line-git/

" Using powerline
" http://powerline.readthedocs.io/en/latest/
" Bundle 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}

" All of you plugins must be added before the following line
call vundle#end()
filetype plugin indent on

" line numbering 
set nu

"For moving on vim tab
" use vs and sv to split horizontal and vertical
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" Enable seeing docstring (block of comments)
let g:SimplyFold_docstring_preview=1

" make a system clipboard, instead of vim clipboard
set clipboard=unnamed

" PEP8
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix
" PEP8 for fullstack
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

" auto-indent
Plugin 'vim-scripts/indentpython.vim'

" flaggin unnecessary whitespace
au BufRead, BufNewFile *.py, *.pyw, *.c, *.h match BadWhitespace /\s\+$/

" ensure that autocomplete window goes away when you are done with it
let g:ycm_autoclose_preview_window_after_completion=1

" shortcut to gotodefinition. map to <space>-g
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

" enable sytax highligh and color
let python_highlight_all=1
syntax on

" setting color scheme 
if has('gui_running')
	set background=dark
	colorscheme solarized
else
	colorscheme zenburn
endif

"Toggle for Nerdtree
map <C-n> :NERDTreeToggle<CR>

" Switching dark and light theme
call togglebg#map("<F5>")

" Enable powerline
let g:Powerline_symbols = 'fancy'

"Extra info
"in YouCompleteMe require jedi,
"jedi is an awesome autocompletion/static analysis library for Python
"https://github.com/davidhalter/jedi  

