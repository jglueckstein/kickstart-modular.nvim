let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/.dotfiles/config/nvim
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +1 lua/custom/plugins/filetree.lua
badd +259 ~/.dotfiles/local/share/nvim/lazy/lazy.nvim/doc/lazy.nvim.txt
badd +13 lua/custom/config/keymaps.lua
badd +1878 ~/.dotfiles/local/share/nvim/lazy/neo-tree.nvim/doc/neo-tree.txt
badd +1 lua/lazy-bootstrap.lua
badd +1 lua/lazy-plugins.lua
badd +6 after/ftplugin/help.lua
argglobal
%argdel
edit lua/lazy-plugins.lua
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 25 + 25) / 51)
exe 'vert 1resize ' . ((&columns * 115 + 115) / 231)
exe '2resize ' . ((&lines * 25 + 25) / 51)
exe 'vert 2resize ' . ((&columns * 115 + 115) / 231)
exe '3resize ' . ((&lines * 23 + 25) / 51)
tcd ~/.dotfiles/config/nvim
argglobal
balt ~/.dotfiles/config/nvim/after/ftplugin/help.lua
setlocal fdm=expr
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=4
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 19 - ((10 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 19
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("~/.dotfiles/config/nvim/after/ftplugin/help.lua", ":p")) | buffer ~/.dotfiles/config/nvim/after/ftplugin/help.lua | else | edit ~/.dotfiles/config/nvim/after/ftplugin/help.lua | endif
if &buftype ==# 'terminal'
  silent file ~/.dotfiles/config/nvim/after/ftplugin/help.lua
endif
balt ~/.dotfiles/config/nvim/lua/lazy-plugins.lua
setlocal fdm=expr
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 6 - ((5 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 6
normal! 042|
wincmd w
argglobal
if bufexists(fnamemodify("~/.dotfiles/local/share/nvim/lazy/lazy.nvim/doc/lazy.nvim.txt", ":p")) | buffer ~/.dotfiles/local/share/nvim/lazy/lazy.nvim/doc/lazy.nvim.txt | else | edit ~/.dotfiles/local/share/nvim/lazy/lazy.nvim/doc/lazy.nvim.txt | endif
if &buftype ==# 'terminal'
  silent file ~/.dotfiles/local/share/nvim/lazy/lazy.nvim/doc/lazy.nvim.txt
endif
balt ~/.dotfiles/config/nvim/lua/custom/plugins/filetree.lua
setlocal fdm=expr
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 368 - ((11 * winheight(0) + 11) / 23)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 368
normal! 05|
wincmd w
3wincmd w
exe '1resize ' . ((&lines * 25 + 25) / 51)
exe 'vert 1resize ' . ((&columns * 115 + 115) / 231)
exe '2resize ' . ((&lines * 25 + 25) / 51)
exe 'vert 2resize ' . ((&columns * 115 + 115) / 231)
exe '3resize ' . ((&lines * 23 + 25) / 51)
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
