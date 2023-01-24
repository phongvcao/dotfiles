let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/.dotfiles/home
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
$argadd ~/.vimrc
edit ~/.dotfiles/home/vimrc
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 125 + 126) / 252)
exe 'vert 2resize ' . ((&columns * 126 + 126) / 252)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=10
setlocal fen
silent! normal! zE
let s:l = 54 - ((53 * winheight(0) + 43) / 87)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
54
normal! 017|
wincmd w
argglobal
if bufexists("~/.dotfiles/home/shell_aliases") | buffer ~/.dotfiles/home/shell_aliases | else | edit ~/.dotfiles/home/shell_aliases | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=99
setlocal fml=1
setlocal fdn=10
setlocal fen
silent! normal! zE
let s:l = 3 - ((2 * winheight(0) + 43) / 87)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
3
normal! 0
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 125 + 126) / 252)
exe 'vert 2resize ' . ((&columns * 126 + 126) / 252)
tabnext 1
badd +54 ~/.dotfiles/home/vimrc
badd +0 ~/.dotfiles/home/shell_aliases
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOScIA
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
let g:this_session = v:this_session
let g:this_obsession = v:this_session
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
