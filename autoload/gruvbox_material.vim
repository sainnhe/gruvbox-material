" =============================================================================
" URL: https://github.com/sainnhe/gruvbox-material
" Filename: autoload/gruvbox_material.vim
" Author: sainnhe
" Email: sainnhe@gmail.com
" License: MIT License
" =============================================================================

function! gruvbox_material#get_configuration() "{{{
  return {
        \ 'background': get(g:, 'gruvbox_material_background', 'medium'),
        \ 'palette': get(g:, 'gruvbox_material_palette', 'material'),
        \ 'transparent_background': get(g:, 'gruvbox_material_transparent_background', 0),
        \ 'disable_italic_comment': get(g:, 'gruvbox_material_disable_italic_comment', 0),
        \ 'enable_bold': get(g:, 'gruvbox_material_enable_bold', 0),
        \ 'enable_italic': get(g:, 'gruvbox_material_enable_italic', 0),
        \ 'cursor': get(g:, 'gruvbox_material_cursor', 'auto'),
        \ 'visual': get(g:, 'gruvbox_material_visual', 'grey background'),
        \ 'menu_selection_background': get(g:, 'gruvbox_material_menu_selection_background', 'grey'),
        \ 'sign_column_background': get(g:, 'gruvbox_material_sign_column_background', 'default'),
        \ 'spell_foreground': get(g:, 'gruvbox_material_spell_foreground', 'none'),
        \ 'ui_contrast': get(g:, 'gruvbox_material_ui_contrast', 'low'),
        \ 'show_eob': get(g:, 'gruvbox_material_show_eob', 1),
        \ 'current_word': get(g:, 'gruvbox_material_current_word', get(g:, 'gruvbox_material_transparent_background', 0) == 0 ? 'grey background' : 'bold'),
        \ 'statusline_style': get(g:, 'gruvbox_material_statusline_style', 'default'),
        \ 'lightline_disable_bold': get(g:, 'gruvbox_material_lightline_disable_bold', 0),
        \ 'diagnostic_text_highlight': get(g:, 'gruvbox_material_diagnostic_text_highlight', 0),
        \ 'diagnostic_line_highlight': get(g:, 'gruvbox_material_diagnostic_line_highlight', 0),
        \ 'diagnostic_virtual_text': get(g:, 'gruvbox_material_diagnostic_virtual_text', 'grey'),
        \ 'better_performance': get(g:, 'gruvbox_material_better_performance', 0),
        \ }
endfunction "}}}
function! gruvbox_material#get_palette(background, palette) "{{{
  if type(a:palette) == 4
    return a:palette
  endif
  if a:background ==# 'hard' "{{{
    if &background ==# 'dark'
      let palette1 = {
            \ 'bg0':              ['#1d2021',   '234'],
            \ 'bg1':              ['#282828',   '235'],
            \ 'bg2':              ['#282828',   '235'],
            \ 'bg3':              ['#3c3836',   '237'],
            \ 'bg4':              ['#3c3836',   '237'],
            \ 'bg5':              ['#504945',   '239'],
            \ 'bg_statusline1':   ['#282828',   '235'],
            \ 'bg_statusline2':   ['#32302f',   '235'],
            \ 'bg_statusline3':   ['#504945',   '239'],
            \ 'bg_diff_green':    ['#32361a',   '22'],
            \ 'bg_visual_green':  ['#333e34',   '22'],
            \ 'bg_diff_red':      ['#3c1f1e',   '52'],
            \ 'bg_visual_red':    ['#442e2d',   '52'],
            \ 'bg_diff_blue':     ['#0d3138',   '17'],
            \ 'bg_visual_blue':   ['#2e3b3b',   '17'],
            \ 'bg_visual_yellow': ['#473c29',   '94'],
            \ 'bg_current_word':  ['#32302f',   '236']
            \ }
    else
      let palette1 = {
            \ 'bg0':              ['#f9f5d7',   '230'],
            \ 'bg1':              ['#f5edca',   '229'],
            \ 'bg2':              ['#f3eac7',   '229'],
            \ 'bg3':              ['#f2e5bc',   '228'],
            \ 'bg4':              ['#eee0b7',   '223'],
            \ 'bg5':              ['#ebdbb2',   '223'],
            \ 'bg_statusline1':   ['#f5edca',   '223'],
            \ 'bg_statusline2':   ['#f3eac7',   '223'],
            \ 'bg_statusline3':   ['#eee0b7',   '250'],
            \ 'bg_diff_green':    ['#e4edc8',   '194'],
            \ 'bg_visual_green':  ['#dde5c2',   '194'],
            \ 'bg_diff_red':      ['#f8e4c9',   '217'],
            \ 'bg_visual_red':    ['#f0ddc3',   '217'],
            \ 'bg_diff_blue':     ['#e0e9d3',   '117'],
            \ 'bg_visual_blue':   ['#d9e1cc',   '117'],
            \ 'bg_visual_yellow': ['#f9eabf',   '226'],
            \ 'bg_current_word':  ['#f3eac7',   '229']
            \ }
    endif "}}}
  elseif a:background ==# 'medium' "{{{
    if &background ==# 'dark'
      let palette1 = {
            \ 'bg0':              ['#282828',   '235'],
            \ 'bg1':              ['#32302f',   '236'],
            \ 'bg2':              ['#32302f',   '236'],
            \ 'bg3':              ['#45403d',   '237'],
            \ 'bg4':              ['#45403d',   '237'],
            \ 'bg5':              ['#5a524c',   '239'],
            \ 'bg_statusline1':   ['#32302f',   '236'],
            \ 'bg_statusline2':   ['#3a3735',   '236'],
            \ 'bg_statusline3':   ['#504945',   '240'],
            \ 'bg_diff_green':    ['#34381b',   '22'],
            \ 'bg_visual_green':  ['#3b4439',   '22'],
            \ 'bg_diff_red':      ['#402120',   '52'],
            \ 'bg_visual_red':    ['#4c3432',   '52'],
            \ 'bg_diff_blue':     ['#0e363e',   '17'],
            \ 'bg_visual_blue':   ['#374141',   '17'],
            \ 'bg_visual_yellow': ['#4f422e',   '94'],
            \ 'bg_current_word':  ['#3c3836',   '237']
            \ }
    else
      let palette1 = {
            \ 'bg0':              ['#fbf1c7',   '229'],
            \ 'bg1':              ['#f4e8be',   '228'],
            \ 'bg2':              ['#f2e5bc',   '228'],
            \ 'bg3':              ['#eee0b7',   '223'],
            \ 'bg4':              ['#e5d5ad',   '223'],
            \ 'bg5':              ['#ddccab',   '250'],
            \ 'bg_statusline1':   ['#f2e5bc',   '223'],
            \ 'bg_statusline2':   ['#f2e5bc',   '223'],
            \ 'bg_statusline3':   ['#e5d5ad',   '250'],
            \ 'bg_diff_green':    ['#e6eabc',   '194'],
            \ 'bg_visual_green':  ['#dee2b6',   '194'],
            \ 'bg_diff_red':      ['#f9e0bb',   '217'],
            \ 'bg_visual_red':    ['#f1d9b5',   '217'],
            \ 'bg_diff_blue':     ['#e2e6c7',   '117'],
            \ 'bg_visual_blue':   ['#dadec0',   '117'],
            \ 'bg_visual_yellow': ['#fae7b3',   '226'],
            \ 'bg_current_word':  ['#f2e5bc',   '228']
            \ }
    endif "}}}
  else "{{{
    if &background ==# 'dark'
      let palette1 = {
            \ 'bg0':              ['#32302f',   '236'],
            \ 'bg1':              ['#3c3836',   '237'],
            \ 'bg2':              ['#3c3836',   '237'],
            \ 'bg3':              ['#504945',   '239'],
            \ 'bg4':              ['#504945',   '239'],
            \ 'bg5':              ['#665c54',   '241'],
            \ 'bg_statusline1':   ['#3c3836',   '237'],
            \ 'bg_statusline2':   ['#46413e',   '237'],
            \ 'bg_statusline3':   ['#5b534d',   '241'],
            \ 'bg_diff_green':    ['#3d4220',   '22'],
            \ 'bg_visual_green':  ['#424a3e',   '22'],
            \ 'bg_diff_red':      ['#472322',   '52'],
            \ 'bg_visual_red':    ['#543937',   '52'],
            \ 'bg_diff_blue':     ['#0f3a42',   '17'],
            \ 'bg_visual_blue':   ['#404946',   '17'],
            \ 'bg_visual_yellow': ['#574833',   '94'],
            \ 'bg_current_word':  ['#45403d',   '238']
            \ }
    else
      let palette1 = {
            \ 'bg0':              ['#f2e5bc',   '228'],
            \ 'bg1':              ['#eddeb5',   '223'],
            \ 'bg2':              ['#ebdbb2',   '228'],
            \ 'bg3':              ['#e6d5ae',   '223'],
            \ 'bg4':              ['#dac9a5',   '250'],
            \ 'bg5':              ['#d5c4a1',   '250'],
            \ 'bg_statusline1':   ['#ebdbb2',   '223'],
            \ 'bg_statusline2':   ['#ebdbb2',   '223'],
            \ 'bg_statusline3':   ['#dac9a5',   '250'],
            \ 'bg_diff_green':    ['#dfe1b4',   '194'],
            \ 'bg_visual_green':  ['#d7d9ae',   '194'],
            \ 'bg_diff_red':      ['#f7d9b9',   '217'],
            \ 'bg_visual_red':    ['#efd2b3',   '217'],
            \ 'bg_diff_blue':     ['#dbddbf',   '117'],
            \ 'bg_visual_blue':   ['#d3d5b8',   '117'],
            \ 'bg_visual_yellow': ['#f3deaa',   '226'],
            \ 'bg_current_word':  ['#ebdbb2',   '227']
            \ }
    endif
  endif "}}}
  if a:palette ==# 'material' "{{{
    if &background ==# 'dark'
      let palette2 = {
            \ 'fg0':              ['#d4be98',   '223'],
            \ 'fg1':              ['#ddc7a1',   '223'],
            \ 'red':              ['#ea6962',   '167'],
            \ 'orange':           ['#e78a4e',   '208'],
            \ 'yellow':           ['#d8a657',   '214'],
            \ 'green':            ['#a9b665',   '142'],
            \ 'aqua':             ['#89b482',   '108'],
            \ 'blue':             ['#7daea3',   '109'],
            \ 'purple':           ['#d3869b',   '175'],
            \ 'bg_red':           ['#ea6962',   '167'],
            \ 'bg_green':         ['#a9b665',   '142'],
            \ 'bg_yellow':        ['#d8a657',   '214']
            \ }
    else
      let palette2 = {
            \ 'fg0':              ['#654735',   '237'],
            \ 'fg1':              ['#4f3829',   '237'],
            \ 'red':              ['#c14a4a',   '88'],
            \ 'orange':           ['#c35e0a',   '130'],
            \ 'yellow':           ['#b47109',   '136'],
            \ 'green':            ['#6c782e',   '100'],
            \ 'aqua':             ['#4c7a5d',   '165'],
            \ 'blue':             ['#45707a',   '24'],
            \ 'purple':           ['#945e80',   '96'],
            \ 'bg_red':           ['#ae5858',   '88'],
            \ 'bg_green':         ['#6f8352',   '100'],
            \ 'bg_yellow':        ['#a96b2c',   '130']
            \ }
    endif "}}}
  elseif a:palette ==# 'mix' "{{{
    if &background ==# 'dark'
      let palette2 = {
            \ 'fg0':              ['#e2cca9',   '223'],
            \ 'fg1':              ['#e2cca9',   '223'],
            \ 'red':              ['#f2594b',   '167'],
            \ 'orange':           ['#f28534',   '208'],
            \ 'yellow':           ['#e9b143',   '214'],
            \ 'green':            ['#b0b846',   '142'],
            \ 'aqua':             ['#8bba7f',   '108'],
            \ 'blue':             ['#80aa9e',   '109'],
            \ 'purple':           ['#d3869b',   '175'],
            \ 'bg_red':           ['#db4740',   '167'],
            \ 'bg_green':         ['#b0b846',   '142'],
            \ 'bg_yellow':        ['#e9b143',   '214']
            \ }
    else
      let palette2 = {
            \ 'fg0':              ['#514036',   '237'],
            \ 'fg1':              ['#514036',   '237'],
            \ 'red':              ['#af2528',   '88'],
            \ 'orange':           ['#b94c07',   '130'],
            \ 'yellow':           ['#b4730e',   '136'],
            \ 'green':            ['#72761e',   '100'],
            \ 'aqua':             ['#477a5b',   '165'],
            \ 'blue':             ['#266b79',   '24'],
            \ 'purple':           ['#924f79',   '96'],
            \ 'bg_red':           ['#ae5858',   '88'],
            \ 'bg_green':         ['#6f8352',   '100'],
            \ 'bg_yellow':        ['#a96b2c',   '130']
            \ }
    endif "}}}
  else "{{{
    if &background ==# 'dark'
      let palette2 = {
            \ 'fg0':              ['#ebdbb2',   '223'],
            \ 'fg1':              ['#ebdbb2',   '223'],
            \ 'red':              ['#fb4934',   '167'],
            \ 'orange':           ['#fe8019',   '208'],
            \ 'yellow':           ['#fabd2f',   '214'],
            \ 'green':            ['#b8bb26',   '142'],
            \ 'aqua':             ['#8ec07c',   '108'],
            \ 'blue':             ['#83a598',   '109'],
            \ 'purple':           ['#d3869b',   '175'],
            \ 'bg_red':           ['#cc241d',   '124'],
            \ 'bg_green':         ['#b8bb26',   '106'],
            \ 'bg_yellow':        ['#fabd2f',   '172']
            \ }
    else
      let palette2 = {
            \ 'fg0':              ['#3c3836',   '237'],
            \ 'fg1':              ['#3c3836',   '237'],
            \ 'red':              ['#9d0006',   '88'],
            \ 'orange':           ['#af3a03',   '130'],
            \ 'yellow':           ['#b57614',   '136'],
            \ 'green':            ['#79740e',   '100'],
            \ 'aqua':             ['#427b58',   '165'],
            \ 'blue':             ['#076678',   '24'],
            \ 'purple':           ['#8f3f71',   '96'],
            \ 'bg_red':           ['#ae5858',   '88'],
            \ 'bg_green':         ['#6f8352',   '100'],
            \ 'bg_yellow':        ['#a96b2c',   '130']
            \ }
    endif
  endif "}}}
  if &background ==# 'dark' "{{{
    let palette3 = {
          \ 'grey0':            ['#7c6f64',   '243'],
          \ 'grey1':            ['#928374',   '245'],
          \ 'grey2':            ['#a89984',   '246'],
          \ 'none':             ['NONE',      'NONE']
          \ } "}}}
  else "{{{
    let palette3 = {
          \ 'grey0':            ['#a89984',   '246'],
          \ 'grey1':            ['#928374',   '245'],
          \ 'grey2':            ['#7c6f64',   '243'],
          \ 'none':             ['NONE',      'NONE']
          \ }
  endif "}}}
  return extend(extend(palette1, palette2), palette3)
endfunction "}}}
function! gruvbox_material#highlight(group, fg, bg, ...) "{{{
  execute 'highlight' a:group
        \ 'guifg=' . a:fg[0]
        \ 'guibg=' . a:bg[0]
        \ 'ctermfg=' . a:fg[1]
        \ 'ctermbg=' . a:bg[1]
        \ 'gui=' . (a:0 >= 1 ?
          \ a:1 :
          \ 'NONE')
        \ 'cterm=' . (a:0 >= 1 ?
          \ a:1 :
          \ 'NONE')
        \ 'guisp=' . (a:0 >= 2 ?
          \ a:2[0] :
          \ 'NONE')
endfunction "}}}
function! gruvbox_material#syn_gen(path, last_modified, msg) "{{{
  " Generate the `after/syntax` directory.
  let full_content = join(readfile(a:path), "\n") " Get the content of `colors/gruvbox-material.vim`
  let syn_content = []
  let rootpath = gruvbox_material#syn_rootpath(a:path) " Get the path to place the `after/syntax` directory.
  call substitute(full_content, '" syn_begin.\{-}syn_end', '\=add(syn_content, submatch(0))', 'g') " Search for 'syn_begin.\{-}syn_end' (non-greedy) and put all the search results into a list.
  for content in syn_content
    let syn_list = []
    call substitute(matchstr(matchstr(content, 'syn_begin:.\{-}{{{'), ':.\{-}{{{'), '\(\w\|-\)\+', '\=add(syn_list, submatch(0))', 'g') " Get the file types. }}}}}}
    for syn in syn_list
      call gruvbox_material#syn_write(rootpath, syn, content) " Write the content.
    endfor
  endfor
  call gruvbox_material#syn_write(rootpath, 'text', "let g:gruvbox_material_last_modified = '" . a:last_modified . "'") " Write the last modified time to `after/syntax/text/gruvbox_material.vim`
  let syntax_relative_path = has('win32') ? '\after\syntax' : '/after/syntax'
  if a:msg ==# 'update'
    echohl WarningMsg | echom '[gruvbox-material] Updated ' . rootpath . syntax_relative_path | echohl None
    call gruvbox_material#ftplugin_detect(a:path)
  else
    echohl WarningMsg | echom '[gruvbox-material] Generated ' . rootpath . syntax_relative_path | echohl None
    execute 'set runtimepath+=' . fnamemodify(rootpath, ':p') . 'after'
  endif
endfunction "}}}
function! gruvbox_material#syn_write(rootpath, syn, content) "{{{
  " Write the content.
  let syn_path = a:rootpath . '/after/syntax/' . a:syn . '/gruvbox_material.vim' " The path of a syntax file.
  " create a new file if it doesn't exist
  if !filereadable(syn_path)
    call mkdir(a:rootpath . '/after/syntax/' . a:syn, 'p')
    call writefile([
          \ "if !exists('g:colors_name') || g:colors_name !=# 'gruvbox-material'",
          \ '    finish',
          \ 'endif'
          \ ], syn_path, 'a') " Abort if the current color scheme is not gruvbox-material.
    call writefile([
          \ "if index(g:gruvbox_material_loaded_file_types, '" . a:syn . "') ==# -1",
          \ "    call add(g:gruvbox_material_loaded_file_types, '" . a:syn . "')",
          \ 'else',
          \ '    finish',
          \ 'endif'
          \ ], syn_path, 'a') " Abort if this file type has already been loaded.
  endif
  " If there is something like `call gruvbox_material#highlight()`, then add
  " code to initialize the palette and configuration.
  if matchstr(a:content, 'gruvbox_material#highlight') !=# ''
    call writefile([
          \ 'let s:configuration = gruvbox_material#get_configuration()',
          \ 'let s:palette = gruvbox_material#get_palette(s:configuration.background, s:configuration.palette)'
          \ ], syn_path, 'a')
  endif
  " Append the content.
  call writefile(split(a:content, "\n"), syn_path, 'a')
  " Add modeline.
  call writefile(['" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker fmr={{{,}}}:'], syn_path, 'a')
endfunction "}}}
function! gruvbox_material#syn_rootpath(path) "{{{
  " Get the directory where `after/syntax` is generated.
  if (matchstr(a:path, '^/usr/share') ==# '') " Return the plugin directory. The `after/syntax` directory should never be generated in `/usr/share`, even if you are a root user.
    return fnamemodify(a:path, ':p:h:h')
  else " Use vim home directory.
    if has('nvim')
      return stdpath('config')
    else
      return expand('~') . '/.vim'
    endif
  endif
endfunction "}}}
function! gruvbox_material#syn_newest(path, last_modified) "{{{
  " Determine whether the current syntax files are up to date by comparing the last modified time in `colors/gruvbox-material.vim` and `after/syntax/text/gruvbox_material.vim`.
  let rootpath = gruvbox_material#syn_rootpath(a:path)
  execute 'source ' . rootpath . '/after/syntax/text/gruvbox_material.vim'
  return a:last_modified ==# g:gruvbox_material_last_modified ? 1 : 0
endfunction "}}}
function! gruvbox_material#syn_clean(path, msg) "{{{
  " Clean the `after/syntax` directory.
  let rootpath = gruvbox_material#syn_rootpath(a:path)
  " Remove `after/syntax/**/gruvbox_material.vim`.
  let file_list = split(globpath(rootpath, 'after/syntax/**/gruvbox_material.vim'), "\n")
  for file in file_list
    call delete(file)
  endfor
  " Remove empty directories.
  let dir_list = split(globpath(rootpath, 'after/syntax/*'), "\n")
  for dir in dir_list
    if globpath(dir, '*') ==# ''
      call delete(dir, 'd')
    endif
  endfor
  if globpath(rootpath . '/after/syntax', '*') ==# ''
    call delete(rootpath . '/after/syntax', 'd')
  endif
  if globpath(rootpath . '/after', '*') ==# ''
    call delete(rootpath . '/after', 'd')
  endif
  if a:msg
    let syntax_relative_path = has('win32') ? '\after\syntax' : '/after/syntax'
    echohl WarningMsg | echom '[gruvbox-material] Cleaned ' . rootpath . syntax_relative_path | echohl None
  endif
endfunction "}}}
function! gruvbox_material#syn_exists(path) "{{{
  return filereadable(gruvbox_material#syn_rootpath(a:path) . '/after/syntax/text/gruvbox_material.vim')
endfunction "}}}
function! gruvbox_material#ftplugin_detect(path) "{{{
  " Check if /after/ftplugin exists.
  " This directory is generated in earlier versions, users may need to manually clean it.
  let rootpath = gruvbox_material#syn_rootpath(a:path)
  if filereadable(gruvbox_material#syn_rootpath(a:path) . '/after/ftplugin/text/gruvbox_material.vim')
    let ftplugin_relative_path = has('win32') ? '\after\ftplugin' : '/after/ftplugin'
    echohl WarningMsg | echom '[gruvbox-material] Detected ' . rootpath . ftplugin_relative_path | echohl None
    echohl WarningMsg | echom '[gruvbox-material] This directory is no longer used, you may need to manually delete it.' | echohl None
  endif
endfunction "}}}

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker fmr={{{,}}}:
