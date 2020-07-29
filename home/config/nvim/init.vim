" vim:filetype=vim
"
" Configuration file for Neovim Compatible with both Linux & Windows
"

" Set python host program
let g:python_host_prog = substitute(system('which python2'), '\n', '', 'g')
let g:python3_host_prog = substitute(system('which python3'), '\n', '', 'g')

" Set runtimepath for Neovim
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

" Source vimrc
source ~/.vimrc
