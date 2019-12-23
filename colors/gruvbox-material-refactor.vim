" -----------------------------------------------------------------------------
" Name:         Gruvbox Material
" Description:  Gruvbox with Material Palette
" Author:       Sainnhepark <sainnhe@gmail.com>
" Website:      https://github.com/sainnhe/gruvbox-material/
" License:      MIT && Anti-996
" -----------------------------------------------------------------------------

" Initialization: {{{
highlight clear
if exists('syntax_on')
  syntax reset
endif

let s:t_Co = exists('&t_Co') && !empty(&t_Co) && &t_Co > 1 ? &t_Co : 2

let g:colors_name = 'gruvbox-material-refactor'
" }}}
" Configuration: {{{
let s:configuration = {}
let s:configuration.background = get(g:, 'gruvbox_material_background', 'medium')
let s:configuration.palette = get(g:, 'gruvbox_material_palette', 'material')
let s:configuration.transparent_background = get(g:, 'gruvbox_material_transparent_background', 0)
let s:configuration.disable_italic_comment = get(g:, 'gruvbox_material_disable_italic_comment', 0)
let s:configuration.enable_bold = get(g:, 'gruvbox_material_enable_bold', 0)
let s:configuration.enable_italic = get(g:, 'gruvbox_material_enable_italic', 0)
let s:configuration.visual = get(g:, 'gruvbox_material_visual', 'green background')
let s:configuration.popup_menu_selection_background = get(g:, 'gruvbox_material_popup_menu_selection_background', 'grey')
let s:configuration.current_word = get(g:, 'gruvbox_material_current_word', get(g:, 'gruvbox_material_transparent_background', 0) == 0 ? 'grey background' : 'bold')
" }}}
" Palette: {{{
if type(s:configuration.palette) == 4
  let s:palette = s:configuration.palette
else
  if s:configuration.palette ==# 'material'
    if s:configuration.background ==# 'hard'  " {{{
      if &background ==# 'dark'
        let s:palette = {
              \ 'bg0':        ['#1d2021',   '234',  'Black'],
              \ 'bg1':        ['#242525',   '235',  'DarkGrey'],
              \ 'bg2':        ['#282828',   '235',  'DarkGrey'],
              \ 'bg3':        ['#3c3836',   '237',  'DarkGrey'],
              \ 'bg4':        ['#3c3836',   '237',  'DarkGrey'],
              \ 'bg5':        ['#504945',   '239',  'DarkGrey'],
              \ 'bg_grey0':   ['#665c54',   '241',  'DarkGrey'],
              \ 'bg_grey1':   ['#a89984',   '246',  'LightGrey'],
              \ 'bg_red':     ['#ea6962',   '167',  'Red'],
              \ 'bg_green':   ['#a9b665',   '142',  'Green'],
              \ 'bg_yellow':  ['#d8a657',   '214',  'Yellow'],
              \ 'bg_green1':  ['#32361a',   '22',   'DarkGreen'],
              \ 'bg_green2':  ['#333e34',   '22',   'DarkGreen'],
              \ 'bg_red1':    ['#3c1f1e',   '52',   'DarkRed'],
              \ 'bg_red2':    ['#442e2d',   '52',   'DarkRed'],
              \ 'bg_blue1':   ['#0d3138',   '17',   'DarkBlue'],
              \ 'bg_blue2':   ['#2e3b3b',   '17',   'DarkBlue'],
              \ 'fg0':        ['#d4be98',   '223',  'White'],
              \ 'fg1':        ['#ddc7a1',   '223',  'White'],
              \ 'red':        ['#ea6962',   '167',  'Red'],
              \ 'orange':     ['#e78a4e',   '208',  'DarkYellow'],
              \ 'yellow':     ['#d8a657',   '214',  'Yellow'],
              \ 'green':      ['#a9b665',   '142',  'Green'],
              \ 'aqua':       ['#89b482',   '108',  'Cyan'],
              \ 'blue':       ['#7daea3',   '109',  'Blue'],
              \ 'purple':     ['#d3869b',   '175',  'Magenta'],
              \ 'grey':       ['#928374',   '245',  'LightGrey'],
              \ 'none':       ['NONE',      'NONE', 'NONE']
              \ }
      else
        let s:palette = {
              \ 'bg0':        ['#f9f5d7',   '230',  'White'],
              \ 'bg1':        ['#f7f0ce',   '229',  'LightGrey'],
              \ 'bg2':        ['#f3eac7',   '229',  'LightGrey'],
              \ 'bg3':        ['#f2e5bc',   '228',  'LightGrey'],
              \ 'bg4':        ['#ebdbb2',   '223',  'LightGrey'],
              \ 'bg5':        ['#ebdbb2',   '223',  'LightGrey'],
              \ 'bg_grey0':   ['#d5c4a1',   '250',  'LightGrey'],
              \ 'bg_grey1':   ['#7c6f64',   '243',  'DarkGrey'],
              \ 'bg_red':     ['#ae5858',   '88',   'Red'],
              \ 'bg_green':   ['#6f8352',   '100',  'Green'],
              \ 'bg_yellow':  ['#a96b2c',   '130',  'Yellow'],
              \ 'bg_green1':  ['#e3f6b4',   '194',  'LightGreen'],
              \ 'bg_green2':  ['#dde5c2',   '194',  'LightGreen'],
              \ 'bg_red1':    ['#ffdbcc',   '217',  'LightRed'],
              \ 'bg_red2':    ['#f6d2ba',   '217',  'LightRed'],
              \ 'bg_blue1':   ['#cff1f6',   '117',  'LightBlue'],
              \ 'bg_blue2':   ['#d9e1cc',   '117',  'LightBlue'],
              \ 'fg0':        ['#654735',   '237',  'Black'],
              \ 'fg1':        ['#4f3829',   '237',  'Black'],
              \ 'red':        ['#c14a4a',   '88',   'Red'],
              \ 'orange':     ['#c35e0a',   '130',  'DarkYellow'],
              \ 'yellow':     ['#b47109',   '136',  'Yellow'],
              \ 'green':      ['#6c782e',   '100',  'Green'],
              \ 'aqua':       ['#4c7a5d',   '165',  'Cyan'],
              \ 'blue':       ['#45707a',   '24',   'Blue'],
              \ 'purple':     ['#945e80',   '96',   'Magenta'],
              \ 'grey':       ['#928374',   '245',  'DarkGrey'],
              \ 'none':       ['NONE',      'NONE', 'NONE']
              \ }
      endif  " }}}
    elseif s:configuration.background ==# 'medium'  " {{{
      if &background ==# 'dark'
        let s:palette = {
              \ 'bg0':        ['#282828',   '235',  'Black'],
              \ 'bg1':        ['#2e2d2d',   '236',  'DarkGrey'],
              \ 'bg2':        ['#32302f',   '236',  'DarkGrey'],
              \ 'bg3':        ['#45403d',   '237',  'DarkGrey'],
              \ 'bg4':        ['#45403d',   '237',  'DarkGrey'],
              \ 'bg5':        ['#5a524c',   '239',  'DarkGrey'],
              \ 'bg_grey0':   ['#7c6f64',   '243',  'DarkGrey'],
              \ 'bg_grey1':   ['#a89984',   '246',  'LightGrey'],
              \ 'bg_red':     ['#ea6962',   '167',  'Red'],
              \ 'bg_green':   ['#a9b665',   '142',  'Green'],
              \ 'bg_yellow':  ['#d8a657',   '214',  'Yellow'],
              \ 'bg_green1':  ['#34381b',   '22',   'DarkGreen'],
              \ 'bg_green2':  ['#3b4439',   '22',   'DarkGreen'],
              \ 'bg_red1':    ['#402120',   '52',   'DarkRed'],
              \ 'bg_red2':    ['#4c3432',   '52',   'DarkRed'],
              \ 'bg_blue1':   ['#0e363e',   '17',   'DarkBlue'],
              \ 'bg_blue2':   ['#374141',   '17',   'DarkBlue'],
              \ 'fg0':        ['#d4be98',   '223',  'White'],
              \ 'fg1':        ['#ddc7a1',   '223',  'White'],
              \ 'red':        ['#ea6962',   '167',  'Red'],
              \ 'orange':     ['#e78a4e',   '208',  'DarkYellow'],
              \ 'yellow':     ['#d8a657',   '214',  'Yellow'],
              \ 'green':      ['#a9b665',   '142',  'Green'],
              \ 'aqua':       ['#89b482',   '108',  'Cyan'],
              \ 'blue':       ['#7daea3',   '109',  'Blue'],
              \ 'purple':     ['#d3869b',   '175',  'Magenta'],
              \ 'grey':       ['#928374',   '245',  'LightGrey'],
              \ 'none':       ['NONE',      'NONE', 'NONE']
              \ }
      else
        let s:palette = {
              \ 'bg0':        ['#fbf1c7',   '229',  'White'],
              \ 'bg1':        ['#f6ebc1',   '228',  'LightGrey'],
              \ 'bg2':        ['#f2e5bc',   '228',  'LightGrey'],
              \ 'bg3':        ['#ebdbb2',   '223',  'LightGrey'],
              \ 'bg4':        ['#e0cfa9',   '223',  'LightGrey'],
              \ 'bg5':        ['#ddccab',   '250',  'LightGrey'],
              \ 'bg_grey0':   ['#bdae93',   '248',  'LightGrey'],
              \ 'bg_grey1':   ['#7c6f64',   '243',  'DarkGrey'],
              \ 'bg_red':     ['#ae5858',   '88',   'Red'],
              \ 'bg_green':   ['#6f8352',   '100',  'Green'],
              \ 'bg_yellow':  ['#a96b2c',   '130',  'Yellow'],
              \ 'bg_green1':  ['#daf0a7',   '194',  'LightGreen'],
              \ 'bg_green2':  ['#dee2b6',   '194',  'LightGreen'],
              \ 'bg_red1':    ['#fbcdb9',   '217',  'LightRed'],
              \ 'bg_red2':    ['#f7cfae',   '217',  'LightRed'],
              \ 'bg_blue1':   ['#c6eaf0',   '117',  'LightBlue'],
              \ 'bg_blue2':   ['#dadec0',   '117',  'LightBlue'],
              \ 'fg0':        ['#654735',   '237',  'Black'],
              \ 'fg1':        ['#4f3829',   '237',  'Black'],
              \ 'red':        ['#c14a4a',   '88',   'Red'],
              \ 'orange':     ['#c35e0a',   '130',  'DarkYellow'],
              \ 'yellow':     ['#b47109',   '136',  'Yellow'],
              \ 'green':      ['#6c782e',   '100',  'Green'],
              \ 'aqua':       ['#4c7a5d',   '165',  'Cyan'],
              \ 'blue':       ['#45707a',   '24',   'Blue'],
              \ 'purple':     ['#945e80',   '96',   'Magenta'],
              \ 'grey':       ['#928374',   '245',  'DarkGrey'],
              \ 'none':       ['NONE',      'NONE', 'NONE']
              \ }
      endif  " }}}
    elseif s:configuration.background ==# 'soft'  " {{{
      if &background ==# 'dark'
        let s:palette = {
              \ 'bg0':        ['#32302f',   '236',  'Black'],
              \ 'bg1':        ['#383533',   '237',  'DarkGrey'],
              \ 'bg2':        ['#3c3836',   '237',  'DarkGrey'],
              \ 'bg3':        ['#504945',   '239',  'DarkGrey'],
              \ 'bg4':        ['#504945',   '239',  'DarkGrey'],
              \ 'bg5':        ['#665c54',   '241',  'DarkGrey'],
              \ 'bg_grey0':   ['#7c6f64',   '243',  'DarkGrey'],
              \ 'bg_grey1':   ['#a89984',   '246',  'LightGrey'],
              \ 'bg_red':     ['#ea6962',   '167',  'Red'],
              \ 'bg_green':   ['#a9b665',   '142',  'Green'],
              \ 'bg_yellow':  ['#d8a657',   '214',  'Yellow'],
              \ 'bg_green1':  ['#32361a',   '22',   'DarkGreen'],
              \ 'bg_green2':  ['#333e34',   '22',   'DarkGreen'],
              \ 'bg_red1':    ['#3c1f1e',   '52',   'DarkRed'],
              \ 'bg_red2':    ['#442e2d',   '52',   'DarkRed'],
              \ 'bg_blue1':   ['#0d3138',   '17',   'DarkBlue'],
              \ 'bg_blue2':   ['#2e3b3b',   '17',   'DarkBlue'],
              \ 'fg0':        ['#d4be98',   '223',  'White'],
              \ 'fg1':        ['#ddc7a1',   '223',  'White'],
              \ 'red':        ['#ea6962',   '167',  'Red'],
              \ 'orange':     ['#e78a4e',   '208',  'DarkYellow'],
              \ 'yellow':     ['#d8a657',   '214',  'Yellow'],
              \ 'green':      ['#a9b665',   '142',  'Green'],
              \ 'aqua':       ['#89b482',   '108',  'Cyan'],
              \ 'blue':       ['#7daea3',   '109',  'Blue'],
              \ 'purple':     ['#d3869b',   '175',  'Magenta'],
              \ 'grey':       ['#928374',   '245',  'LightGrey'],
              \ 'none':       ['NONE',      'NONE', 'NONE']
              \ }
      else
        let s:palette = {
              \ 'bg0':        ['#f2e5bc',   '228',  'White'],
              \ 'bg1':        ['#efe0b7',   '223',  'LightGrey'],
              \ 'bg2':        ['#ebdbb2',   '228',  'LightGrey'],
              \ 'bg3':        ['#e0cfa9',   '223',  'LightGrey'],
              \ 'bg4':        ['#d5c4a1',   '250',  'LightGrey'],
              \ 'bg5':        ['#d5c4a1',   '250',  'LightGrey'],
              \ 'bg_grey0':   ['#a89984',   '246',  'LightGrey'],
              \ 'bg_grey1':   ['#7c6f64',   '243',  'DarkGrey'],
              \ 'bg_red':     ['#ae5858',   '88',   'Red'],
              \ 'bg_green':   ['#6f8352',   '100',  'Green'],
              \ 'bg_yellow':  ['#a96b2c',   '130',  'Yellow'],
              \ 'bg_green1':  ['#d1ea9b',   '194',  'LightGreen'],
              \ 'bg_green2':  ['#d7d9ae',   '194',  'LightGreen'],
              \ 'bg_red1':    ['#fbcab5',   '217',  'LightRed'],
              \ 'bg_red2':    ['#f0c6a6',   '217',  'LightRed'],
              \ 'bg_blue1':   ['#bee4ea',   '117',  'LightBlue'],
              \ 'bg_blue2':   ['#d3d5b8',   '117',  'LightBlue'],
              \ 'fg0':        ['#654735',   '237',  'Black'],
              \ 'fg1':        ['#4f3829',   '237',  'Black'],
              \ 'red':        ['#c14a4a',   '88',   'Red'],
              \ 'orange':     ['#c35e0a',   '130',  'DarkYellow'],
              \ 'yellow':     ['#b47109',   '136',  'Yellow'],
              \ 'green':      ['#6c782e',   '100',  'Green'],
              \ 'aqua':       ['#4c7a5d',   '165',  'Cyan'],
              \ 'blue':       ['#45707a',   '24',   'Blue'],
              \ 'purple':     ['#945e80',   '96',   'Magenta'],
              \ 'grey':       ['#928374',   '245',  'DarkGrey'],
              \ 'none':       ['NONE',      'NONE', 'NONE']
              \ }
      endif
    endif  " }}}
  elseif s:configuration.palette ==# 'original'
    if s:configuration.background ==# 'hard'  " {{{
      if &background ==# 'dark'
        let s:palette = {
              \ 'bg0':        ['#1d2021',   '234',  'Black'],
              \ 'bg1':        ['#242525',   '235',  'DarkGrey'],
              \ 'bg2':        ['#282828',   '235',  'DarkGrey'],
              \ 'bg3':        ['#3c3836',   '237',  'DarkGrey'],
              \ 'bg4':        ['#3c3836',   '237',  'DarkGrey'],
              \ 'bg5':        ['#504945',   '239',  'DarkGrey'],
              \ 'bg_grey0':   ['#665c54',   '241',  'DarkGrey'],
              \ 'bg_grey1':   ['#a89984',   '246',  'LightGrey'],
              \ 'bg_red':     ['#cc241d',   '124',  'Red'],
              \ 'bg_green':   ['#98971a',   '106',  'Green'],
              \ 'bg_yellow':  ['#d79921',   '172',  'Yellow'],
              \ 'bg_green1':  ['#32361a',   '22',   'DarkGreen'],
              \ 'bg_green2':  ['#333e34',   '22',   'DarkGreen'],
              \ 'bg_red1':    ['#3c1f1e',   '52',   'DarkRed'],
              \ 'bg_red2':    ['#442e2d',   '52',   'DarkRed'],
              \ 'bg_blue1':   ['#0d3138',   '17',   'DarkBlue'],
              \ 'bg_blue2':   ['#2e3b3b',   '17',   'DarkBlue'],
              \ 'fg0':        ['#ebdbb2',   '223',  'White'],
              \ 'fg1':        ['#ebdbb2',   '223',  'White'],
              \ 'red':        ['#fb4934',   '167',  'Red'],
              \ 'orange':     ['#fe8019',   '208',  'DarkYellow'],
              \ 'yellow':     ['#fabd2f',   '214',  'Yellow'],
              \ 'green':      ['#b8bb26',   '142',  'Green'],
              \ 'aqua':       ['#8ec07c',   '108',  'Cyan'],
              \ 'blue':       ['#83a598',   '109',  'Blue'],
              \ 'purple':     ['#d3869b',   '175',  'Magenta'],
              \ 'grey':       ['#928374',   '245',  'LightGrey'],
              \ 'none':       ['NONE',      'NONE', 'NONE']
              \ }
      else
        let s:palette = {
              \ 'bg0':        ['#f9f5d7',   '230',  'White'],
              \ 'bg1':        ['#f7f0ce',   '229',  'LightGrey'],
              \ 'bg2':        ['#f3eac7',   '229',  'LightGrey'],
              \ 'bg3':        ['#f2e5bc',   '228',  'LightGrey'],
              \ 'bg4':        ['#ebdbb2',   '223',  'LightGrey'],
              \ 'bg5':        ['#ebdbb2',   '223',  'LightGrey'],
              \ 'bg_grey0':   ['#d5c4a1',   '250',  'LightGrey'],
              \ 'bg_grey1':   ['#7c6f64',   '243',  'DarkGrey'],
              \ 'bg_red':     ['#cc241d',   '124',  'Red'],
              \ 'bg_green':   ['#98971a',   '106',  'Green'],
              \ 'bg_yellow':  ['#d79921',   '172',  'Yellow'],
              \ 'bg_green1':  ['#e3f6b4',   '194',  'LightGreen'],
              \ 'bg_green2':  ['#dde5c2',   '194',  'LightGreen'],
              \ 'bg_red1':    ['#ffdbcc',   '217',  'LightRed'],
              \ 'bg_red2':    ['#f6d2ba',   '217',  'LightRed'],
              \ 'bg_blue1':   ['#cff1f6',   '117',  'LightBlue'],
              \ 'bg_blue2':   ['#d9e1cc',   '117',  'LightBlue'],
              \ 'fg0':        ['#3c3836',   '237',  'Black'],
              \ 'fg1':        ['#3c3836',   '237',  'Black'],
              \ 'red':        ['#9d0006',   '88',   'Red'],
              \ 'orange':     ['#af3a03',   '130',  'DarkYellow'],
              \ 'yellow':     ['#b57614',   '136',  'Yellow'],
              \ 'green':      ['#79740e',   '100',  'Green'],
              \ 'aqua':       ['#427b58',   '165',  'Cyan'],
              \ 'blue':       ['#076678',   '24',   'Blue'],
              \ 'purple':     ['#8f3f71',   '96',   'Magenta'],
              \ 'grey':       ['#928374',   '245',  'DarkGrey'],
              \ 'none':       ['NONE',      'NONE', 'NONE']
              \ }
      endif  " }}}
    elseif s:configuration.background ==# 'medium'  " {{{
      if &background ==# 'dark'
        let s:palette = {
              \ 'bg0':        ['#282828',   '235',  'Black'],
              \ 'bg1':        ['#2e2d2d',   '236',  'DarkGrey'],
              \ 'bg2':        ['#32302f',   '236',  'DarkGrey'],
              \ 'bg3':        ['#45403d',   '237',  'DarkGrey'],
              \ 'bg4':        ['#45403d',   '237',  'DarkGrey'],
              \ 'bg5':        ['#5a524c',   '239',  'DarkGrey'],
              \ 'bg_grey0':   ['#7c6f64',   '243',  'DarkGrey'],
              \ 'bg_grey1':   ['#a89984',   '246',  'LightGrey'],
              \ 'bg_red':     ['#cc241d',   '124',  'Red'],
              \ 'bg_green':   ['#98971a',   '106',  'Green'],
              \ 'bg_yellow':  ['#d79921',   '172',  'Yellow'],
              \ 'bg_green1':  ['#34381b',   '22',   'DarkGreen'],
              \ 'bg_green2':  ['#3b4439',   '22',   'DarkGreen'],
              \ 'bg_red1':    ['#402120',   '52',   'DarkRed'],
              \ 'bg_red2':    ['#4c3432',   '52',   'DarkRed'],
              \ 'bg_blue1':   ['#0e363e',   '17',   'DarkBlue'],
              \ 'bg_blue2':   ['#374141',   '17',   'DarkBlue'],
              \ 'fg0':        ['#ebdbb2',   '223',  'White'],
              \ 'fg1':        ['#ebdbb2',   '223',  'White'],
              \ 'red':        ['#fb4934',   '167',  'Red'],
              \ 'orange':     ['#fe8019',   '208',  'DarkYellow'],
              \ 'yellow':     ['#fabd2f',   '214',  'Yellow'],
              \ 'green':      ['#b8bb26',   '142',  'Green'],
              \ 'aqua':       ['#8ec07c',   '108',  'Cyan'],
              \ 'blue':       ['#83a598',   '109',  'Blue'],
              \ 'purple':     ['#d3869b',   '175',  'Magenta'],
              \ 'grey':       ['#928374',   '245',  'LightGrey'],
              \ 'none':       ['NONE',      'NONE', 'NONE']
              \ }
      else
        let s:palette = {
              \ 'bg0':        ['#fbf1c7',   '229',  'White'],
              \ 'bg1':        ['#f6ebc1',   '228',  'LightGrey'],
              \ 'bg2':        ['#f2e5bc',   '228',  'LightGrey'],
              \ 'bg3':        ['#ebdbb2',   '223',  'LightGrey'],
              \ 'bg4':        ['#e0cfa9',   '223',  'LightGrey'],
              \ 'bg5':        ['#ddccab',   '250',  'LightGrey'],
              \ 'bg_grey0':   ['#bdae93',   '248',  'LightGrey'],
              \ 'bg_grey1':   ['#7c6f64',   '243',  'DarkGrey'],
              \ 'bg_red':     ['#cc241d',   '124',  'Red'],
              \ 'bg_green':   ['#98971a',   '106',  'Green'],
              \ 'bg_yellow':  ['#d79921',   '172',  'Yellow'],
              \ 'bg_green1':  ['#daf0a7',   '194',  'LightGreen'],
              \ 'bg_green2':  ['#dee2b6',   '194',  'LightGreen'],
              \ 'bg_red1':    ['#fbcdb9',   '217',  'LightRed'],
              \ 'bg_red2':    ['#f7cfae',   '217',  'LightRed'],
              \ 'bg_blue1':   ['#c6eaf0',   '117',  'LightBlue'],
              \ 'bg_blue2':   ['#dadec0',   '117',  'LightBlue'],
              \ 'fg0':        ['#3c3836',   '237',  'Black'],
              \ 'fg1':        ['#3c3836',   '237',  'Black'],
              \ 'red':        ['#9d0006',   '88',   'Red'],
              \ 'orange':     ['#af3a03',   '130',  'DarkYellow'],
              \ 'yellow':     ['#b57614',   '136',  'Yellow'],
              \ 'green':      ['#79740e',   '100',  'Green'],
              \ 'aqua':       ['#427b58',   '165',  'Cyan'],
              \ 'blue':       ['#076678',   '24',   'Blue'],
              \ 'purple':     ['#8f3f71',   '96',   'Magenta'],
              \ 'grey':       ['#928374',   '245',  'DarkGrey'],
              \ 'none':       ['NONE',      'NONE', 'NONE']
              \ }
      endif  " }}}
    elseif s:configuration.background ==# 'soft'  " {{{
      if &background ==# 'dark'
        let s:palette = {
              \ 'bg0':        ['#32302f',   '236',  'Black'],
              \ 'bg1':        ['#383533',   '237',  'DarkGrey'],
              \ 'bg2':        ['#3c3836',   '237',  'DarkGrey'],
              \ 'bg3':        ['#504945',   '239',  'DarkGrey'],
              \ 'bg4':        ['#504945',   '239',  'DarkGrey'],
              \ 'bg5':        ['#665c54',   '241',  'DarkGrey'],
              \ 'bg_grey0':   ['#7c6f64',   '243',  'DarkGrey'],
              \ 'bg_grey1':   ['#a89984',   '246',  'LightGrey'],
              \ 'bg_red':     ['#cc241d',   '124',  'Red'],
              \ 'bg_green':   ['#98971a',   '106',  'Green'],
              \ 'bg_yellow':  ['#d79921',   '172',  'Yellow'],
              \ 'bg_green1':  ['#32361a',   '22',   'DarkGreen'],
              \ 'bg_green2':  ['#333e34',   '22',   'DarkGreen'],
              \ 'bg_red1':    ['#3c1f1e',   '52',   'DarkRed'],
              \ 'bg_red2':    ['#442e2d',   '52',   'DarkRed'],
              \ 'bg_blue1':   ['#0d3138',   '17',   'DarkBlue'],
              \ 'bg_blue2':   ['#2e3b3b',   '17',   'DarkBlue'],
              \ 'fg0':        ['#ebdbb2',   '223',  'White'],
              \ 'fg1':        ['#ebdbb2',   '223',  'White'],
              \ 'red':        ['#fb4934',   '167',  'Red'],
              \ 'orange':     ['#fe8019',   '208',  'DarkYellow'],
              \ 'yellow':     ['#fabd2f',   '214',  'Yellow'],
              \ 'green':      ['#b8bb26',   '142',  'Green'],
              \ 'aqua':       ['#8ec07c',   '108',  'Cyan'],
              \ 'blue':       ['#83a598',   '109',  'Blue'],
              \ 'purple':     ['#d3869b',   '175',  'Magenta'],
              \ 'grey':       ['#928374',   '245',  'LightGrey'],
              \ 'none':       ['NONE',      'NONE', 'NONE']
              \ }
      else
        let s:palette = {
              \ 'bg0':        ['#f2e5bc',   '228',  'White'],
              \ 'bg1':        ['#efe0b7',   '223',  'LightGrey'],
              \ 'bg2':        ['#ebdbb2',   '228',  'LightGrey'],
              \ 'bg3':        ['#e0cfa9',   '223',  'LightGrey'],
              \ 'bg4':        ['#d5c4a1',   '250',  'LightGrey'],
              \ 'bg5':        ['#d5c4a1',   '250',  'LightGrey'],
              \ 'bg_grey0':   ['#a89984',   '246',  'LightGrey'],
              \ 'bg_grey1':   ['#7c6f64',   '243',  'DarkGrey'],
              \ 'bg_red':     ['#cc241d',   '124',  'Red'],
              \ 'bg_green':   ['#98971a',   '106',  'Green'],
              \ 'bg_yellow':  ['#d79921',   '172',  'Yellow'],
              \ 'bg_green1':  ['#d1ea9b',   '194',  'LightGreen'],
              \ 'bg_green2':  ['#d7d9ae',   '194',  'LightGreen'],
              \ 'bg_red1':    ['#fbcab5',   '217',  'LightRed'],
              \ 'bg_red2':    ['#f0c6a6',   '217',  'LightRed'],
              \ 'bg_blue1':   ['#bee4ea',   '117',  'LightBlue'],
              \ 'bg_blue2':   ['#d3d5b8',   '117',  'LightBlue'],
              \ 'fg0':        ['#3c3836',   '237',  'Black'],
              \ 'fg1':        ['#3c3836',   '237',  'Black'],
              \ 'red':        ['#9d0006',   '88',   'Red'],
              \ 'orange':     ['#af3a03',   '130',  'DarkYellow'],
              \ 'yellow':     ['#b57614',   '136',  'Yellow'],
              \ 'green':      ['#79740e',   '100',  'Green'],
              \ 'aqua':       ['#427b58',   '165',  'Cyan'],
              \ 'blue':       ['#076678',   '24',   'Blue'],
              \ 'purple':     ['#8f3f71',   '96',   'Magenta'],
              \ 'grey':       ['#928374',   '245',  'DarkGrey'],
              \ 'none':       ['NONE',      'NONE', 'NONE']
              \ }
      endif
    endif  " }}}
  endif
endif
" }}}
" Function: {{{
" call s:HL(group, foreground, background)
" call s:HL(group, foreground, background, gui, guisp)
"
" E.g.:
" call s:HL('Normal', s:palette.fg0, s:palette.bg0)

if (has('termguicolors') && &termguicolors) || has('gui_running')  " guifg guibg gui cterm guisp
  function! s:HL(group, fg, bg, ...)
    let hl_string = [
          \ 'highlight', a:group,
          \ 'guifg=' . a:fg[0],
          \ 'guibg=' . a:bg[0],
          \ ]
    if a:0 >= 1
      if a:1 ==# 'undercurl'
        call add(hl_string, 'gui=undercurl')
        call add(hl_string, 'cterm=underline')
      else
        call add(hl_string, 'gui=' . a:1)
        call add(hl_string, 'cterm=' . a:1)
      endif
    else
      call add(hl_string, 'gui=NONE')
      call add(hl_string, 'cterm=NONE')
    endif
    if a:0 >= 2
      call add(hl_string, 'guisp=' . a:2[0])
    endif
    execute join(hl_string, ' ')
  endfunction
elseif s:t_Co >= 256  " ctermfg ctermbg cterm
  function! s:HL(group, fg, bg, ...)
    let hl_string = [
          \ 'highlight', a:group,
          \ 'ctermfg=' . a:fg[1],
          \ 'ctermbg=' . a:bg[1],
          \ ]
    if a:0 >= 1
      if a:1 ==# 'undercurl'
        call add(hl_string, 'cterm=underline')
      else
        call add(hl_string, 'cterm=' . a:1)
      endif
    else
      call add(hl_string, 'cterm=NONE')
    endif
    execute join(hl_string, ' ')
  endfunction
else  " ctermfg ctermbg cterm
  function! s:HL(group, fg, bg, ...)
    let hl_string = [
          \ 'highlight', a:group,
          \ 'ctermfg=' . a:fg[2],
          \ 'ctermbg=' . a:bg[2],
          \ ]
    if a:0 >= 1
      if a:1 ==# 'undercurl'
        call add(hl_string, 'cterm=underline')
      else
        call add(hl_string, 'cterm=' . a:1)
      endif
    else
      call add(hl_string, 'cterm=NONE')
    endif
    execute join(hl_string, ' ')
  endfunction
endif
" }}}

" Common Highlight Groups: {{{
" UI: {{{
if s:configuration.transparent_background
  call s:HL('Normal', s:palette.fg0, s:palette.none)
  call s:HL('Terminal', s:palette.fg0, s:palette.none)
  call s:HL('EndOfBuffer', s:palette.bg0, s:palette.none)
  call s:HL('FoldColumn', s:palette.grey, s:palette.none)
  call s:HL('Folded', s:palette.grey, s:palette.none)
  call s:HL('SignColumn', s:palette.fg0, s:palette.none)
  call s:HL('IncSearch', s:palette.none, s:palette.none, 'reverse,bold,underline')
  call s:HL('Search', s:palette.none, s:palette.none, 'reverse')
else
  call s:HL('Normal', s:palette.fg0, s:palette.bg0)
  call s:HL('Terminal', s:palette.fg0, s:palette.bg0)
  call s:HL('EndOfBuffer', s:palette.bg0, s:palette.bg0)
  call s:HL('FoldColumn', s:palette.grey, s:palette.bg2)
  call s:HL('Folded', s:palette.grey, s:palette.bg2)
  call s:HL('SignColumn', s:palette.fg0, s:palette.bg2)
  call s:HL('IncSearch', s:palette.none, s:palette.none, 'reverse')
  call s:HL('Search', s:palette.none, s:palette.bg_blue2)
endif
call s:HL('ColorColumn', s:palette.none, s:palette.bg2)
call s:HL('Conceal', s:palette.grey, s:palette.none)
call s:HL('Cursor', s:palette.none, s:palette.none, 'reverse')
call s:HL('lCursor', s:palette.none, s:palette.none, 'reverse')
call s:HL('CursorColumn', s:palette.none, s:palette.bg1)
call s:HL('CursorLine', s:palette.none, s:palette.bg1)
call s:HL('LineNr', s:palette.bg_grey0, s:palette.none)
if &relativenumber == 1 && &cursorline == 0
  call s:HL('CursorLineNr', s:palette.bg_grey1, s:palette.none)
else
  call s:HL('CursorLineNr', s:palette.bg_grey1, s:palette.bg1)
endif
call s:HL('DiffAdd', s:palette.none, s:palette.bg_green1)
call s:HL('DiffChange', s:palette.none, s:palette.bg_blue1)
call s:HL('DiffDelete', s:palette.none, s:palette.bg_red1)
call s:HL('DiffText', s:palette.none, s:palette.none, 'reverse')
call s:HL('Directory', s:palette.green, s:palette.none)
call s:HL('ErrorMsg', s:palette.red, s:palette.none, 'bold,underline')
call s:HL('WarningMsg', s:palette.yellow, s:palette.none, 'bold')
call s:HL('ModeMsg', s:palette.fg0, s:palette.none, 'bold')
call s:HL('MoreMsg', s:palette.yellow, s:palette.none, 'bold')
call s:HL('MatchParen', s:palette.none, s:palette.bg4)
call s:HL('NonText', s:palette.grey, s:palette.none)
call s:HL('Pmenu', s:palette.fg1, s:palette.bg3)
call s:HL('PmenuSbar', s:palette.none, s:palette.bg3)
if s:configuration.popup_menu_selection_background ==# 'grey'
  call s:HL('PmenuSel', s:palette.bg3, s:palette.bg_grey1)
  call s:HL('WildMenu', s:palette.bg3, s:palette.bg_grey1)
elseif s:configuration.popup_menu_selection_background ==# 'green'
  call s:HL('PmenuSel', s:palette.bg3, s:palette.bg_green)
  call s:HL('WildMenu', s:palette.bg3, s:palette.bg_green)
end
call s:HL('PmenuThumb', s:palette.none, s:palette.bg_grey0)
call s:HL('Question', s:palette.yellow, s:palette.none)
call s:HL('SpellBad', s:palette.red, s:palette.none, 'undercurl', s:palette.red)
call s:HL('SpellCap', s:palette.blue, s:palette.none, 'undercurl', s:palette.blue)
call s:HL('SpellLocal', s:palette.aqua, s:palette.none, 'undercurl', s:palette.aqua)
call s:HL('SpellRare', s:palette.purple, s:palette.none, 'undercurl', s:palette.purple)
call s:HL('StatusLine', s:palette.fg1, s:palette.bg5)
call s:HL('StatusLineTerm', s:palette.fg1, s:palette.bg5)
call s:HL('StatusLineNC', s:palette.grey, s:palette.bg2)
call s:HL('StatusLineTermNC', s:palette.grey, s:palette.bg2)
call s:HL('TabLine', s:palette.fg1, s:palette.bg5)
call s:HL('TabLineFill', s:palette.fg0, s:palette.bg2)
call s:HL('TabLineSel', s:palette.bg0, s:palette.bg_grey1)
call s:HL('VertSplit', s:palette.bg5, s:palette.none)
if s:configuration.visual ==# 'green background'
  call s:HL('Visual', s:palette.none, s:palette.bg_green2)
  call s:HL('VisualNOS', s:palette.none, s:palette.bg_green2)
elseif s:configuration.visual ==# 'blue background'
  call s:HL('Visual', s:palette.none, s:palette.bg_blue2)
  call s:HL('VisualNOS', s:palette.none, s:palette.bg_blue2)
elseif s:configuration.visual ==# 'red background'
  call s:HL('Visual', s:palette.none, s:palette.bg_red2)
  call s:HL('VisualNOS', s:palette.none, s:palette.bg_red2)
elseif s:configuration.visual ==# 'reverse'
  call s:HL('Visual', s:palette.none, s:palette.none, 'reverse')
  call s:HL('VisualNOS', s:palette.none, s:palette.none, 'reverse')
endif
call s:HL('CursorIM', s:palette.none, s:palette.none, 'reverse')
call s:HL('ToolbarLine', s:palette.none, s:palette.bg2)
call s:HL('ToolbarButton', s:palette.fg1, s:palette.bg5, 'bold')
call s:HL('QuickFixLine', s:palette.yellow, s:palette.none, 'reverse')
call s:HL('Debug', s:palette.orange, s:palette.none)
" }}}
" Syntax: {{{
call s:HL('Boolean', s:palette.purple, s:palette.none)
call s:HL('Number', s:palette.purple, s:palette.none)
call s:HL('Float', s:palette.purple, s:palette.none)
if s:configuration.enable_italic
  call s:HL('PreProc', s:palette.purple, s:palette.none, 'italic')
  call s:HL('PreCondit', s:palette.purple, s:palette.none, 'italic')
  call s:HL('Include', s:palette.purple, s:palette.none, 'italic')
  call s:HL('Define', s:palette.purple, s:palette.none, 'italic')
  call s:HL('Conditional', s:palette.red, s:palette.none, 'italic')
  call s:HL('Repeat', s:palette.red, s:palette.none, 'italic')
  call s:HL('Keyword', s:palette.red, s:palette.none, 'italic')
  call s:HL('Typedef', s:palette.red, s:palette.none, 'italic')
  call s:HL('Exception', s:palette.red, s:palette.none, 'italic')
  call s:HL('Statement', s:palette.red, s:palette.none, 'italic')
else
  call s:HL('PreProc', s:palette.purple, s:palette.none)
  call s:HL('PreCondit', s:palette.purple, s:palette.none)
  call s:HL('Include', s:palette.purple, s:palette.none)
  call s:HL('Define', s:palette.purple, s:palette.none)
  call s:HL('Conditional', s:palette.red, s:palette.none)
  call s:HL('Repeat', s:palette.red, s:palette.none)
  call s:HL('Keyword', s:palette.red, s:palette.none)
  call s:HL('Typedef', s:palette.red, s:palette.none)
  call s:HL('Exception', s:palette.red, s:palette.none)
  call s:HL('Statement', s:palette.red, s:palette.none)
endif
call s:HL('Error', s:palette.red, s:palette.none)
call s:HL('StorageClass', s:palette.orange, s:palette.none)
call s:HL('Tag', s:palette.orange, s:palette.none)
call s:HL('Label', s:palette.orange, s:palette.none)
call s:HL('Structure', s:palette.orange, s:palette.none)
call s:HL('Operator', s:palette.orange, s:palette.none)
call s:HL('Title', s:palette.orange, s:palette.none, 'bold')
call s:HL('Special', s:palette.yellow, s:palette.none)
call s:HL('SpecialChar', s:palette.yellow, s:palette.none)
call s:HL('Type', s:palette.yellow, s:palette.none)
if s:configuration.enable_bold
  call s:HL('Function', s:palette.green, s:palette.none, 'bold')
else
  call s:HL('Function', s:palette.green, s:palette.none)
endif
call s:HL('String', s:palette.green, s:palette.none)
call s:HL('Character', s:palette.green, s:palette.none)
call s:HL('Constant', s:palette.aqua, s:palette.none)
call s:HL('Macro', s:palette.aqua, s:palette.none)
call s:HL('Identifier', s:palette.blue, s:palette.none)
call s:HL('SpecialKey', s:palette.blue, s:palette.none)
if s:configuration.disable_italic_comment
  call s:HL('Comment', s:palette.grey, s:palette.none)
  call s:HL('SpecialComment', s:palette.grey, s:palette.none)
  call s:HL('Todo', s:palette.purple, s:palette.none)
else
  call s:HL('Comment', s:palette.grey, s:palette.none, 'italic')
  call s:HL('SpecialComment', s:palette.grey, s:palette.none, 'italic')
  call s:HL('Todo', s:palette.purple, s:palette.none, 'italic')
endif
call s:HL('Delimiter', s:palette.fg0, s:palette.none)
call s:HL('Ignore', s:palette.grey, s:palette.none)
call s:HL('Underlined', s:palette.none, s:palette.none, 'underline')
" }}}
" Predefined Highlight Groups: {{{
call s:HL('Fg', s:palette.fg0, s:palette.none)
call s:HL('Grey', s:palette.grey, s:palette.none)
call s:HL('Orange', s:palette.orange, s:palette.none)
call s:HL('Yellow', s:palette.yellow, s:palette.none)
call s:HL('Aqua', s:palette.aqua, s:palette.none)
call s:HL('Blue', s:palette.blue, s:palette.none)
if s:configuration.enable_italic
  call s:HL('Red', s:palette.red, s:palette.none, 'italic')
  call s:HL('Purple', s:palette.purple, s:palette.none, 'italic')
else
  call s:HL('Red', s:palette.red, s:palette.none)
  call s:HL('Purple', s:palette.purple, s:palette.none)
endif
call s:HL('RedNone', s:palette.red, s:palette.none)
call s:HL('PurpleNone', s:palette.purple, s:palette.none)
if s:configuration.enable_bold
  call s:HL('Green', s:palette.green, s:palette.none, 'bold')
else
  call s:HL('Green', s:palette.green, s:palette.none)
endif
call s:HL('GreenNone', s:palette.green, s:palette.none)
" }}}
" }}}

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker fmr={{{,}}}:
