let g:python_host_prog = substitute(system('which python2'), '\n', '', 'g')
let g:python3_host_prog = substitute(system('which python3'), '\n', '', 'g')

set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc
