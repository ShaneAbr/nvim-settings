set nocp
set number
set tabstop=4
set cindent shiftwidth=4
filetype plugin on
set tags+=~/.vim/systags
"color scheme
runtime $XDG_CONFIG_HOME/nvim/awesome.vim


call Awesome()

call plug#begin('~/.vim/plugged')
 Plug 'danilamihailov/vim-tips-wiki'
 Plug 'neoclide/coc.nvim', {'branch':'release'}
 Plug 'manasthakur/vim-commentor'
 Plug 'Shougo/neco-vim'
 Plug 'vimwiki/vimwiki'
 Plug 'scrooloose/nerdtree'
 Plug 'fatih/vim-go'

 " telescope
 Plug 'nvim-lua/popup.nvim'
 Plug 'nvim-lua/plenary.nvim'
 Plug 'nvim-telescope/telescope.nvim'

call plug#end()

if !exists('g:necovim#complete_functions')
call plug#begin('~/.vim/plugged')
	let g:necovim#complete_functions = {}
endif
let g:necovim#complete_functions.Ref = 'ref#complete'
" Change clang binary path
"call deoplete#custom#var('clangx', 'clang_binary', '/usr/local/bin/clang')

" Change clang options
"call deoplete#custom#var('clangx', 'default_c_options', '')
"call deoplete#custom#var('clangx', 'default_cpp_options', '')

"Custom mappings
map <F12> :edit $MYVIMRC <CR>
map <C-Space> <C-W>w
map <ESC> :w<CR>:source % <CR>
map ` :NERDTree<CR>
map <UP> <C-W>+ 
map <DOWN> <C-W>-
map <LEFT> <C-W><S->>
map <RIGHT> <C-W><S-<>
map <C-J> 10j
map <C-K> 10k

