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
badd +103 init.lua
badd +119 lua/custom/config/keymaps.lua
badd +1 lua/kickstart/plugins/which-key.lua
badd +59 lua/kickstart/plugins/gitsigns.lua
badd +45 lua/lazy-plugins.lua
badd +1 ~/.dotfiles/config/nvim/lua/custom/plugins/init.lua
badd +7 ~/.dotfiles/config/nvim/lua/custom/plugins/treesitter.lua
badd +1 lua/kickstart/plugins/treesitter.lua
badd +18 lua/kickstart/plugins/conform.lua
badd +21 ~/.dotfiles/config/nvim/lua/custom/plugins/conform.lua
badd +3 lua/kickstart/plugins/lint.lua
badd +15 lua/custom/plugins/lint.lua
badd +39 lua/kickstart/plugins/lspconfig.lua
badd +2 lua/custom/plugins/lspconfig.lua
badd +1 after/ftplugin/help.lua
badd +32 ~/.dotfiles/config/nvim/lua/custom/plugins/term.lua
badd +3 lua/custom/plugins/autopairs.lua
badd +1 lua/custom/plugins/zk.lua
badd +10 ~/.dotfiles/config/nvim/lua/custom/plugins/md-preview.lua
badd +3 ~/.dotfiles/config/nvim/lua/custom/plugins/bullets.lua
argglobal
%argdel
set stal=2
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit after/ftplugin/help.lua
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
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
exe '1resize ' . ((&lines * 22 + 25) / 51)
exe 'vert 1resize ' . ((&columns * 115 + 115) / 231)
exe '2resize ' . ((&lines * 24 + 25) / 51)
exe 'vert 2resize ' . ((&columns * 115 + 115) / 231)
exe 'vert 3resize ' . ((&columns * 115 + 115) / 231)
argglobal
balt lua/kickstart/plugins/conform.lua
setlocal foldmethod=expr
setlocal foldexpr=nvim_treesitter#foldexpr()
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=1
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
let s:l = 41 - ((11 * winheight(0) + 11) / 22)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 41
normal! 013|
wincmd w
argglobal
enew | setl bt=help
help help.txt@en
balt after/ftplugin/help.lua
setlocal foldmethod=manual
setlocal foldexpr=nvim_treesitter#foldexpr()
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal nofoldenable
silent! normal! zE
let &fdl = &fdl
let s:l = 250 - ((10 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 250
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("lua/custom/config/keymaps.lua", ":p")) | buffer lua/custom/config/keymaps.lua | else | edit lua/custom/config/keymaps.lua | endif
if &buftype ==# 'terminal'
  silent file lua/custom/config/keymaps.lua
endif
balt lua/custom/plugins/lint.lua
setlocal foldmethod=marker
setlocal foldexpr=nvim_treesitter#foldexpr()
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
101
normal! zo
let s:l = 119 - ((118 * winheight(0) + 23) / 47)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 119
normal! 0
wincmd w
exe '1resize ' . ((&lines * 22 + 25) / 51)
exe 'vert 1resize ' . ((&columns * 115 + 115) / 231)
exe '2resize ' . ((&lines * 24 + 25) / 51)
exe 'vert 2resize ' . ((&columns * 115 + 115) / 231)
exe 'vert 3resize ' . ((&columns * 115 + 115) / 231)
tabnext
edit lua/kickstart/plugins/which-key.lua
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
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
exe 'vert 1resize ' . ((&columns * 115 + 115) / 231)
exe 'vert 2resize ' . ((&columns * 115 + 115) / 231)
argglobal
balt lua/kickstart/plugins/gitsigns.lua
setlocal foldmethod=expr
setlocal foldexpr=nvim_treesitter#foldexpr()
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=4
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
let s:l = 1 - ((0 * winheight(0) + 23) / 47)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("lua/kickstart/plugins/gitsigns.lua", ":p")) | buffer lua/kickstart/plugins/gitsigns.lua | else | edit lua/kickstart/plugins/gitsigns.lua | endif
if &buftype ==# 'terminal'
  silent file lua/kickstart/plugins/gitsigns.lua
endif
balt lua/kickstart/plugins/which-key.lua
setlocal foldmethod=expr
setlocal foldexpr=nvim_treesitter#foldexpr()
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=6
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
let s:l = 59 - ((24 * winheight(0) + 23) / 47)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 59
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 115 + 115) / 231)
exe 'vert 2resize ' . ((&columns * 115 + 115) / 231)
tabnext
edit lua/custom/plugins/zk.lua
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
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
exe 'vert 1resize ' . ((&columns * 115 + 115) / 231)
exe 'vert 2resize ' . ((&columns * 115 + 115) / 231)
argglobal
balt ~/.dotfiles/config/nvim/lua/custom/plugins/bullets.lua
setlocal foldmethod=expr
setlocal foldexpr=nvim_treesitter#foldexpr()
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=5
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
let s:l = 1 - ((0 * winheight(0) + 23) / 47)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
argglobal
if bufexists(fnamemodify("~/.dotfiles/config/nvim/lua/custom/plugins/bullets.lua", ":p")) | buffer ~/.dotfiles/config/nvim/lua/custom/plugins/bullets.lua | else | edit ~/.dotfiles/config/nvim/lua/custom/plugins/bullets.lua | endif
if &buftype ==# 'terminal'
  silent file ~/.dotfiles/config/nvim/lua/custom/plugins/bullets.lua
endif
balt lua/custom/plugins/zk.lua
setlocal foldmethod=expr
setlocal foldexpr=nvim_treesitter#foldexpr()
setlocal foldmarker={{{,}}}
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldenable
let s:l = 15 - ((14 * winheight(0) + 23) / 47)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 15
normal! 080|
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 115 + 115) / 231)
exe 'vert 2resize ' . ((&columns * 115 + 115) / 231)
tabnext 3
set stal=1
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
