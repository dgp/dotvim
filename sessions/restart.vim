" ~/.vim/sessions/restart.vim: Vim session script.
" Created by session.vim 1.5 on 01 March 2012 at 14:07:24.
" Open this file in Vim and run :source % to restore your session.

set guioptions=aegit
silent! set guifont=Ubuntu\ Mono\ 11
if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 1 | filetype indent on | endif
if &background != 'dark'
	set background=dark
endif
if !exists('g:colors_name') || g:colors_name != 'gummybears' | colorscheme gummybears | endif
call setqflist([{'lnum': 71, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/controllers/api/events_controller.rb', 'text': '      event.zencode'}])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Work/Artha42/audition_magic
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +104 ~/Work/Artha42/highlight_magic/app/models/event.rb
badd +13 ~/Work/Artha42/highlight_magic/app/controllers/zencoder_jobs_controller.rb
badd +111 ~/Work/Artha42/highlight_magic/app/models/clip.rb
badd +91 ~/Work/Artha42/highlight_magic/app/assets/javascripts/player/player_view.js.coffee
badd +34 ~/Work/Artha42/highlight_magic/app/assets/javascripts/templates/player/player.jst.ejs
badd +95 ~/Work/Artha42/highlight_magic/db/schema.rb
badd +29 ~/Work/Artha42/highlight_magic/app/assets/javascripts/filter.js.coffee
badd +48 ~/Work/Artha42/highlight_magic/app/assets/javascripts/events.js.coffee
badd +3 ~/Work/Artha42/highlight_magic/app/views/clips/show.html.haml
badd +98 ~/Work/Artha42/highlight_magic/app/assets/javascripts/clips.js.coffee
badd +1 ~/Work/Artha42/highlight_magic/app/models/zencoder_job.rb
badd +0 ~/Work/Artha42/highlight_magic/app/controllers/api/tags_controller.rb
badd +1 ~/Work/Artha42/highlight_magic/app/assets/javascripts/file_data.js.coffee
badd +49 Gemfile
badd +1 .rvmrc
silent! argdel *
set lines=46 columns=194
edit Gemfile
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 49 - ((40 * winheight(0) + 22) / 44)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
49
normal! 012l
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
tabnext 1
1wincmd w

" vim: ft=vim ro nowrap smc=128
