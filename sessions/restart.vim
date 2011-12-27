" ~/.vim/sessions/restart.vim: Vim session script.
" Created by session.vim 1.4.25 on 27 December 2011 at 19:00:56.
" Open this file in Vim and run :source % to restore your session.

set guioptions=agite
silent! set guifont=
if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 1 | filetype indent on | endif
if &background != 'dark'
	set background=dark
endif
if !exists('g:colors_name') || g:colors_name != 'railscasts' | colorscheme railscasts | endif
call setqflist([{'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/views/events/new.html.haml', 'text': '(in /home/dhruvasagar/Work/Artha42/highlight_magic)'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/views/events/new.html.haml', 'text': '==  AddSportToEvents: migrating ==============================================='}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/views/events/new.html.haml', 'text': '-- change_table(:events)'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/views/events/new.html.haml', 'text': '   -> 0.5600s'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/views/events/new.html.haml', 'text': '==  AddSportToEvents: migrated (0.5601s) ======================================'}, {'lnum': 0, 'col': 0, 'valid': 1, 'vcol': 0, 'nr': -1, 'type': '', 'pattern': '', 'filename': 'app/views/events/new.html.haml', 'text': ''}])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Work/Artha42/highlight_magic
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +25 app/views/events/new.html.haml
badd +30 app/controllers/events_controller.rb
badd +32 app/models/event.rb
badd +32 app/controllers/api/events_controller.rb
badd +3 app/controllers/api/clips_controller.rb
badd +3 app/models/clip.rb
badd +10 app/controllers/api/file_parts_controller.rb
badd +7 app/models/file_part.rb
badd +3 app/views/events/index.html.haml
badd +7 Gemfile
badd +1 config/initializers/carrierwave.rb
badd +64 app/assets/javascripts/events.js.coffee
badd +2 app/models/sport.rb
badd +21 app/models/user.rb
badd +11 db/migrate/20111226094106_create_settings.rb
badd +2 app/models/setting.rb
badd +1 app/controllers/settings_controller.rb
badd +1 db/migrate/20111226095016_create_sports.rb
badd +5 db/migrate/20111221125405_create_notes.rb
badd +1 app/views/events/edit.html.haml
badd +1 db/schema.rb
badd +1 app/assets/javascripts/templates/events/new_event.jst.hamljs
badd +1 app/views/events/_sidebar.html.haml
badd +1 db/migrate/20111227025644_add_sport_id_to_events.rb
badd +16 app/assets/stylesheets/layout.css.scss
badd +25 app/assets/stylesheets/events.css.scss
badd +77 app/assets/stylesheets/projects.css.scss
badd +12 db/seeds.rb
badd +8 lib/fog_helper.rb
badd +1 ri
badd +38 app/assets/javascripts/player/player_view.js.coffee
badd +3 app/assets/javascripts/templates/player/player.jst.ejs
badd +1 app/assets/javascripts/templates/events/event.jst.ejs
badd +17 app/assets/javascripts/templates/clips/clip.jst.ejs
badd +59 app/assets/javascripts/clips.js.coffee
badd +4 app/assets/javascripts/templates/clips/event_clip.jst.ejs
badd +1 app/controllers/sessions_controller.rb
badd +9 app/controllers/companies_controller.rb
badd +52 config/routes.rb
badd +1 app/views/companies/select.html.haml
badd +14 app/assets/javascripts/companies.js.coffee
badd +7 app/models/company.rb
badd +9 db/migrate/20111227063046_create_locations.rb
badd +4 app/models/location.rb
badd +12 app/assets/javascripts/application.js
badd +9 app/assets/stylesheets/application.css
badd +0 ~/.vim/sessions/restart.vim
args ~/.vim/sessions/restart.vim
set lines=43 columns=170
edit app/assets/javascripts/events.js.coffee
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 56 + 85) / 170)
exe 'vert 2resize ' . ((&columns * 56 + 85) / 170)
exe 'vert 3resize ' . ((&columns * 56 + 85) / 170)
argglobal
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 64 - ((3 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
64
normal! 038l
wincmd w
argglobal
edit app/views/events/new.html.haml
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 99 - ((22 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
99
normal! 08l
wincmd w
argglobal
edit app/assets/stylesheets/events.css.scss
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 47 - ((36 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
47
normal! 04l
wincmd w
exe 'vert 1resize ' . ((&columns * 56 + 85) / 170)
exe 'vert 2resize ' . ((&columns * 56 + 85) / 170)
exe 'vert 3resize ' . ((&columns * 56 + 85) / 170)
tabedit ~/.vim/sessions/restart.vim
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
1argu
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
tabedit db/schema.rb
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal fdm=syntax
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=2
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
tabnext 2
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
tabnext 2
1wincmd w
if has('gui_running')
  try
    call xolox#shell#fullscreen()
    call feedkeys(":set lines=43 columns=170\<CR>")
  catch /^Vim\%((\a\+)\)\=:E117/
    " Ignore missing full-screen plug-in.
  endtry
endif

" vim: ft=vim ro nowrap smc=128
