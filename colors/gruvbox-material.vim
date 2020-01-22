" -----------------------------------------------------------------------------
" Name:         Gruvbox Material
" Description:  Gruvbox with Material Palette
" Author:       Sainnhepark <sainnhe@gmail.com>
" Website:      https://github.com/gruvbox-material/vim
" License:      MIT
" -----------------------------------------------------------------------------

" Initialization: {{{
highlight clear
if exists('syntax_on')
  syntax reset
endif

let s:t_Co = exists('&t_Co') && !empty(&t_Co) && &t_Co > 1 ? &t_Co : 2

let g:colors_name = 'gruvbox-material'
" }}}
" Configuration: {{{
let s:configuration = {}
let s:configuration.background = get(g:, 'gruvbox_material_background', 'medium')
let s:configuration.palette = get(g:, 'gruvbox_material_palette', 'material')
let s:configuration.transparent_background = get(g:, 'gruvbox_material_transparent_background', 0)
let s:configuration.disable_italic_comment = get(g:, 'gruvbox_material_disable_italic_comment', 0)
let s:configuration.enable_bold = get(g:, 'gruvbox_material_enable_bold', 0)
let s:configuration.enable_italic = get(g:, 'gruvbox_material_enable_italic', 0)
let s:configuration.visual = get(g:, 'gruvbox_material_visual', 'grey background')
let s:configuration.menu_selection_background = get(g:, 'gruvbox_material_menu_selection_background', 'grey')
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
              \ 'bg_green1':  ['#3d4220',   '22',   'DarkGreen'],
              \ 'bg_green2':  ['#333e34',   '22',   'DarkGreen'],
              \ 'bg_red1':    ['#472322',   '52',   'DarkRed'],
              \ 'bg_red2':    ['#442e2d',   '52',   'DarkRed'],
              \ 'bg_blue1':   ['#0f3a42',   '17',   'DarkBlue'],
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
              \ 'bg_green':   ['#b8bb26',   '106',  'Green'],
              \ 'bg_yellow':  ['#fabd2f',   '172',  'Yellow'],
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
              \ 'bg_green':   ['#79740e',   '106',  'Green'],
              \ 'bg_yellow':  ['#b57614',   '172',  'Yellow'],
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
              \ 'bg_green':   ['#b8bb26',   '106',  'Green'],
              \ 'bg_yellow':  ['#fabd2f',   '172',  'Yellow'],
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
              \ 'bg_green':   ['#79740e',   '106',  'Green'],
              \ 'bg_yellow':  ['#b57614',   '172',  'Yellow'],
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
              \ 'bg_green':   ['#b8bb26',   '106',  'Green'],
              \ 'bg_yellow':  ['#fabd2f',   '172',  'Yellow'],
              \ 'bg_green1':  ['#3d4220',   '22',   'DarkGreen'],
              \ 'bg_green2':  ['#333e34',   '22',   'DarkGreen'],
              \ 'bg_red1':    ['#472322',   '52',   'DarkRed'],
              \ 'bg_red2':    ['#442e2d',   '52',   'DarkRed'],
              \ 'bg_blue1':   ['#0f3a42',   '17',   'DarkBlue'],
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
              \ 'bg_green':   ['#79740e',   '106',  'Green'],
              \ 'bg_yellow':  ['#b57614',   '172',  'Yellow'],
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
if s:configuration.menu_selection_background ==# 'grey'
  call s:HL('PmenuSel', s:palette.bg3, s:palette.bg_grey1)
  call s:HL('WildMenu', s:palette.bg3, s:palette.bg_grey1)
elseif s:configuration.menu_selection_background ==# 'green'
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
if s:configuration.visual ==# 'grey background'
  call s:HL('Visual', s:palette.none, s:palette.bg3)
  call s:HL('VisualNOS', s:palette.none, s:palette.bg3)
elseif s:configuration.visual ==# 'green background'
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
call s:HL('Yellow', s:palette.yellow, s:palette.none)
call s:HL('Blue', s:palette.blue, s:palette.none)
if s:configuration.enable_italic
  call s:HL('RedItalic', s:palette.red, s:palette.none, 'italic')
  call s:HL('OrangeItalic', s:palette.orange, s:palette.none, 'italic')
  call s:HL('PurpleItalic', s:palette.purple, s:palette.none, 'italic')
else
  call s:HL('RedItalic', s:palette.red, s:palette.none)
  call s:HL('OrangeItalic', s:palette.orange, s:palette.none)
  call s:HL('PurpleItalic', s:palette.purple, s:palette.none)
endif
call s:HL('Red', s:palette.red, s:palette.none)
call s:HL('Orange', s:palette.orange, s:palette.none)
call s:HL('Purple', s:palette.purple, s:palette.none)
if s:configuration.enable_bold
  call s:HL('GreenBold', s:palette.green, s:palette.none, 'bold')
  call s:HL('AquaBold', s:palette.aqua, s:palette.none, 'bold')
else
  call s:HL('GreenBold', s:palette.green, s:palette.none)
  call s:HL('AquaBold', s:palette.aqua, s:palette.none)
endif
call s:HL('Green', s:palette.green, s:palette.none)
call s:HL('Aqua', s:palette.aqua, s:palette.none)
if s:configuration.transparent_background
  call s:HL('RedSign', s:palette.red, s:palette.none)
  call s:HL('OrangeSign', s:palette.orange, s:palette.none)
  call s:HL('YellowSign', s:palette.yellow, s:palette.none)
  call s:HL('GreenSign', s:palette.green, s:palette.none)
  call s:HL('AquaSign', s:palette.aqua, s:palette.none)
  call s:HL('BlueSign', s:palette.blue, s:palette.none)
  call s:HL('PurpleSign', s:palette.purple, s:palette.none)
else
  call s:HL('RedSign', s:palette.red, s:palette.bg2)
  call s:HL('OrangeSign', s:palette.orange, s:palette.bg2)
  call s:HL('YellowSign', s:palette.yellow, s:palette.bg2)
  call s:HL('GreenSign', s:palette.green, s:palette.bg2)
  call s:HL('AquaSign', s:palette.aqua, s:palette.bg2)
  call s:HL('BlueSign', s:palette.blue, s:palette.bg2)
  call s:HL('PurpleSign', s:palette.purple, s:palette.bg2)
endif
" }}}
" }}}
" Extended File Types: {{{
" Markdown: {{{
" builtin: {{{
call s:HL('markdownH1', s:palette.red, s:palette.none, 'bold')
call s:HL('markdownH2', s:palette.orange, s:palette.none, 'bold')
call s:HL('markdownH3', s:palette.yellow, s:palette.none, 'bold')
call s:HL('markdownH4', s:palette.green, s:palette.none, 'bold')
call s:HL('markdownH5', s:palette.blue, s:palette.none, 'bold')
call s:HL('markdownH6', s:palette.purple, s:palette.none, 'bold')
call s:HL('markdownUrl', s:palette.blue, s:palette.none, 'underline')
call s:HL('markdownItalic', s:palette.none, s:palette.none, 'italic')
call s:HL('markdownBold', s:palette.none, s:palette.none, 'bold')
call s:HL('markdownItalicDelimiter', s:palette.grey, s:palette.none, 'italic')
highlight! link markdownCode Green
highlight! link markdownCodeBlock Aqua
highlight! link markdownCodeDelimiter Aqua
highlight! link markdownBlockquote Grey
highlight! link markdownListMarker Red
highlight! link markdownOrderedListMarker Red
highlight! link markdownRule Purple
highlight! link markdownHeadingRule Grey
highlight! link markdownUrlDelimiter Grey
highlight! link markdownLinkDelimiter Grey
highlight! link markdownLinkTextDelimiter Grey
highlight! link markdownHeadingDelimiter Grey
highlight! link markdownLinkText Purple
highlight! link markdownUrlTitleDelimiter Green
highlight! link markdownIdDeclaration markdownLinkText
highlight! link markdownBoldDelimiter Grey
highlight! link markdownId Yellow
" }}}
" vim-markdown: https://github.com/gabrielelana/vim-markdown{{{
call s:HL('mkdURL', s:palette.blue, s:palette.none, 'underline')
call s:HL('mkdInlineURL', s:palette.purple, s:palette.none, 'underline')
call s:HL('mkdItalic', s:palette.grey, s:palette.none, 'italic')
highlight! link mkdCodeDelimiter Aqua
highlight! link mkdBold Grey
highlight! link mkdLink Purple
highlight! link mkdHeading Grey
highlight! link mkdListItem Red
highlight! link mkdRule Purple
highlight! link mkdDelimiter Grey
highlight! link mkdId Yellow
" }}}
" }}}
" ReStructuredText: {{{
" builtin: https://github.com/marshallward/vim-restructuredtext{{{
call s:HL('rstStandaloneHyperlink', s:palette.purple, s:palette.none, 'underline')
highlight! link rstSubstitutionReference Blue
highlight! link rstInterpretedTextOrHyperlinkReference Aqua
highlight! link rstTableLines Grey
" }}}
" }}}
" LaTex: {{{
" builtin: http://www.drchip.org/astronaut/vim/index.html#SYNTAX_TEX{{{
highlight! link texStatement Green
highlight! link texOnlyMath Grey
highlight! link texDefName Yellow
highlight! link texNewCmd Orange
highlight! link texCmdName Blue
highlight! link texBeginEnd Red
highlight! link texBeginEndName Blue
highlight! link texDocType Purple
highlight! link texDocTypeArgs Orange
" }}}
" }}}
" Html: {{{
" builtin: https://notabug.org/jorgesumle/vim-html-syntax{{{
call s:HL('htmlH1', s:palette.red, s:palette.none, 'bold')
call s:HL('htmlH2', s:palette.orange, s:palette.none, 'bold')
call s:HL('htmlH3', s:palette.yellow, s:palette.none, 'bold')
call s:HL('htmlH4', s:palette.green, s:palette.none, 'bold')
call s:HL('htmlH5', s:palette.blue, s:palette.none, 'bold')
call s:HL('htmlH6', s:palette.purple, s:palette.none, 'bold')
call s:HL('htmlLink', s:palette.none, s:palette.none, 'underline')
call s:HL('htmlBold', s:palette.none, s:palette.none, 'bold')
call s:HL('htmlBoldUnderline', s:palette.none, s:palette.none, 'bold,underline')
call s:HL('htmlBoldItalic', s:palette.none, s:palette.none, 'bold,italic')
call s:HL('htmlBoldUnderlineItalic', s:palette.none, s:palette.none, 'bold,underline,italic')
call s:HL('htmlUnderline', s:palette.none, s:palette.none, 'underline')
call s:HL('htmlUnderlineItalic', s:palette.none, s:palette.none, 'underline,italic')
call s:HL('htmlItalic', s:palette.none, s:palette.none, 'italic')
highlight! link htmlTag Green
highlight! link htmlEndTag Blue
highlight! link htmlTagN OrangeItalic
highlight! link htmlTagName OrangeItalic
highlight! link htmlArg Aqua
highlight! link htmlScriptTag Purple
highlight! link htmlSpecialTagName RedItalic
" }}}
" }}}
" Xml: {{{
" builtin: https://github.com/chrisbra/vim-xml-ftplugin{{{
highlight! link xmlTag Green
highlight! link xmlEndTag Blue
highlight! link xmlTagName OrangeItalic
highlight! link xmlEqual Orange
highlight! link xmlAttrib Aqua
highlight! link xmlEntity Red
highlight! link xmlEntityPunct Red
highlight! link xmlDocTypeDecl Grey
highlight! link xmlDocTypeKeyword PurpleItalic
highlight! link xmlCdataStart Grey
highlight! link xmlCdataCdata Purple
" }}}
" }}}
" CSS: {{{
" builtin: https://github.com/JulesWang/css.vim{{{
highlight! link cssAttrComma Fg
highlight! link cssBraces Fg
highlight! link cssTagName PurpleItalic
highlight! link cssClassNameDot Red
highlight! link cssClassName RedItalic
highlight! link cssFunctionName Yellow
highlight! link cssAttr Orange
highlight! link cssProp Aqua
highlight! link cssCommonAttr Yellow
highlight! link cssPseudoClassId Blue
highlight! link cssPseudoClassFn Green
highlight! link cssPseudoClass Purple
highlight! link cssImportant RedItalic
highlight! link cssSelectorOp Orange
highlight! link cssSelectorOp2 Orange
highlight! link cssColor Green
highlight! link cssAttributeSelector Aqua
highlight! link cssUnitDecorators Orange
highlight! link cssValueLength Green
highlight! link cssValueInteger Green
highlight! link cssValueNumber Green
highlight! link cssValueAngle Green
highlight! link cssValueTime Green
highlight! link cssValueFrequency Green
highlight! link cssVendor Grey
highlight! link cssNoise Grey
" }}}
" }}}
" SASS: {{{
" builtin: {{{
highlight! link sassProperty Aqua
highlight! link sassAmpersand Orange
highlight! link sassClass RedItalic
highlight! link sassClassChar Red
highlight! link sassMixing PurpleItalic
highlight! link sassMixinName Orange
highlight! link sassCssAttribute Yellow
highlight! link sassInterpolationDelimiter Green
highlight! link sassFunction Yellow
highlight! link sassControl RedItalic
highlight! link sassFor RedItalic
highlight! link sassFunctionName GreenBold
" }}}
" scss-syntax: https://github.com/cakebaker/scss-syntax.vim{{{
highlight! link scssMixinName Yellow
highlight! link scssSelectorChar Red
highlight! link scssSelectorName RedItalic
highlight! link scssInterpolationDelimiter Green
highlight! link scssVariableValue Green
highlight! link scssNull Purple
highlight! link scssBoolean Purple
highlight! link scssVariableAssignment Grey
highlight! link scssForKeyword PurpleItalic
highlight! link scssAttribute Orange
highlight! link scssFunctionName Yellow
" }}}
" }}}
" LESS: {{{
" vim-less: https://github.com/groenewege/vim-less{{{
highlight! link lessMixinChar Grey
highlight! link lessClass RedItalic
highlight! link lessVariable Blue
highlight! link lessAmpersandChar Orange
highlight! link lessFunction Yellow
" }}}
" }}}
" JavaScript: {{{
" builtin: http://www.fleiner.com/vim/syntax/javascript.vim{{{
highlight! link javaScriptNull Aqua
highlight! link javaScriptIdentifier Orange
highlight! link javaScriptParens Fg
highlight! link javaScriptBraces Fg
highlight! link javaScriptGlobal Purple
highlight! link javaScriptMessage Yellow
highlight! link javaScriptFunction RedItalic
highlight! link javaScriptOperator Orange
highlight! link javaScriptMember Aqua
" }}}
" vim-javascript: https://github.com/pangloss/vim-javascript{{{
highlight! link jsThis Purple
highlight! link jsUndefined Aqua
highlight! link jsNull Aqua
highlight! link jsNan Aqua
highlight! link jsSuper Purple
highlight! link jsPrototype Purple
highlight! link jsFunction RedItalic
highlight! link jsGlobalNodeObjects PurpleItalic
highlight! link jsGlobalObjects Yellow
highlight! link jsArrowFunction Purple
highlight! link jsArrowFuncArgs Blue
highlight! link jsFuncArgs Blue
highlight! link jsObjectProp Aqua
highlight! link jsVariableDef Blue
highlight! link jsObjectKey Aqua
highlight! link jsParen Blue
highlight! link jsParenIfElse Blue
highlight! link jsParenRepeat Blue
highlight! link jsParenSwitch Blue
highlight! link jsParenCatch Blue
highlight! link jsBracket Blue
highlight! link jsBlockLabel Aqua
highlight! link jsFunctionKey GreenBold
highlight! link jsClassDefinition Yellow
highlight! link jsDot Grey
highlight! link jsDestructuringBlock Blue
highlight! link jsSpreadExpression Purple
highlight! link jsSpreadOperator Green
highlight! link jsModuleKeyword Yellow
highlight! link jsObjectValue Blue
highlight! link jsTemplateExpression Yellow
highlight! link jsTemplateBraces Yellow
highlight! link jsClassMethodType Orange
" }}}
" yajs: https://github.com/othree/yajs.vim{{{
highlight! link javascriptEndColons Fg
highlight! link javascriptOpSymbol Orange
highlight! link javascriptOpSymbols Orange
highlight! link javascriptIdentifierName Blue
highlight! link javascriptVariable Orange
highlight! link javascriptObjectLabel Aqua
highlight! link javascriptObjectLabelColon Grey
highlight! link javascriptPropertyNameString Aqua
highlight! link javascriptFuncArg Blue
highlight! link javascriptIdentifier Purple
highlight! link javascriptArrowFunc Purple
highlight! link javascriptTemplate Yellow
highlight! link javascriptTemplateSubstitution Yellow
highlight! link javascriptTemplateSB Yellow
highlight! link javascriptNodeGlobal PurpleItalic
highlight! link javascriptDocTags PurpleItalic
highlight! link javascriptDocNotation Purple
highlight! link javascriptClassSuper Purple
highlight! link javascriptClassName Yellow
highlight! link javascriptClassSuperName Yellow
highlight! link javascriptBrackets Fg
highlight! link javascriptBraces Fg
highlight! link javascriptLabel Purple
highlight! link javascriptDotNotation Grey
highlight! link javascriptGlobalArrayDot Grey
highlight! link javascriptGlobalBigIntDot Grey
highlight! link javascriptGlobalDateDot Grey
highlight! link javascriptGlobalJSONDot Grey
highlight! link javascriptGlobalMathDot Grey
highlight! link javascriptGlobalNumberDot Grey
highlight! link javascriptGlobalObjectDot Grey
highlight! link javascriptGlobalPromiseDot Grey
highlight! link javascriptGlobalRegExpDot Grey
highlight! link javascriptGlobalStringDot Grey
highlight! link javascriptGlobalSymbolDot Grey
highlight! link javascriptGlobalURLDot Grey
highlight! link javascriptMethod GreenBold
highlight! link javascriptMethodName GreenBold
highlight! link javascriptObjectMethodName GreenBold
highlight! link javascriptGlobalMethod GreenBold
highlight! link javascriptDOMStorageMethod GreenBold
highlight! link javascriptFileMethod GreenBold
highlight! link javascriptFileReaderMethod GreenBold
highlight! link javascriptFileListMethod GreenBold
highlight! link javascriptBlobMethod GreenBold
highlight! link javascriptURLStaticMethod GreenBold
highlight! link javascriptNumberStaticMethod GreenBold
highlight! link javascriptNumberMethod GreenBold
highlight! link javascriptDOMNodeMethod GreenBold
highlight! link javascriptES6BigIntStaticMethod GreenBold
highlight! link javascriptBOMWindowMethod GreenBold
highlight! link javascriptHeadersMethod GreenBold
highlight! link javascriptRequestMethod GreenBold
highlight! link javascriptResponseMethod GreenBold
highlight! link javascriptES6SetMethod GreenBold
highlight! link javascriptReflectMethod GreenBold
highlight! link javascriptPaymentMethod GreenBold
highlight! link javascriptPaymentResponseMethod GreenBold
highlight! link javascriptTypedArrayStaticMethod GreenBold
highlight! link javascriptGeolocationMethod GreenBold
highlight! link javascriptES6MapMethod GreenBold
highlight! link javascriptServiceWorkerMethod GreenBold
highlight! link javascriptCacheMethod GreenBold
highlight! link javascriptFunctionMethod GreenBold
highlight! link javascriptXHRMethod GreenBold
highlight! link javascriptBOMNavigatorMethod GreenBold
highlight! link javascriptServiceWorkerMethod GreenBold
highlight! link javascriptDOMEventTargetMethod GreenBold
highlight! link javascriptDOMEventMethod GreenBold
highlight! link javascriptIntlMethod GreenBold
highlight! link javascriptDOMDocMethod GreenBold
highlight! link javascriptStringStaticMethod GreenBold
highlight! link javascriptStringMethod GreenBold
highlight! link javascriptSymbolStaticMethod GreenBold
highlight! link javascriptRegExpMethod GreenBold
highlight! link javascriptObjectStaticMethod GreenBold
highlight! link javascriptObjectMethod GreenBold
highlight! link javascriptBOMLocationMethod GreenBold
highlight! link javascriptJSONStaticMethod GreenBold
highlight! link javascriptGeneratorMethod GreenBold
highlight! link javascriptEncodingMethod GreenBold
highlight! link javascriptPromiseStaticMethod GreenBold
highlight! link javascriptPromiseMethod GreenBold
highlight! link javascriptBOMHistoryMethod GreenBold
highlight! link javascriptDOMFormMethod GreenBold
highlight! link javascriptClipboardMethod GreenBold
highlight! link javascriptTypedArrayStaticMethod GreenBold
highlight! link javascriptBroadcastMethod GreenBold
highlight! link javascriptDateStaticMethod GreenBold
highlight! link javascriptDateMethod GreenBold
highlight! link javascriptConsoleMethod GreenBold
highlight! link javascriptArrayStaticMethod GreenBold
highlight! link javascriptArrayMethod GreenBold
highlight! link javascriptMathStaticMethod GreenBold
highlight! link javascriptSubtleCryptoMethod GreenBold
highlight! link javascriptCryptoMethod GreenBold
highlight! link javascriptProp Aqua
highlight! link javascriptBOMWindowProp Aqua
highlight! link javascriptDOMStorageProp Aqua
highlight! link javascriptFileReaderProp Aqua
highlight! link javascriptURLUtilsProp Aqua
highlight! link javascriptNumberStaticProp Aqua
highlight! link javascriptDOMNodeProp Aqua
highlight! link javascriptRequestProp Aqua
highlight! link javascriptResponseProp Aqua
highlight! link javascriptES6SetProp Aqua
highlight! link javascriptPaymentProp Aqua
highlight! link javascriptPaymentResponseProp Aqua
highlight! link javascriptPaymentAddressProp Aqua
highlight! link javascriptPaymentShippingOptionProp Aqua
highlight! link javascriptTypedArrayStaticProp Aqua
highlight! link javascriptServiceWorkerProp Aqua
highlight! link javascriptES6MapProp Aqua
highlight! link javascriptRegExpStaticProp Aqua
highlight! link javascriptRegExpProp Aqua
highlight! link javascriptXHRProp Aqua
highlight! link javascriptBOMNavigatorProp GreenBold
highlight! link javascriptDOMEventProp Aqua
highlight! link javascriptBOMNetworkProp Aqua
highlight! link javascriptDOMDocProp Aqua
highlight! link javascriptSymbolStaticProp Aqua
highlight! link javascriptSymbolProp Aqua
highlight! link javascriptBOMLocationProp Aqua
highlight! link javascriptEncodingProp Aqua
highlight! link javascriptCryptoProp Aqua
highlight! link javascriptBOMHistoryProp Aqua
highlight! link javascriptDOMFormProp Aqua
highlight! link javascriptDataViewProp Aqua
highlight! link javascriptBroadcastProp Aqua
highlight! link javascriptMathStaticProp Aqua
" }}}
" }}}
" JavaScript React: {{{
" vim-jsx-pretty: https://github.com/maxmellon/vim-jsx-pretty{{{
highlight! link jsxTagName OrangeItalic
highlight! link jsxOpenPunct Green
highlight! link jsxClosePunct Blue
highlight! link jsxEscapeJs Blue
highlight! link jsxAttrib Aqua
" }}}
" }}}
" TypeScript: {{{
" vim-typescript: https://github.com/leafgarland/typescript-vim{{{
highlight! link typescriptSource PurpleItalic
highlight! link typescriptMessage Yellow
highlight! link typescriptGlobalObjects Aqua
highlight! link typescriptInterpolation Yellow
highlight! link typescriptInterpolationDelimiter Yellow
highlight! link typescriptBraces Fg
highlight! link typescriptParens Fg
" }}}
" yats: https:github.com/HerringtonDarkholme/yats.vim{{{
highlight! link typescriptMethodAccessor OrangeItalic
highlight! link typescriptVariable Orange
highlight! link typescriptVariableDeclaration Blue
highlight! link typescriptTypeReference Yellow
highlight! link typescriptBraces Fg
highlight! link typescriptEnumKeyword RedItalic
highlight! link typescriptEnum Yellow
highlight! link typescriptIdentifierName Aqua
highlight! link typescriptProp Aqua
highlight! link typescriptCall Blue
highlight! link typescriptInterfaceName Yellow
highlight! link typescriptEndColons Fg
highlight! link typescriptMember Aqua
highlight! link typescriptMemberOptionality Orange
highlight! link typescriptObjectLabel Aqua
highlight! link typescriptArrowFunc Purple
highlight! link typescriptAbstract Orange
highlight! link typescriptObjectColon Grey
highlight! link typescriptTypeAnnotation Grey
highlight! link typescriptAssign Orange
highlight! link typescriptBinaryOp Orange
highlight! link typescriptUnaryOp Orange
highlight! link typescriptFuncComma Fg
highlight! link typescriptClassName Yellow
highlight! link typescriptClassHeritage Yellow
highlight! link typescriptInterfaceHeritage Yellow
highlight! link typescriptIdentifier Purple
highlight! link typescriptGlobal Purple
highlight! link typescriptOperator RedItalic
highlight! link typescriptNodeGlobal PurpleItalic
highlight! link typescriptExport PurpleItalic
highlight! link typescriptDefaultParam Orange
highlight! link typescriptImport PurpleItalic
highlight! link typescriptTypeParameter Yellow
highlight! link typescriptReadonlyModifier Orange
highlight! link typescriptAccessibilityModifier Orange
highlight! link typescriptAmbientDeclaration RedItalic
highlight! link typescriptTemplateSubstitution Yellow
highlight! link typescriptTemplateSB Yellow
highlight! link typescriptExceptions RedItalic
highlight! link typescriptCastKeyword RedItalic
highlight! link typescriptOptionalMark Orange
highlight! link typescriptNull Aqua
highlight! link typescriptMappedIn RedItalic
highlight! link typescriptFuncTypeArrow Purple
highlight! link typescriptTernaryOp Orange
highlight! link typescriptParenExp Blue
highlight! link typescriptIndexExpr Blue
highlight! link typescriptDotNotation Grey
highlight! link typescriptGlobalNumberDot Grey
highlight! link typescriptGlobalStringDot Grey
highlight! link typescriptGlobalArrayDot Grey
highlight! link typescriptGlobalObjectDot Grey
highlight! link typescriptGlobalSymbolDot Grey
highlight! link typescriptGlobalMathDot Grey
highlight! link typescriptGlobalDateDot Grey
highlight! link typescriptGlobalJSONDot Grey
highlight! link typescriptGlobalRegExpDot Grey
highlight! link typescriptGlobalPromiseDot Grey
highlight! link typescriptGlobalURLDot Grey
highlight! link typescriptGlobalMethod GreenBold
highlight! link typescriptDOMStorageMethod GreenBold
highlight! link typescriptFileMethod GreenBold
highlight! link typescriptFileReaderMethod GreenBold
highlight! link typescriptFileListMethod GreenBold
highlight! link typescriptBlobMethod GreenBold
highlight! link typescriptURLStaticMethod GreenBold
highlight! link typescriptNumberStaticMethod GreenBold
highlight! link typescriptNumberMethod GreenBold
highlight! link typescriptDOMNodeMethod GreenBold
highlight! link typescriptPaymentMethod GreenBold
highlight! link typescriptPaymentResponseMethod GreenBold
highlight! link typescriptHeadersMethod GreenBold
highlight! link typescriptRequestMethod GreenBold
highlight! link typescriptResponseMethod GreenBold
highlight! link typescriptES6SetMethod GreenBold
highlight! link typescriptReflectMethod GreenBold
highlight! link typescriptBOMWindowMethod GreenBold
highlight! link typescriptGeolocationMethod GreenBold
highlight! link typescriptServiceWorkerMethod GreenBold
highlight! link typescriptCacheMethod GreenBold
highlight! link typescriptES6MapMethod GreenBold
highlight! link typescriptFunctionMethod GreenBold
highlight! link typescriptRegExpMethod GreenBold
highlight! link typescriptXHRMethod GreenBold
highlight! link typescriptBOMNavigatorMethod GreenBold
highlight! link typescriptServiceWorkerMethod GreenBold
highlight! link typescriptIntlMethod GreenBold
highlight! link typescriptDOMEventTargetMethod GreenBold
highlight! link typescriptDOMEventMethod GreenBold
highlight! link typescriptDOMDocMethod GreenBold
highlight! link typescriptStringStaticMethod GreenBold
highlight! link typescriptStringMethod GreenBold
highlight! link typescriptSymbolStaticMethod GreenBold
highlight! link typescriptObjectStaticMethod GreenBold
highlight! link typescriptObjectMethod GreenBold
highlight! link typescriptJSONStaticMethod GreenBold
highlight! link typescriptEncodingMethod GreenBold
highlight! link typescriptBOMLocationMethod GreenBold
highlight! link typescriptPromiseStaticMethod GreenBold
highlight! link typescriptPromiseMethod GreenBold
highlight! link typescriptSubtleCryptoMethod GreenBold
highlight! link typescriptCryptoMethod GreenBold
highlight! link typescriptBOMHistoryMethod GreenBold
highlight! link typescriptDOMFormMethod GreenBold
highlight! link typescriptConsoleMethod GreenBold
highlight! link typescriptDateStaticMethod GreenBold
highlight! link typescriptDateMethod GreenBold
highlight! link typescriptArrayStaticMethod GreenBold
highlight! link typescriptArrayMethod GreenBold
highlight! link typescriptMathStaticMethod GreenBold
highlight! link typescriptStringProperty Aqua
highlight! link typescriptDOMStorageProp Aqua
highlight! link typescriptFileReaderProp Aqua
highlight! link typescriptURLUtilsProp Aqua
highlight! link typescriptNumberStaticProp Aqua
highlight! link typescriptDOMNodeProp Aqua
highlight! link typescriptBOMWindowProp Aqua
highlight! link typescriptRequestProp Aqua
highlight! link typescriptResponseProp Aqua
highlight! link typescriptPaymentProp Aqua
highlight! link typescriptPaymentResponseProp Aqua
highlight! link typescriptPaymentAddressProp Aqua
highlight! link typescriptPaymentShippingOptionProp Aqua
highlight! link typescriptES6SetProp Aqua
highlight! link typescriptServiceWorkerProp Aqua
highlight! link typescriptES6MapProp Aqua
highlight! link typescriptRegExpStaticProp Aqua
highlight! link typescriptRegExpProp Aqua
highlight! link typescriptBOMNavigatorProp GreenBold
highlight! link typescriptXHRProp Aqua
highlight! link typescriptDOMEventProp Aqua
highlight! link typescriptDOMDocProp Aqua
highlight! link typescriptBOMNetworkProp Aqua
highlight! link typescriptSymbolStaticProp Aqua
highlight! link typescriptEncodingProp Aqua
highlight! link typescriptBOMLocationProp Aqua
highlight! link typescriptCryptoProp Aqua
highlight! link typescriptDOMFormProp Aqua
highlight! link typescriptBOMHistoryProp Aqua
highlight! link typescriptMathStaticProp Aqua
" }}}
" }}}
" Dart: {{{
" dart-lang: https://github.com/dart-lang/dart-vim-plugin{{{
highlight! link dartCoreClasses Aqua
highlight! link dartTypeName Aqua
highlight! link dartInterpolation Blue
highlight! link dartTypeDef RedItalic
highlight! link dartClassDecl RedItalic
highlight! link dartLibrary PurpleItalic
highlight! link dartMetadata Blue
" }}}
" }}}
" CoffeeScript: {{{
" vim-coffee-script: https://github.com/kchmck/vim-coffee-script{{{
highlight! link coffeeExtendedOp Orange
highlight! link coffeeSpecialOp Fg
highlight! link coffeeDotAccess Grey
highlight! link coffeeCurly Fg
highlight! link coffeeParen Fg
highlight! link coffeeBracket Fg
highlight! link coffeeParens Blue
highlight! link coffeeBrackets Blue
highlight! link coffeeCurlies Blue
highlight! link coffeeOperator RedItalic
highlight! link coffeeStatement Orange
highlight! link coffeeSpecialIdent Purple
highlight! link coffeeObject Purple
highlight! link coffeeObjAssign Aqua
" }}}
" }}}
" PureScript: {{{
" purescript-vim: https://github.com/purescript-contrib/purescript-vim{{{
highlight! link purescriptModuleKeyword PurpleItalic
highlight! link purescriptModule Aqua
highlight! link purescriptModuleParams Blue
highlight! link purescriptAsKeyword OrangeItalic
highlight! link purescriptHidingKeyword OrangeItalic
highlight! link purescriptWhere OrangeItalic
highlight! link purescriptIdentifier Blue
highlight! link purescriptFunction Yellow
highlight! link purescriptType Aqua
" }}}
" }}}
" C/C++: {{{
" vim-cpp-enhanced-highlight: https://github.com/octol/vim-cpp-enhanced-highlight{{{
highlight! link cppSTLnamespace Purple
highlight! link cppSTLtype Yellow
highlight! link cppAccess PurpleItalic
highlight! link cppStructure RedItalic
highlight! link cppSTLios Aqua
highlight! link cppSTLiterator PurpleItalic
highlight! link cppSTLexception Purple
" }}}
" vim-cpp-modern: https://github.com/bfrg/vim-cpp-modern{{{
highlight! link cppSTLVariable Aqua
" }}}
" }}}
" ObjectiveC: {{{
" builtin: {{{
highlight! link objcModuleImport PurpleItalic
highlight! link objcException RedItalic
highlight! link objcProtocolList Aqua
highlight! link objcObjDef PurpleItalic
highlight! link objcDirective RedItalic
highlight! link objcPropertyAttribute Orange
highlight! link objcHiddenArgument Aqua
" }}}
" }}}
" C#: {{{
" builtin: https://github.com/nickspoons/vim-cs{{{
highlight! link csUnspecifiedStatement PurpleItalic
highlight! link csStorage RedItalic
highlight! link csClass RedItalic
highlight! link csNewType Aqua
highlight! link csContextualStatement PurpleItalic
highlight! link csInterpolationDelimiter Yellow
highlight! link csInterpolation Yellow
highlight! link csEndColon Fg
" }}}
" }}}
" Python: {{{
" builtin: {{{
highlight! link pythonBuiltin Yellow
highlight! link pythonExceptions Purple
highlight! link pythonDecoratorName Blue
" }}}
" python-syntax: https://github.com/vim-python/python-syntax{{{
highlight! link pythonExClass Purple
highlight! link pythonBuiltinType Yellow
highlight! link pythonBuiltinObj Blue
highlight! link pythonDottedName PurpleItalic
highlight! link pythonBuiltinFunc GreenBold
highlight! link pythonFunction AquaBold
highlight! link pythonDecorator Orange
highlight! link pythonInclude Include
highlight! link pythonImport PreProc
highlight! link pythonRun Blue
highlight! link pythonCoding Grey
highlight! link pythonOperator Orange
highlight! link pythonConditional RedItalic
highlight! link pythonRepeat RedItalic
highlight! link pythonException RedItalic
highlight! link pythonNone Aqua
highlight! link pythonDot Grey
" }}}
" }}}
" Lua: {{{
" builtin: {{{
highlight! link luaFunc GreenBold
highlight! link luaFunction Aqua
highlight! link luaTable Fg
highlight! link luaIn RedItalic
" }}}
" vim-lua: https://github.com/tbastos/vim-lua{{{
highlight! link luaFuncCall GreenBold
highlight! link luaLocal Orange
highlight! link luaSpecialValue GreenBold
highlight! link luaBraces Fg
highlight! link luaBuiltIn Purple
highlight! link luaNoise Grey
highlight! link luaLabel Purple
highlight! link luaFuncTable Yellow
highlight! link luaFuncArgName Blue
highlight! link luaEllipsis Orange
highlight! link luaDocTag Green
" }}}
" }}}
" Moonscript: {{{
" moonscript-vim: https://github.com/leafo/moonscript-vim{{{
highlight! link moonInterpDelim Yellow
highlight! link moonInterp Blue
highlight! link moonFunction Green
highlight! link moonLuaFunc AquaBold
highlight! link moonSpecialVar Purple
highlight! link moonObject Yellow
highlight! link moonDotAccess Grey
" }}}
" }}}
" Java: {{{
" builtin: {{{
highlight! link javaClassDecl RedItalic
highlight! link javaMethodDecl RedItalic
highlight! link javaVarArg Green
highlight! link javaAnnotation Blue
highlight! link javaUserLabel Purple
highlight! link javaTypedef Aqua
highlight! link javaParen Fg
highlight! link javaParen1 Fg
highlight! link javaParen2 Fg
highlight! link javaParen3 Fg
highlight! link javaParen4 Fg
highlight! link javaParen5 Fg
" }}}
" }}}
" Kotlin: {{{
" kotlin-vim: https://github.com/udalov/kotlin-vim{{{
highlight! link ktSimpleInterpolation Yellow
highlight! link ktComplexInterpolation Yellow
highlight! link ktComplexInterpolationBrace Yellow
highlight! link ktStructure RedItalic
highlight! link ktKeyword Aqua
" }}}
" }}}
" Scala: {{{
" builtin: https://github.com/derekwyatt/vim-scala{{{
highlight! link scalaNameDefinition Aqua
highlight! link scalaInterpolationBoundary Yellow
highlight! link scalaInterpolation Blue
highlight! link scalaTypeOperator Orange
highlight! link scalaOperator Orange
highlight! link scalaKeywordModifier Orange
" }}}
" }}}
" Go: {{{
" builtin: https://github.com/google/vim-ft-go{{{
highlight! link goDirective PurpleItalic
highlight! link goConstants Aqua
highlight! link goDeclType OrangeItalic
" }}}
" polyglot: {{{
highlight! link goPackage PurpleItalic
highlight! link goImport PurpleItalic
highlight! link goVarArgs Blue
highlight! link goBuiltins GreenBold
highlight! link goPredefinedIdentifiers Aqua
highlight! link goVar Orange
" }}}
" }}}
" Rust: {{{
" builtin: https://github.com/rust-lang/rust.vim{{{
highlight! link rustStructure Orange
highlight! link rustIdentifier Purple
highlight! link rustModPath Orange
highlight! link rustModPathSep Grey
highlight! link rustSelf Blue
highlight! link rustSuper Blue
highlight! link rustDeriveTrait PurpleItalic
highlight! link rustEnumVariant Purple
highlight! link rustMacroVariable Blue
highlight! link rustAssert Aqua
highlight! link rustPanic Aqua
highlight! link rustPubScopeCrate PurpleItalic
" }}}
" }}}
" Swift: {{{
" swift.vim: https://github.com/keith/swift.vim{{{
highlight! link swiftInterpolatedWrapper Yellow
highlight! link swiftInterpolatedString Blue
highlight! link swiftProperty Aqua
highlight! link swiftTypeDeclaration Orange
highlight! link swiftClosureArgument Purple
" }}}
" }}}
" PHP: {{{
" builtin: https://jasonwoof.com/gitweb/?p=vim-syntax.git;a=blob;f=php.vim;hb=HEAD{{{
highlight! link phpVarSelector Blue
highlight! link phpDefine OrangeItalic
highlight! link phpStructure RedItalic
highlight! link phpSpecialFunction GreenBold
highlight! link phpInterpSimpleCurly Yellow
highlight! link phpComparison Orange
highlight! link phpMethodsVar Aqua
highlight! link phpMemberSelector Green
" }}}
" php.vim: https://github.com/StanAngeloff/php.vim{{{
highlight! link phpParent Fg
highlight! link phpNowDoc Green
highlight! link phpFunction GreenBold
highlight! link phpMethod GreenBold
highlight! link phpClass Orange
highlight! link phpSuperglobals Purple
" }}}
" }}}
" Ruby: {{{
" builtin: https://github.com/vim-ruby/vim-ruby{{{
highlight! link rubyKeywordAsMethod GreenBold
highlight! link rubyInterpolation Yellow
highlight! link rubyInterpolationDelimiter Yellow
highlight! link rubyStringDelimiter Green
highlight! link rubyBlockParameterList Blue
highlight! link rubyDefine RedItalic
highlight! link rubyModuleName Purple
highlight! link rubyAccess Orange
highlight! link rubyAttribute Yellow
highlight! link rubyMacro RedItalic
" }}}
" }}}
" Haskell: {{{
" haskell-vim: https://github.com/neovimhaskell/haskell-vim{{{
highlight! link haskellBrackets Blue
highlight! link haskellIdentifier Yellow
highlight! link haskellAssocType Aqua
highlight! link haskellQuotedType Aqua
highlight! link haskellType Aqua
highlight! link haskellDeclKeyword RedItalic
highlight! link haskellWhere RedItalic
highlight! link haskellDeriving PurpleItalic
highlight! link haskellForeignKeywords PurpleItalic
" }}}
" }}}
" Perl: {{{
" builtin: https://github.com/vim-perl/vim-perl{{{
highlight! link perlStatementPackage PurpleItalic
highlight! link perlStatementInclude PurpleItalic
highlight! link perlStatementStorage Orange
highlight! link perlStatementList Orange
highlight! link perlMatchStartEnd Orange
highlight! link perlVarSimpleMemberName Aqua
highlight! link perlVarSimpleMember Fg
highlight! link perlMethod GreenBold
highlight! link podVerbatimLine Green
highlight! link podCmdText Yellow
" }}}
" }}}
" OCaml: {{{
" builtin: https://github.com/rgrinberg/vim-ocaml{{{
highlight! link ocamlArrow Orange
highlight! link ocamlEqual Orange
highlight! link ocamlOperator Orange
highlight! link ocamlKeyChar Orange
highlight! link ocamlModPath Green
highlight! link ocamlFullMod Green
highlight! link ocamlModule Purple
highlight! link ocamlConstructor Aqua
highlight! link ocamlFuncWith Yellow
highlight! link ocamlWith Yellow
highlight! link ocamlModParam Fg
highlight! link ocamlModParam1 Fg
highlight! link ocamlAnyVar Blue
highlight! link ocamlPpxEncl Orange
highlight! link ocamlPpxIdentifier Blue
highlight! link ocamlSigEncl Orange
highlight! link ocamlStructEncl Aqua
highlight! link ocamlModParam1 Blue
" }}}
" }}}
" Erlang: {{{
" builtin: https://github.com/vim-erlang/vim-erlang-runtime{{{
highlight! link erlangAtom Aqua
highlight! link erlangLocalFuncRef GreenBold
highlight! link erlangLocalFuncCall GreenBold
highlight! link erlangGlobalFuncRef GreenBold
highlight! link erlangGlobalFuncCall GreenBold
highlight! link erlangAttribute PurpleItalic
highlight! link erlangPipe Orange
" }}}
" }}}
" Elixir: {{{
" vim-elixir: https://github.com/elixir-editors/vim-elixir{{{
highlight! link elixirStringDelimiter Green
highlight! link elixirKeyword Orange
highlight! link elixirInterpolation Yellow
highlight! link elixirInterpolationDelimiter Yellow
highlight! link elixirSelf Purple
highlight! link elixirPseudoVariable Purple
highlight! link elixirModuleDefine PurpleItalic
highlight! link elixirBlockDefinition RedItalic
highlight! link elixirDefine RedItalic
highlight! link elixirPrivateDefine RedItalic
highlight! link elixirGuard RedItalic
highlight! link elixirPrivateGuard RedItalic
highlight! link elixirProtocolDefine RedItalic
highlight! link elixirImplDefine RedItalic
highlight! link elixirRecordDefine RedItalic
highlight! link elixirPrivateRecordDefine RedItalic
highlight! link elixirMacroDefine RedItalic
highlight! link elixirPrivateMacroDefine RedItalic
highlight! link elixirDelegateDefine RedItalic
highlight! link elixirOverridableDefine RedItalic
highlight! link elixirExceptionDefine RedItalic
highlight! link elixirCallbackDefine RedItalic
highlight! link elixirStructDefine RedItalic
highlight! link elixirExUnitMacro RedItalic
" }}}
" }}}
" Common Lisp: {{{
" builtin: http://www.drchip.org/astronaut/vim/index.html#SYNTAX_LISP{{{
highlight! link lispAtomMark Green
highlight! link lispKey Aqua
highlight! link lispFunc OrangeItalic
" }}}
" }}}
" Clojure: {{{
" builtin: https://github.com/guns/vim-clojure-static{{{
highlight! link clojureMacro PurpleItalic
highlight! link clojureFunc AquaBold
highlight! link clojureConstant Yellow
highlight! link clojureSpecial RedItalic
highlight! link clojureDefine RedItalic
highlight! link clojureKeyword Orange
highlight! link clojureVariable Blue
highlight! link clojureMeta Yellow
highlight! link clojureDeref Yellow
" }}}
" }}}
" Shell: {{{
" builtin: http://www.drchip.org/astronaut/vim/index.html#SYNTAX_SH{{{
highlight! link shRange Fg
highlight! link shTestOpr Orange
highlight! link shOption Aqua
highlight! link bashStatement Orange
highlight! link shOperator Orange
highlight! link shQuote Green
highlight! link shSet Orange
highlight! link shSetList Blue
highlight! link shSnglCase Orange
highlight! link shVariable Blue
highlight! link shVarAssign Orange
highlight! link shCmdSubRegion Green
highlight! link shCommandSub Orange
highlight! link shFunctionOne GreenBold
highlight! link shFunctionKey RedItalic
" }}}
" }}}
" Zsh: {{{
" builtin: https://github.com/chrisbra/vim-zsh{{{
highlight! link zshOptStart PurpleItalic
highlight! link zshOption Blue
highlight! link zshSubst Yellow
highlight! link zshFunction GreenBold
highlight! link zshDeref Blue
highlight! link zshTypes Orange
highlight! link zshVariableDef Blue
" }}}
" }}}
" Fish: {{{
" vim-fish: https://github.com/georgewitteman/vim-fish{{{
highlight! link fishStatement Orange
highlight! link fishLabel RedItalic
highlight! link fishCommandSub Yellow
" }}}
" }}}
" PowerShell: {{{
" vim-ps1: https://github.com/PProvost/vim-ps1{{{
highlight! link ps1FunctionInvocation AquaBold
highlight! link ps1FunctionDeclaration AquaBold
highlight! link ps1InterpolationDelimiter Yellow
highlight! link ps1BuiltIn Yellow
" }}}
" }}}
" VimL: {{{
highlight! link vimLet Orange
highlight! link vimFunction GreenBold
highlight! link vimIsCommand Fg
highlight! link vimUserFunc GreenBold
highlight! link vimFuncName GreenBold
highlight! link vimMap PurpleItalic
highlight! link vimNotation Aqua
highlight! link vimMapLhs Green
highlight! link vimMapRhs Green
highlight! link vimSetEqual Yellow
highlight! link vimSetSep Fg
highlight! link vimOption Aqua
highlight! link vimUserAttrbKey Yellow
highlight! link vimUserAttrb Green
highlight! link vimAutoCmdSfxList Aqua
highlight! link vimSynType Orange
highlight! link vimHiBang Orange
" }}}
" Makefile: {{{
highlight! link makeIdent Aqua
highlight! link makeSpecTarget Yellow
highlight! link makeTarget Blue
highlight! link makeCommands Orange
" }}}
" CMake: {{{
highlight! link cmakeCommand Orange
highlight! link cmakeKWconfigure_package_config_file Yellow
highlight! link cmakeKWwrite_basic_package_version_file Yellow
highlight! link cmakeKWExternalProject Aqua
highlight! link cmakeKWadd_compile_definitions Aqua
highlight! link cmakeKWadd_compile_options Aqua
highlight! link cmakeKWadd_custom_command Aqua
highlight! link cmakeKWadd_custom_target Aqua
highlight! link cmakeKWadd_definitions Aqua
highlight! link cmakeKWadd_dependencies Aqua
highlight! link cmakeKWadd_executable Aqua
highlight! link cmakeKWadd_library Aqua
highlight! link cmakeKWadd_link_options Aqua
highlight! link cmakeKWadd_subdirectory Aqua
highlight! link cmakeKWadd_test Aqua
highlight! link cmakeKWbuild_command Aqua
highlight! link cmakeKWcmake_host_system_information Aqua
highlight! link cmakeKWcmake_minimum_required Aqua
highlight! link cmakeKWcmake_parse_arguments Aqua
highlight! link cmakeKWcmake_policy Aqua
highlight! link cmakeKWconfigure_file Aqua
highlight! link cmakeKWcreate_test_sourcelist Aqua
highlight! link cmakeKWctest_build Aqua
highlight! link cmakeKWctest_configure Aqua
highlight! link cmakeKWctest_coverage Aqua
highlight! link cmakeKWctest_memcheck Aqua
highlight! link cmakeKWctest_run_script Aqua
highlight! link cmakeKWctest_start Aqua
highlight! link cmakeKWctest_submit Aqua
highlight! link cmakeKWctest_test Aqua
highlight! link cmakeKWctest_update Aqua
highlight! link cmakeKWctest_upload Aqua
highlight! link cmakeKWdefine_property Aqua
highlight! link cmakeKWdoxygen_add_docs Aqua
highlight! link cmakeKWenable_language Aqua
highlight! link cmakeKWenable_testing Aqua
highlight! link cmakeKWexec_program Aqua
highlight! link cmakeKWexecute_process Aqua
highlight! link cmakeKWexport Aqua
highlight! link cmakeKWexport_library_dependencies Aqua
highlight! link cmakeKWfile Aqua
highlight! link cmakeKWfind_file Aqua
highlight! link cmakeKWfind_library Aqua
highlight! link cmakeKWfind_package Aqua
highlight! link cmakeKWfind_path Aqua
highlight! link cmakeKWfind_program Aqua
highlight! link cmakeKWfltk_wrap_ui Aqua
highlight! link cmakeKWforeach Aqua
highlight! link cmakeKWfunction Aqua
highlight! link cmakeKWget_cmake_property Aqua
highlight! link cmakeKWget_directory_property Aqua
highlight! link cmakeKWget_filename_component Aqua
highlight! link cmakeKWget_property Aqua
highlight! link cmakeKWget_source_file_property Aqua
highlight! link cmakeKWget_target_property Aqua
highlight! link cmakeKWget_test_property Aqua
highlight! link cmakeKWif Aqua
highlight! link cmakeKWinclude Aqua
highlight! link cmakeKWinclude_directories Aqua
highlight! link cmakeKWinclude_external_msproject Aqua
highlight! link cmakeKWinclude_guard Aqua
highlight! link cmakeKWinstall Aqua
highlight! link cmakeKWinstall_files Aqua
highlight! link cmakeKWinstall_programs Aqua
highlight! link cmakeKWinstall_targets Aqua
highlight! link cmakeKWlink_directories Aqua
highlight! link cmakeKWlist Aqua
highlight! link cmakeKWload_cache Aqua
highlight! link cmakeKWload_command Aqua
highlight! link cmakeKWmacro Aqua
highlight! link cmakeKWmark_as_advanced Aqua
highlight! link cmakeKWmath Aqua
highlight! link cmakeKWmessage Aqua
highlight! link cmakeKWoption Aqua
highlight! link cmakeKWproject Aqua
highlight! link cmakeKWqt_wrap_cpp Aqua
highlight! link cmakeKWqt_wrap_ui Aqua
highlight! link cmakeKWremove Aqua
highlight! link cmakeKWseparate_arguments Aqua
highlight! link cmakeKWset Aqua
highlight! link cmakeKWset_directory_properties Aqua
highlight! link cmakeKWset_property Aqua
highlight! link cmakeKWset_source_files_properties Aqua
highlight! link cmakeKWset_target_properties Aqua
highlight! link cmakeKWset_tests_properties Aqua
highlight! link cmakeKWsource_group Aqua
highlight! link cmakeKWstring Aqua
highlight! link cmakeKWsubdirs Aqua
highlight! link cmakeKWtarget_compile_definitions Aqua
highlight! link cmakeKWtarget_compile_features Aqua
highlight! link cmakeKWtarget_compile_options Aqua
highlight! link cmakeKWtarget_include_directories Aqua
highlight! link cmakeKWtarget_link_directories Aqua
highlight! link cmakeKWtarget_link_libraries Aqua
highlight! link cmakeKWtarget_link_options Aqua
highlight! link cmakeKWtarget_precompile_headers Aqua
highlight! link cmakeKWtarget_sources Aqua
highlight! link cmakeKWtry_compile Aqua
highlight! link cmakeKWtry_run Aqua
highlight! link cmakeKWunset Aqua
highlight! link cmakeKWuse_mangled_mesa Aqua
highlight! link cmakeKWvariable_requires Aqua
highlight! link cmakeKWvariable_watch Aqua
highlight! link cmakeKWwrite_file Aqua
" }}}
" Json: {{{
highlight! link jsonKeyword Orange
highlight! link jsonQuote Grey
highlight! link jsonBraces Fg
" }}}
" Yaml: {{{
highlight! link yamlKey Orange
highlight! link yamlConstant Purple
" }}}
" Toml: {{{
call s:HL('tomlTable', s:palette.purple, s:palette.none, 'bold')
highlight! link tomlKey Orange
highlight! link tomlBoolean Aqua
highlight! link tomlTableArray tomlTable
" }}}
" Diff: {{{
highlight! link diffAdded Green
highlight! link diffRemoved Red
highlight! link diffChanged Blue
highlight! link diffOldFile Yellow
highlight! link diffNewFile Orange
highlight! link diffFile Aqua
highlight! link diffLine Grey
highlight! link diffIndexLine Purple
" }}}
" Help: {{{
call s:HL('helpNote', s:palette.purple, s:palette.none, 'bold')
call s:HL('helpHeadline', s:palette.red, s:palette.none, 'bold')
call s:HL('helpHeader', s:palette.orange, s:palette.none, 'bold')
call s:HL('helpURL', s:palette.green, s:palette.none, 'underline')
call s:HL('helpHyperTextEntry', s:palette.yellow, s:palette.none, 'bold')
highlight! link helpHyperTextJump Yellow
highlight! link helpCommand Aqua
highlight! link helpExample Green
highlight! link helpSpecial Blue
highlight! link helpSectionDelim Grey
" }}}
" }}}
" Plugins: {{{
" junegunn/vim-plug{{{
call s:HL('plug1', s:palette.orange, s:palette.none, 'bold')
call s:HL('plugNumber', s:palette.yellow, s:palette.none, 'bold')
highlight! link plug2 Green
highlight! link plugBracket Grey
highlight! link plugName Aqua
highlight! link plugDash Orange
highlight! link plugError Red
highlight! link plugNotLoaded Grey
highlight! link plugRelDate Grey
highlight! link plugH2 Orange
highlight! link plugMessage Orange
highlight! link plugStar Red
highlight! link plugUpdate Blue
highlight! link plugDeleted Grey
highlight! link plugEdge Yellow
highlight! link plugSha Green
" }}}
" neoclide/coc.nvim{{{
call s:HL('CocHoverRange', s:palette.none, s:palette.none, 'bold,underline')
if s:configuration.current_word ==# 'bold'
  call s:HL('CocHighlightText', s:palette.none, s:palette.none, 'bold')
elseif s:configuration.current_word ==# 'underline'
  call s:HL('CocHighlightText', s:palette.none, s:palette.none, 'underline')
elseif s:configuration.current_word ==# 'italic'
  call s:HL('CocHighlightText', s:palette.none, s:palette.none, 'italic')
elseif s:configuration.current_word ==# 'grey background'
  if s:configuration.background ==# 'hard'
    if &background ==# 'dark'
      hi CocHighlightText guibg=#32302f ctermbg=236
    else
      hi CocHighlightText guibg=#f3eac7 ctermbg=229
    endif
  elseif s:configuration.background ==# 'medium'
    if &background ==# 'dark'
      hi CocHighlightText guibg=#3c3836 ctermbg=237
    else
      hi CocHighlightText guibg=#f2e5bc ctermbg=228
    endif
  elseif s:configuration.background ==# 'soft'
    if &background ==# 'dark'
      hi CocHighlightText guibg=#45403d ctermbg=238
    else
      hi CocHighlightText guibg=#ebdbb2 ctermbg=227
    endif
  endif
endif
highlight! link CocErrorSign RedSign
highlight! link CocWarningSign YellowSign
highlight! link CocInfoSign BlueSign
highlight! link CocHintSign AquaSign
highlight! link CocErrorHighlight ALEError
highlight! link CocWarningHighlight ALEWarning
highlight! link CocInfoHighlight ALEInfo
highlight! link CocWarningVirtualText Grey
highlight! link CocErrorVirtualText Grey
highlight! link CocInfoVirtualText Grey
highlight! link CocHintVirtualText Grey
highlight! link CocCodeLens Grey
highlight! link HighlightedyankRegion Visual
highlight! link CocGitAddedSign GreenSign
highlight! link CocGitChangeRemovedSign PurpleSign
highlight! link CocGitChangedSign BlueSign
highlight! link CocGitRemovedSign RedSign
highlight! link CocGitTopRemovedSign RedSign
highlight! link CocExplorerBufferRoot Orange
highlight! link CocExplorerBufferExpandIcon Aqua
highlight! link CocExplorerBufferBufnr Purple
highlight! link CocExplorerBufferModified Red
highlight! link CocExplorerBufferBufname Grey
highlight! link CocExplorerFileRoot Orange
highlight! link CocExplorerFileExpandIcon Aqua
highlight! link CocExplorerFileFullpath Aqua
highlight! link CocExplorerFileDirectory Green
highlight! link CocExplorerFileGitStage Purple
highlight! link CocExplorerFileGitUnstage Yellow
highlight! link CocExplorerFileSize Blue
highlight! link CocExplorerTimeAccessed Aqua
highlight! link CocExplorerTimeCreated Aqua
highlight! link CocExplorerTimeModified Aqua
" }}}
" dense-analysis/ale{{{
call s:HL('ALEError', s:palette.none, s:palette.none, 'undercurl', s:palette.red)
call s:HL('ALEWarning', s:palette.none, s:palette.none, 'undercurl', s:palette.yellow)
call s:HL('ALEInfo', s:palette.none, s:palette.none, 'undercurl', s:palette.blue)
highlight! link ALEErrorSign RedSign
highlight! link ALEWarningSign YellowSign
highlight! link ALEInfoSign BlueSign
highlight! link ALEVirtualTextError Grey
highlight! link ALEVirtualTextWarning Grey
highlight! link ALEVirtualTextInfo Grey
highlight! link ALEVirtualTextStyleError Grey
highlight! link ALEVirtualTextStyleWarning Grey
" }}}
" neomake/neomake{{{
highlight! link NeomakeError ALEError
highlight! link NeomakeErrorSign RedSign
highlight! link NeomakeWarning ALEWarning
highlight! link NeomakeWarningSign YellowSign
highlight! link NeomakeInfo ALEInfo
highlight! link NeomakeInfoSign BlueSign
highlight! link NeomakeMessage Aqua
highlight! link NeomakeMessageSign AquaSign
highlight! link NeomakeVirtualtextError Grey
highlight! link NeomakeVirtualtextWarning Grey
highlight! link NeomakeVirtualtextInfo Grey
highlight! link NeomakeVirtualtextMessag Grey
" }}}
" vim-syntastic/syntastic{{{
highlight! link SyntasticError ALEError
highlight! link SyntasticWarning ALEWarning
highlight! link SyntasticErrorSign RedSign
highlight! link SyntasticWarningSign YellowSign
" }}}
" Yggdroot/LeaderF{{{
if !exists('g:Lf_StlColorscheme')
  let g:Lf_StlColorscheme = 'gruvbox_material'
endif
if !exists('g:Lf_PopupColorscheme')
  let g:Lf_PopupColorscheme = 'gruvbox_material'
endif
call s:HL('Lf_hl_match', s:palette.green, s:palette.none, 'bold')
call s:HL('Lf_hl_match0', s:palette.green, s:palette.none, 'bold')
call s:HL('Lf_hl_match1', s:palette.aqua, s:palette.none, 'bold')
call s:HL('Lf_hl_match2', s:palette.blue, s:palette.none, 'bold')
call s:HL('Lf_hl_match3', s:palette.purple, s:palette.none, 'bold')
call s:HL('Lf_hl_match4', s:palette.orange, s:palette.none, 'bold')
call s:HL('Lf_hl_matchRefine', s:palette.red, s:palette.none, 'bold')
highlight! link Lf_hl_cursorline Fg
highlight! link Lf_hl_selection DiffAdd
highlight! link Lf_hl_rgHighlight Visual
highlight! link Lf_hl_gtagsHighlight Visual
" }}}
" junegunn/fzf.vim{{{
let g:fzf_colors = {
      \ 'fg':      ['fg', 'Normal'],
      \ 'bg':      ['bg', 'Normal'],
      \ 'hl':      ['fg', 'Green'],
      \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
      \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
      \ 'hl+':     ['fg', 'Aqua'],
      \ 'info':    ['fg', 'Aqua'],
      \ 'prompt':  ['fg', 'Orange'],
      \ 'pointer': ['fg', 'Blue'],
      \ 'marker':  ['fg', 'Yellow'],
      \ 'spinner': ['fg', 'Yellow'],
      \ 'header':  ['fg', 'Grey']
      \ }
" }}}
" Shougo/denite.nvim{{{
call s:HL('deniteMatchedChar', s:palette.green, s:palette.none, 'bold')
call s:HL('deniteMatchedRange', s:palette.green, s:palette.none, 'bold,underline')
call s:HL('deniteInput', s:palette.green, s:palette.bg4, 'bold')
call s:HL('deniteStatusLineNumber', s:palette.purple, s:palette.bg4)
call s:HL('deniteStatusLinePath', s:palette.fg0, s:palette.bg4)
highlight! link deniteSelectedLin Green
" }}}
" kien/ctrlp.vim{{{
call s:HL('CtrlPMatch', s:palette.green, s:palette.none, 'bold')
call s:HL('CtrlPPrtBase', s:palette.bg4, s:palette.none)
call s:HL('CtrlPLinePre', s:palette.bg4, s:palette.none)
call s:HL('CtrlPMode1', s:palette.blue, s:palette.bg4, 'bold')
call s:HL('CtrlPMode2', s:palette.bg0, s:palette.blue, 'bold')
call s:HL('CtrlPStats', s:palette.bg_grey1, s:palette.bg4, 'bold')
highlight! link CtrlPNoEntries Red
highlight! link CtrlPPrtCursor Blue
" }}}
" majutsushi/tagbar{{{
highlight! link TagbarFoldIcon Green
highlight! link TagbarSignature Green
highlight! link TagbarKind Red
highlight! link TagbarScope Orange
highlight! link TagbarNestedKind Aqua
highlight! link TagbarVisibilityPrivate Red
highlight! link TagbarVisibilityPublic Blue
" }}}
" liuchengxu/vista.vim{{{
highlight! link VistaBracket Grey
highlight! link VistaChildrenNr Orange
highlight! link VistaScope Red
highlight! link VistaTag Green
highlight! link VistaPrefix Grey
highlight! link VistaColon Green
highlight! link VistaIcon Purple
highlight! link VistaLineNr Fg
" }}}
" airblade/vim-gitgutter{{{
highlight! link GitGutterAdd GreenSign
highlight! link GitGutterChange BlueSign
highlight! link GitGutterDelete RedSign
highlight! link GitGutterChangeDelete PurpleSign
" }}}
" mhinz/vim-signify{{{
highlight! link SignifySignAdd GreenSign
highlight! link SignifySignChange BlueSign
highlight! link SignifySignDelete RedSign
highlight! link SignifySignChangeDelete PurpleSign
" }}}
" scrooloose/nerdtree{{{
highlight! link NERDTreeDir Green
highlight! link NERDTreeDirSlash Aqua
highlight! link NERDTreeOpenable Orange
highlight! link NERDTreeClosable Orange
highlight! link NERDTreeFile Fg
highlight! link NERDTreeExecFile Yellow
highlight! link NERDTreeUp Grey
highlight! link NERDTreeCWD Aqua
highlight! link NERDTreeHelp LightGrey
highlight! link NERDTreeToggleOn Green
highlight! link NERDTreeToggleOff Red
highlight! link NERDTreeFlags Orange
highlight! link NERDTreeLinkFile Grey
highlight! link NERDTreeLinkTarget Green
" }}}
" justinmk/vim-dirvish{{{
highlight! link DirvishPathTail Aqua
highlight! link DirvishArg Yellow
" }}}
" vim.org/netrw {{{
" https://www.vim.org/scripts/script.php?script_id=1075
highlight! link netrwDir Green
highlight! link netrwClassify Green
highlight! link netrwLink Grey
highlight! link netrwSymLink Fg
highlight! link netrwExe Yellow
highlight! link netrwComment Grey
highlight! link netrwList Aqua
highlight! link netrwHelpCmd Blue
highlight! link netrwCmdSep Grey
highlight! link netrwVersion Orange
" }}}
" andymass/vim-matchup{{{
call s:HL('MatchParenCur', s:palette.none, s:palette.none, 'bold')
call s:HL('MatchWord', s:palette.none, s:palette.none, 'underline')
call s:HL('MatchWordCur', s:palette.none, s:palette.none, 'underline')
" }}}
" easymotion/vim-easymotion {{{
highlight! link EasyMotionTarget Search
highlight! link EasyMotionShade Comment
" }}}
" justinmk/vim-sneak {{{
highlight! link Sneak Cursor
highlight! link SneakLabel Cursor
highlight! link SneakScope DiffChange
" }}}
" terryma/vim-multiple-cursors{{{
highlight! link multiple_cursors_cursor Cursor
highlight! link multiple_cursors_visual Visual
" }}}
" mg979/vim-visual-multi{{{
let g:VM_Mono_hl = 'Cursor'
let g:VM_Extend_hl = 'Visual'
let g:VM_Cursor_hl = 'Cursor'
let g:VM_Insert_hl = 'Cursor'
" }}}
" dominikduda/vim_current_word{{{
highlight! link CurrentWord CocHighlightText
highlight! link CurrentWordTwins CocHighlightText
" }}}
" RRethy/vim-illuminate{{{
highlight! link illuminatedWord CocHighlightText
" }}}
" itchyny/vim-cursorword{{{
highlight! link CursorWord0 CocHighlightText
highlight! link CursorWord1 CocHighlightText
" }}}
" nathanaelkane/vim-indent-guides{{{
if get(g:, 'indent_guides_auto_colors', 1) == 0
  call s:HL('IndentGuidesOdd', s:palette.bg0, s:palette.bg2)
  call s:HL('IndentGuidesEven', s:palette.bg0, s:palette.bg3)
endif
" }}}
" luochen1990/rainbow{{{
if !exists('g:rbpt_colorpairs')
  let g:rbpt_colorpairs = [['blue', s:palette.blue[0]], ['magenta', s:palette.purple[0]],
        \ ['red', s:palette.red[0]], ['166', s:palette.orange[0]]]
endif

let g:rainbow_guifgs = [ s:palette.orange[0], s:palette.red[0], s:palette.purple[0], s:palette.blue[0] ]
let g:rainbow_ctermfgs = [ '166', 'red', 'magenta', 'blue' ]

if !exists('g:rainbow_conf')
  let g:rainbow_conf = {}
endif
if !has_key(g:rainbow_conf, 'guifgs')
  let g:rainbow_conf['guifgs'] = g:rainbow_guifgs
endif
if !has_key(g:rainbow_conf, 'ctermfgs')
  let g:rainbow_conf['ctermfgs'] = g:rainbow_ctermfgs
endif

let g:niji_dark_colours = g:rbpt_colorpairs
let g:niji_light_colours = g:rbpt_colorpairs
" }}}
" kshenoy/vim-signature {{{
highlight! link SignatureMarkText BlueSign
highlight! link SignatureMarkerText PurpleSign
" }}}
" mhinz/vim-startify{{{
highlight! link StartifyBracket Grey
highlight! link StartifyFile Fg
highlight! link StartifyNumber Red
highlight! link StartifyPath Green
highlight! link StartifySlash Aqua
highlight! link StartifySection Blue
highlight! link StartifyHeader Orange
highlight! link StartifySpecial Grey
highlight! link StartifyFooter Grey
" }}}
" ap/vim-buftabline{{{
highlight! link BufTabLineCurrent TabLineSel
highlight! link BufTabLineActive TabLine
highlight! link BufTabLineHidden TabLineFill
highlight! link BufTabLineFill TabLineFill
" }}}
" liuchengxu/vim-which-key{{{
highlight! link WhichKey Red
highlight! link WhichKeySeperator Green
highlight! link WhichKeyGroup Yellow
highlight! link WhichKeyDesc Blue
highlight! link WhichKeyFloating SignColumn
" }}}
" skywind3000/quickmenu.vim{{{
highlight! link QuickmenuOption Green
highlight! link QuickmenuNumber Red
highlight! link QuickmenuBracket Grey
highlight! link QuickmenuHelp Green
highlight! link QuickmenuSpecial Purple
highlight! link QuickmenuHeader Orange
" }}}
" mbbill/undotree{{{
call s:HL('UndotreeSavedBig', s:palette.purple, s:palette.none, 'bold')
highlight! link UndotreeNode Orange
highlight! link UndotreeNodeCurrent Red
highlight! link UndotreeSeq Green
highlight! link UndotreeNext Blue
highlight! link UndotreeTimeStamp Grey
highlight! link UndotreeHead Yellow
highlight! link UndotreeBranch Yellow
highlight! link UndotreeCurrent Aqua
highlight! link UndotreeSavedSmall Purple
" }}}
" unblevable/quick-scope {{{
call s:HL('QuickScopePrimary', s:palette.aqua, s:palette.none, 'underline')
call s:HL('QuickScopeSecondary', s:palette.blue, s:palette.none, 'underline')
" }}}
" }}}
" Terminal: {{{
if (has('termguicolors') && &termguicolors) || has('gui_running')
  " Definition
  let s:terminal = {
        \ 'black':    s:palette.fg0,
        \ 'red':      s:palette.red,
        \ 'yellow':   s:palette.yellow,
        \ 'green':    s:palette.green,
        \ 'cyan':     s:palette.aqua,
        \ 'blue':     s:palette.blue,
        \ 'purple':   s:palette.purple,
        \ 'white':    s:palette.grey
        \ }
  " Implementation: {{{
  if !has('nvim')
    let g:terminal_ansi_colors = [s:terminal.black[0], s:terminal.red[0], s:terminal.green[0], s:terminal.yellow[0],
          \ s:terminal.blue[0], s:terminal.purple[0], s:terminal.cyan[0], s:terminal.white[0], s:terminal.black[0], s:terminal.red[0],
          \ s:terminal.green[0], s:terminal.yellow[0], s:terminal.blue[0], s:terminal.purple[0], s:terminal.cyan[0], s:terminal.white[0]]
  else
    let g:terminal_color_0 = s:terminal.black[0]
    let g:terminal_color_1 = s:terminal.red[0]
    let g:terminal_color_2 = s:terminal.green[0]
    let g:terminal_color_3 = s:terminal.yellow[0]
    let g:terminal_color_4 = s:terminal.blue[0]
    let g:terminal_color_5 = s:terminal.purple[0]
    let g:terminal_color_6 = s:terminal.cyan[0]
    let g:terminal_color_7 = s:terminal.white[0]
    let g:terminal_color_8 = s:terminal.black[0]
    let g:terminal_color_9 = s:terminal.red[0]
    let g:terminal_color_10 = s:terminal.green[0]
    let g:terminal_color_11 = s:terminal.yellow[0]
    let g:terminal_color_12 = s:terminal.blue[0]
    let g:terminal_color_13 = s:terminal.purple[0]
    let g:terminal_color_14 = s:terminal.cyan[0]
    let g:terminal_color_15 = s:terminal.white[0]
  endif
  " }}}
endif
" }}}

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker fmr={{{,}}}:
