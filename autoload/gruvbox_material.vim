" =============================================================================
" URL: https://github.com/sainnhe/gruvbox-material
" Filename: autoload/gruvbox_material.vim
" Author: sainnhe
" Email: sainnhe@gmail.com
" License: MIT License
" =============================================================================

let s:t_Co = exists('&t_Co') && !empty(&t_Co) && &t_Co > 1 ? &t_Co : 2
let s:tmux = executable('tmux') && $TMUX !=# ''

" gruvbox_material#palette(){{{
function! gruvbox_material#palette(background, palette)
  if a:background ==# 'hard' "{{{
    if &background ==# 'dark'
      let palette1 = {
            \ 'bg0':        ['#1d2021',   '234',  'Black'],
            \ 'bg1':        ['#262727',   '235',  'DarkGrey'],
            \ 'bg2':        ['#282828',   '235',  'DarkGrey'],
            \ 'bg3':        ['#3c3836',   '237',  'DarkGrey'],
            \ 'bg4':        ['#3c3836',   '237',  'DarkGrey'],
            \ 'bg5':        ['#504945',   '239',  'DarkGrey'],
            \ 'bg_sl1':     ['#282828',   '235',  'DarkGrey'],
            \ 'bg_sl2':     ['#32302f',   '235',  'DarkGrey'],
            \ 'bg_sl3':     ['#504945',   '239',  'Grey'],
            \ 'bg_grey0':   ['#665c54',   '241',  'DarkGrey'],
            \ 'bg_grey1':   ['#a89984',   '246',  'LightGrey'],
            \ 'bg_green1':  ['#32361a',   '22',   'DarkGreen'],
            \ 'bg_green2':  ['#333e34',   '22',   'DarkGreen'],
            \ 'bg_red1':    ['#3c1f1e',   '52',   'DarkRed'],
            \ 'bg_red2':    ['#442e2d',   '52',   'DarkRed'],
            \ 'bg_blue1':   ['#0d3138',   '17',   'DarkBlue'],
            \ 'bg_blue2':   ['#2e3b3b',   '17',   'DarkBlue'],
            \ 'none':       ['NONE',      'NONE', 'NONE']
            \ }
    else
      let palette1 = {
            \ 'bg0':        ['#f9f5d7',   '230',  'White'],
            \ 'bg1':        ['#f5edca',   '229',  'LightGrey'],
            \ 'bg2':        ['#f3eac7',   '229',  'LightGrey'],
            \ 'bg3':        ['#f2e5bc',   '228',  'LightGrey'],
            \ 'bg4':        ['#eee0b7',   '223',  'LightGrey'],
            \ 'bg5':        ['#ebdbb2',   '223',  'LightGrey'],
            \ 'bg_sl1':     ['#f3eac7',   '223',  'DarkGrey'],
            \ 'bg_sl2':     ['#f3eac7',   '223',  'DarkGrey'],
            \ 'bg_sl3':     ['#eee0b7',   '250',  'Grey'],
            \ 'bg_grey0':   ['#d5c4a1',   '250',  'LightGrey'],
            \ 'bg_grey1':   ['#7c6f64',   '243',  'DarkGrey'],
            \ 'bg_green1':  ['#e3f6b4',   '194',  'LightGreen'],
            \ 'bg_green2':  ['#dde5c2',   '194',  'LightGreen'],
            \ 'bg_red1':    ['#ffdbcc',   '217',  'LightRed'],
            \ 'bg_red2':    ['#f6d2ba',   '217',  'LightRed'],
            \ 'bg_blue1':   ['#cff1f6',   '117',  'LightBlue'],
            \ 'bg_blue2':   ['#d9e1cc',   '117',  'LightBlue'],
            \ 'none':       ['NONE',      'NONE', 'NONE']
            \ }
    endif "}}}
  elseif a:background ==# 'medium' "{{{
    if &background ==# 'dark'
      let palette1 = {
            \ 'bg0':        ['#282828',   '235',  'Black'],
            \ 'bg1':        ['#302f2e',   '236',  'DarkGrey'],
            \ 'bg2':        ['#32302f',   '236',  'DarkGrey'],
            \ 'bg3':        ['#45403d',   '237',  'DarkGrey'],
            \ 'bg4':        ['#45403d',   '237',  'DarkGrey'],
            \ 'bg5':        ['#5a524c',   '239',  'DarkGrey'],
            \ 'bg_sl1':     ['#32302f',   '236',  'DarkGrey'],
            \ 'bg_sl2':     ['#3a3735',   '236',  'DarkGrey'],
            \ 'bg_sl3':     ['#5a524c',   '240',  'Grey'],
            \ 'bg_grey0':   ['#7c6f64',   '243',  'DarkGrey'],
            \ 'bg_grey1':   ['#a89984',   '246',  'LightGrey'],
            \ 'bg_green1':  ['#34381b',   '22',   'DarkGreen'],
            \ 'bg_green2':  ['#3b4439',   '22',   'DarkGreen'],
            \ 'bg_red1':    ['#402120',   '52',   'DarkRed'],
            \ 'bg_red2':    ['#4c3432',   '52',   'DarkRed'],
            \ 'bg_blue1':   ['#0e363e',   '17',   'DarkBlue'],
            \ 'bg_blue2':   ['#374141',   '17',   'DarkBlue'],
            \ 'none':       ['NONE',      'NONE', 'NONE']
            \ }
    else
      let palette1 = {
            \ 'bg0':        ['#fbf1c7',   '229',  'White'],
            \ 'bg1':        ['#f4e8be',   '228',  'LightGrey'],
            \ 'bg2':        ['#f2e5bc',   '228',  'LightGrey'],
            \ 'bg3':        ['#eee0b7',   '223',  'LightGrey'],
            \ 'bg4':        ['#e5d5ad',   '223',  'LightGrey'],
            \ 'bg5':        ['#ddccab',   '250',  'LightGrey'],
            \ 'bg_sl1':     ['#f2e5bc',   '223',  'DarkGrey'],
            \ 'bg_sl2':     ['#f2e5bc',   '223',  'DarkGrey'],
            \ 'bg_sl3':     ['#e5d5ad',   '250',  'Grey'],
            \ 'bg_grey0':   ['#bdae93',   '248',  'LightGrey'],
            \ 'bg_grey1':   ['#7c6f64',   '243',  'DarkGrey'],
            \ 'bg_green1':  ['#daf0a7',   '194',  'LightGreen'],
            \ 'bg_green2':  ['#dee2b6',   '194',  'LightGreen'],
            \ 'bg_red1':    ['#fbcdb9',   '217',  'LightRed'],
            \ 'bg_red2':    ['#f7cfae',   '217',  'LightRed'],
            \ 'bg_blue1':   ['#c6eaf0',   '117',  'LightBlue'],
            \ 'bg_blue2':   ['#dadec0',   '117',  'LightBlue'],
            \ 'none':       ['NONE',      'NONE', 'NONE']
            \ }
    endif "}}}
  elseif a:background ==# 'soft' "{{{
    if &background ==# 'dark'
      let palette1 = {
            \ 'bg0':        ['#32302f',   '236',  'Black'],
            \ 'bg1':        ['#3a3735',   '237',  'DarkGrey'],
            \ 'bg2':        ['#3c3836',   '237',  'DarkGrey'],
            \ 'bg3':        ['#504945',   '239',  'DarkGrey'],
            \ 'bg4':        ['#504945',   '239',  'DarkGrey'],
            \ 'bg5':        ['#665c54',   '241',  'DarkGrey'],
            \ 'bg_sl1':     ['#3c3836',   '237',  'DarkGrey'],
            \ 'bg_sl2':     ['#46413e',   '237',  'DarkGrey'],
            \ 'bg_sl3':     ['#665c54',   '241',  'Grey'],
            \ 'bg_grey0':   ['#7c6f64',   '243',  'DarkGrey'],
            \ 'bg_grey1':   ['#a89984',   '246',  'LightGrey'],
            \ 'bg_green1':  ['#3d4220',   '22',   'DarkGreen'],
            \ 'bg_green2':  ['#333e34',   '22',   'DarkGreen'],
            \ 'bg_red1':    ['#472322',   '52',   'DarkRed'],
            \ 'bg_red2':    ['#442e2d',   '52',   'DarkRed'],
            \ 'bg_blue1':   ['#0f3a42',   '17',   'DarkBlue'],
            \ 'bg_blue2':   ['#2e3b3b',   '17',   'DarkBlue'],
            \ 'none':       ['NONE',      'NONE', 'NONE']
            \ }
    else
      let palette1 = {
            \ 'bg0':        ['#f2e5bc',   '228',  'White'],
            \ 'bg1':        ['#eddeb5',   '223',  'LightGrey'],
            \ 'bg2':        ['#ebdbb2',   '228',  'LightGrey'],
            \ 'bg3':        ['#e6d5ae',   '223',  'LightGrey'],
            \ 'bg4':        ['#dac9a5',   '250',  'LightGrey'],
            \ 'bg5':        ['#d5c4a1',   '250',  'LightGrey'],
            \ 'bg_sl1':     ['#ebdbb2',   '223',  'DarkGrey'],
            \ 'bg_sl2':     ['#ebdbb2',   '223',  'DarkGrey'],
            \ 'bg_sl3':     ['#dac9a5',   '250',  'Grey'],
            \ 'bg_grey0':   ['#a89984',   '246',  'LightGrey'],
            \ 'bg_grey1':   ['#7c6f64',   '243',  'DarkGrey'],
            \ 'bg_green1':  ['#d1ea9b',   '194',  'LightGreen'],
            \ 'bg_green2':  ['#d7d9ae',   '194',  'LightGreen'],
            \ 'bg_red1':    ['#fbcab5',   '217',  'LightRed'],
            \ 'bg_red2':    ['#f0c6a6',   '217',  'LightRed'],
            \ 'bg_blue1':   ['#bee4ea',   '117',  'LightBlue'],
            \ 'bg_blue2':   ['#d3d5b8',   '117',  'LightBlue'],
            \ 'none':       ['NONE',      'NONE', 'NONE']
            \ }
    endif
  endif "}}}
  if a:palette ==# 'material' "{{{
    if &background ==# 'dark'
      let palette2 = {
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
            \ 'bg_red':     ['#ea6962',   '167',  'Red'],
            \ 'bg_green':   ['#a9b665',   '142',  'Green'],
            \ 'bg_yellow':  ['#d8a657',   '214',  'Yellow']
            \ }
    else
      let palette2 = {
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
            \ 'bg_red':     ['#ae5858',   '88',   'Red'],
            \ 'bg_green':   ['#6f8352',   '100',  'Green'],
            \ 'bg_yellow':  ['#a96b2c',   '130',  'Yellow']
            \ }
    endif "}}}
  elseif a:palette ==# 'mix' "{{{
    if &background ==# 'dark'
      let palette2 = {
            \ 'fg0':        ['#e2cca9',   '223',  'White'],
            \ 'fg1':        ['#e2cca9',   '223',  'White'],
            \ 'red':        ['#f2594b',   '167',  'Red'],
            \ 'orange':     ['#f28534',   '208',  'DarkYellow'],
            \ 'yellow':     ['#e9b143',   '214',  'Yellow'],
            \ 'green':      ['#b0b846',   '142',  'Green'],
            \ 'aqua':       ['#8bba7f',   '108',  'Cyan'],
            \ 'blue':       ['#80aa9e',   '109',  'Blue'],
            \ 'purple':     ['#d3869b',   '175',  'Magenta'],
            \ 'grey':       ['#928374',   '245',  'LightGrey'],
            \ 'bg_red':     ['#f2594b',   '167',  'Red'],
            \ 'bg_green':   ['#b0b846',   '142',  'Green'],
            \ 'bg_yellow':  ['#e9b143',   '214',  'Yellow']
            \ }
    else
      let palette2 = {
            \ 'fg0':        ['#514036',   '237',  'Black'],
            \ 'fg1':        ['#514036',   '237',  'Black'],
            \ 'red':        ['#af2528',   '88',   'Red'],
            \ 'orange':     ['#b94c07',   '130',  'DarkYellow'],
            \ 'yellow':     ['#b4730e',   '136',  'Yellow'],
            \ 'green':      ['#72761e',   '100',  'Green'],
            \ 'aqua':       ['#477a5b',   '165',  'Cyan'],
            \ 'blue':       ['#266b79',   '24',   'Blue'],
            \ 'purple':     ['#924f79',   '96',   'Magenta'],
            \ 'grey':       ['#928374',   '245',  'DarkGrey'],
            \ 'bg_red':     ['#ae5858',   '88',   'Red'],
            \ 'bg_green':   ['#6f8352',   '100',  'Green'],
            \ 'bg_yellow':  ['#a96b2c',   '130',  'Yellow']
            \ }
    endif "}}}
  elseif a:palette ==# 'original' "{{{
    if &background ==# 'dark'
      let palette2 = {
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
            \ 'bg_red':     ['#cc241d',   '124',  'Red'],
            \ 'bg_green':   ['#b8bb26',   '106',  'Green'],
            \ 'bg_yellow':  ['#fabd2f',   '172',  'Yellow']
            \ }
    else
      let palette2 = {
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
            \ 'bg_red':     ['#ae5858',   '88',   'Red'],
            \ 'bg_green':   ['#6f8352',   '100',  'Green'],
            \ 'bg_yellow':  ['#a96b2c',   '130',  'Yellow']
            \ }
    endif
  endif "}}}
  return extend(palette1, palette2)
endfunction
" }}}
" gruvbox_material#highlight(){{{
if (has('termguicolors') && &termguicolors) || has('gui_running')  " guifg guibg gui cterm guisp
  function! gruvbox_material#highlight(group, fg, bg, ...)
    let hl_string = [
          \ 'highlight', a:group,
          \ 'guifg=' . a:fg[0],
          \ 'guibg=' . a:bg[0],
          \ ]
    if a:0 >= 1
      if a:1 ==# 'undercurl'
        if !s:tmux
          call add(hl_string, 'gui=undercurl')
        else
          call add(hl_string, 'gui=underline')
        endif
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
  function! gruvbox_material#highlight(group, fg, bg, ...)
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
  function! gruvbox_material#highlight(group, fg, bg, ...)
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

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker fmr={{{,}}}:
