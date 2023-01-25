" vim:filetype=vim
"
" Configuration file for Neovim Compatible with both Linux & Windows
"

" Set python2 & python3 versions to be used
let g:python_host_prog = substitute(system('which python2'), '\n', '', 'g')
let g:python3_host_prog = substitute(system('which python3'), '\n', '', 'g')

" Set runtimepath for Neovim
set runtimepath^=~/.vim

" Source init.lua.vim
source $HOME/.config/nvim/init.lua.vim

" Source vimrc
source $HOME/.vimrc

" " DEBUG: for Neovim debugging purposes
" call plug#begin('~/.vim/plugged')
" " BEGIN: junegunn/fzf.vim
" Plug 'junegunn/fzf.vim'
" Plug 'junegunn/fzf', {
"             \ 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'liuchengxu/vista.vim'
" Plug 'yuki-ycino/fzf-preview.vim', { 
"             \ 'branch': 'release' }
" " END: junegunn/fzf.vim
" " BEGIN: neoclide/coc.nvim
" Plug 'neoclide/coc.nvim', {
"             \ 'branch' : 'release' }
" " END: neoclide/coc.nvim
" call plug#end()
" " END OF DEBUG: for Neovim debugging purposes
