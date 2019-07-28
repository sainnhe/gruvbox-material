" ============================================================================
" File:        autoload/leaderf/colorscheme/gruvbox_material.vim
" Description: Gruvbox with Material Palette
" Author:      Sainnhe Park <sainnhe@gmail.com>
" Website:     https://github.com/sainnhe/gruvbox-material/
" Note:
" License:     MIT, Anti-996
" ============================================================================


let s:palette = {
            \   'stlName': {
            \       'gui': 'bold',
            \       'font': 'NONE',
            \       'guifg': '#282828',
            \       'guibg': '#a89984',
            \       'cterm': 'bold',
            \       'ctermfg': '235',
            \       'ctermbg': '246'
            \   },
            \   'stlCategory': {
            \       'gui': 'NONE',
            \       'font': 'NONE',
            \       'guifg': '#dfbd8e',
            \       'guibg': '#665c54',
            \       'cterm': 'NONE',
            \       'ctermfg': '223',
            \       'ctermbg': '241'
            \   },
            \   'stlNameOnlyMode': {
            \       'gui': 'NONE',
            \       'font': 'NONE',
            \       'guifg': '#dfbd8e',
            \       'guibg': '#504945',
            \       'cterm': 'NONE',
            \       'ctermfg': '223',
            \       'ctermbg': '239'
            \   },
            \   'stlFullPathMode': {
            \       'gui': 'NONE',
            \       'font': 'NONE',
            \       'guifg': '#dfbd8e',
            \       'guibg': '#504945',
            \       'cterm': 'NONE',
            \       'ctermfg': '223',
            \       'ctermbg': '239'
            \   },
            \   'stlFuzzyMode': {
            \       'gui': 'NONE',
            \       'font': 'NONE',
            \       'guifg': '#dfbd8e',
            \       'guibg': '#504945',
            \       'cterm': 'NONE',
            \       'ctermfg': '223',
            \       'ctermbg': '239'
            \   },
            \   'stlRegexMode': {
            \       'gui': 'NONE',
            \       'font': 'NONE',
            \       'guifg': '#dfbd8e',
            \       'guibg': '#504945',
            \       'cterm': 'NONE',
            \       'ctermfg': '223',
            \       'ctermbg': '239'
            \   },
            \   'stlCwd': {
            \       'gui': 'NONE',
            \       'font': 'NONE',
            \       'guifg': '#dfbd8e',
            \       'guibg': '#3c3836',
            \       'cterm': 'NONE',
            \       'ctermfg': '223',
            \       'ctermbg': '237'
            \   },
            \   'stlBlank': {
            \       'gui': 'NONE',
            \       'font': 'NONE',
            \       'guifg': '#dfbd8e',
            \       'guibg': '#3c3836',
            \       'cterm': 'NONE',
            \       'ctermfg': '223',
            \       'ctermbg': '237'
            \   },
            \   'stlLineInfo': {
            \       'gui': 'NONE',
            \       'font': 'NONE',
            \       'guifg': '#dfbd8e',
            \       'guibg': '#665c54',
            \       'cterm': 'NONE',
            \       'ctermfg': '223',
            \       'ctermbg': '241'
            \   },
            \   'stlTotal': {
            \       'gui': 'NONE',
            \       'font': 'NONE',
            \       'guifg': '#282828',
            \       'guibg': '#a89984',
            \       'cterm': 'bold',
            \       'ctermfg': '235',
            \       'ctermbg': '246'
            \   }
            \ }

let g:leaderf#colorscheme#default#palette = leaderf#colorscheme#mergePalette(s:palette)
