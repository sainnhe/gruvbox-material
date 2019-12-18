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
let s:configuration.transparent_background = get(g:, 'gruvbox_material_transparent_background', 0)
let s:configuration.disable_italic_comment = get(g:, 'gruvbox_material_disable_italic_comment', 0)
let s:configuration.enable_bold = get(g:, 'gruvbox_material_enable_bold', 0)
let s:configuration.visual = get(g:, 'gruvbox_material_visual', 'green background')
let s:configuration.current_word = get(g:, 'gruvbox_material_current_word', get(g:, 'gruvbox_material_transparent_background', 0) == 0 ? 'grey background' : 'bold')
" }}}
" Palette: {{{
if s:configuration.background ==# 'hard'
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
          \ 'bg_red':     ['#f07e7e',   '203',  'Red'],
          \ 'bg_green':   ['#a2be8a',   '107',  'Green'],
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
          \ 'fg0':        ['#4f3829',   '237',  'Black'],
          \ 'fg1':        ['#654735',   '237',  'Black'],
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
elseif s:configuration.background ==# 'medium'
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
          \ 'bg_red':     ['#f07e7e',   '203',  'Red'],
          \ 'bg_green':   ['#a2be8a',   '107',  'Green'],
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
          \ 'fg0':        ['#4f3829',   '237',  'Black'],
          \ 'fg1':        ['#654735',   '237',  'Black'],
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
elseif s:configuration.background ==# 'soft'
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
          \ 'bg_red':     ['#f07e7e',   '203',  'Red'],
          \ 'bg_green':   ['#a2be8a',   '107',  'Green'],
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
          \ 'fg0':        ['#4f3829',   '237',  'Black'],
          \ 'fg1':        ['#654735',   '237',  'Black'],
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
endif
" }}}

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker fmr={{{,}}}:
