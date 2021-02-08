let g:UltiSnipsSnippetDirectories = ['~/.config/nvim/UltiSnips/', 'UltiSnips']


" looks upward for tags
set tags=./tags,tags;


" workaround for nvim git gutter onload glitch (w/o this must press cntl-c
" after starting nvim to load screen
let g:gitgutter_enabled = 0
let g:rainbow_active = 1
au VimEnter * :GitGutterEnable

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" surround

Plug 'tpope/vim-surround'

" tmux persistance of vim sessions
Plug 'tpope/vim-obsession'
Plug 'craigemery/vim-autotag'

" gitrelated


Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" Lisp?
Plug 'jpalardy/vim-slime'
Plug 'luochen1990/rainbow'

" Initialize plugin system
call plug#end()
