set nocp
set number
set tabstop=4
set cindent shiftwidth=4
filetype plugin on
set tags+=~/.vim/systags
call plug#begin('~/.vim/plugged')
 Plug 'danilamihailov/vim-tips-wiki'
 Plug 'neoclide/coc.nvim', {'branch':'release'}
 Plug 'manasthakur/vim-commentor'
 Plug 'Shougo/deoplete.vim', { 'do': ':UpdateRemotePlugins'}
 Plug 'Shougo/neco-vim'
 Plug 'vimwiki/vimwiki'
call plug#end()
let g:deoplete#enable_at_startup = 1
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
nmap <ESC> :w <CR> :source % <CR>


