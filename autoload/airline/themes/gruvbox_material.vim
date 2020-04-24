" =============================================================================
" URL: https://github.com/sainnhe/gruvbox-material
" Filename: autoload/airline/themes/gruvbox_material.vim
" Author: sainnhe
" Email: sainnhe@gmail.com
" License: MIT License
" =============================================================================

"{{{Palette
let s:configuration = {}
let s:configuration.background = get(g:, 'gruvbox_material_background', 'medium')
let s:configuration.palette = get(g:, 'gruvbox_material_palette', 'material')

if type(s:configuration.palette) == 4
  let s:configuration.palette = 'mix'
endif

if s:configuration.palette ==# 'material'
  if &background ==# 'dark'
    if s:configuration.background ==# 'hard'
      let s:darker    = [ '#282828', 235 ]
      let s:darkgrey  = [ '#504945', 239 ]
    elseif s:configuration.background ==# 'medium'
      let s:darker    = [ '#32302f', 236 ]
      let s:darkgrey  = [ '#5a524c', 240 ]
    elseif s:configuration.background ==# 'soft'
      let s:darker    = [ '#3c3836', 237 ]
      let s:darkgrey  = [ '#665c54', 241 ]
    endif
    let s:dark      = [ '#282828', 235 ]
    let s:grey      = [ '#a89984', 246 ]
    let s:red       = [ '#ea6962', 167 ]
    let s:green     = [ '#a9b665', 142 ]
    let s:yellow    = [ '#e78a4e', 208 ]
    let s:white     = [ '#ddc7a1', 223 ]
    let s:red_fg    = [ '#ea6962', 167 ]
    let s:green_fg  = [ '#a9b665', 142 ]
    let s:blue      = [ '#7daea3', 109 ]
  else
    if s:configuration.background ==# 'hard'
      let s:darker    = [ '#f3eac7', 223 ]
      let s:darkgrey  = [ '#eee0b7', 250 ]
    elseif s:configuration.background ==# 'medium'
      let s:darker    = [ '#f2e5bc', 223 ]
      let s:darkgrey  = [ '#e5d5ad', 250 ]
    elseif s:configuration.background ==# 'soft'
      let s:darker    = [ '#ebdbb2', 223 ]
      let s:darkgrey  = [ '#dac9a5', 250 ]
    endif
    let s:dark      = [ '#ebdbb2', 223 ]
    let s:grey      = [ '#7c6f64', 243 ]
    let s:red       = [ '#ae5858', 88 ]
    let s:green     = [ '#6f8352', 100 ]
    let s:yellow    = [ '#a96b2c', 130 ]
    let s:white     = [ '#4f3829', 241 ]
    let s:red_fg    = [ '#c14a4a', 88 ]
    let s:green_fg  = [ '#6c782e', 100 ]
    let s:blue      = [ '#45707a', 24 ]
  endif
elseif s:configuration.palette ==# 'mix'
  if &background ==# 'dark'
    if s:configuration.background ==# 'hard'
      let s:darker    = [ '#282828', 235 ]
      let s:darkgrey  = [ '#504945', 239 ]
    elseif s:configuration.background ==# 'medium'
      let s:darker    = [ '#32302f', 236 ]
      let s:darkgrey  = [ '#5a524c', 240 ]
    elseif s:configuration.background ==# 'soft'
      let s:darker    = [ '#3c3836', 237 ]
      let s:darkgrey  = [ '#665c54', 241 ]
    endif
    let s:dark      = [ '#282828', 235 ]
    let s:grey      = [ '#a89984', 246 ]
    let s:red       = [ '#f2594b', 167 ]
    let s:green     = [ '#b0b846', 142 ]
    let s:yellow    = [ '#e9b143', 208 ]
    let s:white     = [ '#e2cca9', 223 ]
    let s:red_fg    = [ '#f2594b', 88 ]
    let s:green_fg  = [ '#b0b846', 142 ]
    let s:blue      = [ '#80aa9e', 24 ]
  else
    if s:configuration.background ==# 'hard'
      let s:darker    = [ '#f3eac7', 223 ]
      let s:darkgrey  = [ '#eee0b7', 250 ]
    elseif s:configuration.background ==# 'medium'
      let s:darker    = [ '#f2e5bc', 223 ]
      let s:darkgrey  = [ '#e5d5ad', 250 ]
    elseif s:configuration.background ==# 'soft'
      let s:darker    = [ '#ebdbb2', 223 ]
      let s:darkgrey  = [ '#dac9a5', 250 ]
    endif
    let s:dark      = [ '#ebdbb2', 223 ]
    let s:grey      = [ '#7c6f64', 243 ]
    let s:red       = [ '#ae5858', 88 ]
    let s:green     = [ '#6f8352', 100 ]
    let s:yellow    = [ '#a96b2c', 130 ]
    let s:white     = [ '#514036', 241 ]
    let s:red_fg    = [ '#af2528', 88 ]
    let s:green_fg  = [ '#72761e', 100 ]
    let s:blue      = [ '#266b79', 24 ]
  endif
elseif s:configuration.palette ==# 'original'
  if &background ==# 'dark'
    if s:configuration.background ==# 'hard'
      let s:darker    = [ '#282828', 235 ]
      let s:darkgrey  = [ '#504945', 239 ]
    elseif s:configuration.background ==# 'medium'
      let s:darker    = [ '#32302f', 236 ]
      let s:darkgrey  = [ '#5a524c', 240 ]
    elseif s:configuration.background ==# 'soft'
      let s:darker    = [ '#3c3836', 237 ]
      let s:darkgrey  = [ '#665c54', 241 ]
    endif
    let s:dark      = [ '#282828', 235 ]
    let s:grey      = [ '#a89984', 246 ]
    let s:red       = [ '#fb4934', 167 ]
    let s:green     = [ '#b8bb26', 142 ]
    let s:yellow    = [ '#fabd2f', 208 ]
    let s:white     = [ '#ebdbb2', 223 ]
    let s:red_fg    = [ '#fb4934', 88 ]
    let s:green_fg  = [ '#b8bb26', 142 ]
    let s:blue      = [ '#83a598', 24 ]
  else
    if s:configuration.background ==# 'hard'
      let s:darker    = [ '#f3eac7', 223 ]
      let s:darkgrey  = [ '#eee0b7', 250 ]
    elseif s:configuration.background ==# 'medium'
      let s:darker    = [ '#f2e5bc', 223 ]
      let s:darkgrey  = [ '#e5d5ad', 250 ]
    elseif s:configuration.background ==# 'soft'
      let s:darker    = [ '#ebdbb2', 223 ]
      let s:darkgrey  = [ '#dac9a5', 250 ]
    endif
    let s:dark      = [ '#ebdbb2', 223 ]
    let s:grey      = [ '#7c6f64', 243 ]
    let s:red       = [ '#ae5858', 88 ]
    let s:green     = [ '#6f8352', 100 ]
    let s:yellow    = [ '#a96b2c', 130 ]
    let s:white     = [ '#3c3836', 241 ]
    let s:red_fg    = [ '#9d0006', 88 ]
    let s:green_fg  = [ '#79740e', 100 ]
    let s:blue      = [ '#076678', 24 ]
  endif
endif
"}}}

"{{{Definition
let s:accents = s:red_fg

let s:error_fg = s:dark
let s:error_bg = s:red
let s:warning_fg = s:dark
let s:warning_bg = s:yellow

let s:tab_sel_fg = s:dark
let s:tab_sel_bg = s:grey

let s:normal_side_fg = s:dark
let s:normal_side_bg = s:grey
let s:normal_sub_fg = s:white
let s:normal_sub_bg = s:darkgrey
let s:normal_mid_fg = s:white
let s:normal_mid_bg = s:darker
let s:normal_mod_fg = s:green_fg
let s:normal_mod_bg = s:darker

let s:insert_side_fg = s:dark
let s:insert_side_bg = s:green
let s:insert_sub_fg = s:white
let s:insert_sub_bg = s:darkgrey
let s:insert_mid_fg = s:white
let s:insert_mid_bg = s:darker
let s:insert_mod_fg = s:green_fg
let s:insert_mod_bg = s:darker

let s:visual_side_fg = s:dark
let s:visual_side_bg = s:red
let s:visual_sub_fg = s:white
let s:visual_sub_bg = s:darkgrey
let s:visual_mid_fg = s:white
let s:visual_mid_bg = s:darker
let s:visual_mod_fg = s:green_fg
let s:visual_mod_bg = s:darker

let s:replace_side_fg = s:dark
let s:replace_side_bg = s:yellow
let s:replace_sub_fg = s:white
let s:replace_sub_bg = s:darkgrey
let s:replace_mid_fg = s:white
let s:replace_mid_bg = s:darker
let s:replace_mod_fg = s:green_fg
let s:replace_mod_bg = s:darker

let s:commandline_side_fg = s:dark
let s:commandline_side_bg = s:blue
let s:commandline_sub_fg = s:white
let s:commandline_sub_bg = s:darkgrey
let s:commandline_mid_fg = s:white
let s:commandline_mid_bg = s:darker
let s:commandline_mod_fg = s:green_fg
let s:commandline_mod_bg = s:darker

let s:inactive_side_fg = s:white
let s:inactive_side_bg = s:darkgrey
let s:inactive_sub_fg = s:white
let s:inactive_sub_bg = s:darkgrey
let s:inactive_mid_fg = s:white
let s:inactive_mid_bg = s:darker
let s:inactive_mod_fg = s:white
let s:inactive_mod_bg = s:darker
"}}}

"{{{Implementation
let g:airline#themes#gruvbox_material#palette = {}
let g:airline#themes#gruvbox_material#palette.accents = {
      \ 'red': [ s:accents[0] , '' , s:accents[1] , '' , '' ],
      \ }

" TabLine
let g:airline#themes#gruvbox_material#palette.tabline = {}
let g:airline#themes#gruvbox_material#palette.tabline.airline_tabsel = [ s:tab_sel_fg[0] , s:tab_sel_bg[0] , s:tab_sel_fg[1] , s:tab_sel_bg[1] , 'bold' ]
let g:airline#themes#gruvbox_material#palette.tabline.airline_tabsel_right = [ s:tab_sel_fg[0] , s:tab_sel_bg[0] , s:tab_sel_fg[1] , s:tab_sel_bg[1] , 'bold' ]

" Normal mode
let s:N1 = [ s:normal_side_fg[0] , s:normal_side_bg[0] , s:normal_side_fg[1] , s:normal_side_bg[1] ]
let s:N2 = [ s:normal_sub_fg[0] , s:normal_sub_bg[0] , s:normal_sub_fg[1] , s:normal_sub_bg[1] ]
let s:N3 = [ s:normal_mid_fg[0] , s:normal_mid_bg[0] , s:normal_mid_fg[1] , s:normal_mid_bg[1] ]

let g:airline#themes#gruvbox_material#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#gruvbox_material#palette.normal.airline_error = [ s:error_fg[0] , s:error_bg[0] , s:error_fg[1] , s:error_bg[1] ]
let g:airline#themes#gruvbox_material#palette.normal.airline_warning = [ s:warning_fg[0] , s:warning_bg[0] , s:warning_fg[1] , s:warning_bg[1] ]
let g:airline#themes#gruvbox_material#palette.normal.airline_error_inactive = [ s:error_fg[0] , s:error_bg[0] , s:error_fg[1] , s:error_bg[1] ]
let g:airline#themes#gruvbox_material#palette.normal.airline_warning_inactive = [ s:warning_fg[0] , s:warning_bg[0] , s:warning_fg[1] , s:warning_bg[1] ]
let g:airline#themes#gruvbox_material#palette.normal.airline_error_red = [ s:error_fg[0] , s:error_bg[0] , s:error_fg[1] , s:error_bg[1] ]
let g:airline#themes#gruvbox_material#palette.normal.airline_warning_red = [ s:warning_fg[0] , s:warning_bg[0] , s:warning_fg[1] , s:warning_bg[1] ]
let g:airline#themes#gruvbox_material#palette.normal_modified = {
      \ 'airline_c': [ s:normal_mod_fg[0] , s:normal_mod_bg[0] , s:normal_mod_fg[1] , s:normal_mod_bg[1] ] ,
      \ }

" Insert mode
let s:I1 = [ s:insert_side_fg[0] , s:insert_side_bg[0] , s:insert_side_fg[1] , s:insert_side_bg[1] ]
let s:I2 = [ s:insert_sub_fg[0] , s:insert_sub_bg[0] , s:insert_sub_fg[1] , s:insert_sub_bg[1] ]
let s:I3 = [ s:insert_mid_fg[0] , s:insert_mid_bg[0] , s:insert_mid_fg[1] , s:insert_mid_bg[1] ]

let g:airline#themes#gruvbox_material#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#gruvbox_material#palette.insert.airline_error = [ s:error_fg[0] , s:error_bg[0] , s:error_fg[1] , s:error_bg[1] ]
let g:airline#themes#gruvbox_material#palette.insert.airline_warning = [ s:warning_fg[0] , s:warning_bg[0] , s:warning_fg[1] , s:warning_bg[1] ]
let g:airline#themes#gruvbox_material#palette.insert.airline_error_inactive = [ s:error_fg[0] , s:error_bg[0] , s:error_fg[1] , s:error_bg[1] ]
let g:airline#themes#gruvbox_material#palette.insert.airline_warning_inactive = [ s:warning_fg[0] , s:warning_bg[0] , s:warning_fg[1] , s:warning_bg[1] ]
let g:airline#themes#gruvbox_material#palette.insert.airline_error_red = [ s:error_fg[0] , s:error_bg[0] , s:error_fg[1] , s:error_bg[1] ]
let g:airline#themes#gruvbox_material#palette.insert.airline_warning_red = [ s:warning_fg[0] , s:warning_bg[0] , s:warning_fg[1] , s:warning_bg[1] ]
let g:airline#themes#gruvbox_material#palette.insert_modified = {
      \ 'airline_c': [ s:insert_mod_fg[0] , s:insert_mod_bg[0] , s:insert_mod_fg[1] , s:insert_mod_bg[1] ] ,
      \ }

" Replace mode
let s:R1 = [ s:replace_side_fg[0] , s:replace_side_bg[0] , s:replace_side_fg[1] , s:replace_side_bg[1] ]
let s:R2 = [ s:replace_sub_fg[0] , s:replace_sub_bg[0] , s:replace_sub_fg[1] , s:replace_sub_bg[1] ]
let s:R3 = [ s:replace_mid_fg[0] , s:replace_mid_bg[0] , s:replace_mid_fg[1] , s:replace_mid_bg[1] ]

let g:airline#themes#gruvbox_material#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#gruvbox_material#palette.replace.airline_error = [ s:error_fg[0] , s:error_bg[0] , s:error_fg[1] , s:error_bg[1] ]
let g:airline#themes#gruvbox_material#palette.replace.airline_warning = [ s:warning_fg[0] , s:warning_bg[0] , s:warning_fg[1] , s:warning_bg[1] ]
let g:airline#themes#gruvbox_material#palette.replace.airline_error_inactive = [ s:error_fg[0] , s:error_bg[0] , s:error_fg[1] , s:error_bg[1] ]
let g:airline#themes#gruvbox_material#palette.replace.airline_warning_inactive = [ s:warning_fg[0] , s:warning_bg[0] , s:warning_fg[1] , s:warning_bg[1] ]
let g:airline#themes#gruvbox_material#palette.replace.airline_error_red = [ s:error_fg[0] , s:error_bg[0] , s:error_fg[1] , s:error_bg[1] ]
let g:airline#themes#gruvbox_material#palette.replace.airline_warning_red = [ s:warning_fg[0] , s:warning_bg[0] , s:warning_fg[1] , s:warning_bg[1] ]
let g:airline#themes#gruvbox_material#palette.replace_modified = {
      \ 'airline_c': [ s:replace_mod_fg[0] , s:replace_mod_bg[0] , s:replace_mod_fg[1] , s:replace_mod_bg[1] ] ,
      \ }

" Visual mode
let s:V1 = [ s:visual_side_fg[0] , s:visual_side_bg[0] , s:visual_side_fg[1] , s:visual_side_bg[1] ]
let s:V2 = [ s:visual_sub_fg[0] , s:visual_sub_bg[0] , s:visual_sub_fg[1] , s:visual_sub_bg[1] ]
let s:V3 = [ s:visual_mid_fg[0] , s:visual_mid_bg[0] , s:visual_mid_fg[1] , s:visual_mid_bg[1] ]

let g:airline#themes#gruvbox_material#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#gruvbox_material#palette.visual.airline_error = [ s:error_fg[0] , s:error_bg[0] , s:error_fg[1] , s:error_bg[1] ]
let g:airline#themes#gruvbox_material#palette.visual.airline_warning = [ s:warning_fg[0] , s:warning_bg[0] , s:warning_fg[1] , s:warning_bg[1] ]
let g:airline#themes#gruvbox_material#palette.visual.airline_error_inactive = [ s:error_fg[0] , s:error_bg[0] , s:error_fg[1] , s:error_bg[1] ]
let g:airline#themes#gruvbox_material#palette.visual.airline_warning_inactive = [ s:warning_fg[0] , s:warning_bg[0] , s:warning_fg[1] , s:warning_bg[1] ]
let g:airline#themes#gruvbox_material#palette.visual.airline_error_red = [ s:error_fg[0] , s:error_bg[0] , s:error_fg[1] , s:error_bg[1] ]
let g:airline#themes#gruvbox_material#palette.visual.airline_warning_red = [ s:warning_fg[0] , s:warning_bg[0] , s:warning_fg[1] , s:warning_bg[1] ]
let g:airline#themes#gruvbox_material#palette.visual_modified = {
      \ 'airline_c': [ s:visual_mod_fg[0] , s:visual_mod_bg[0] , s:visual_mod_fg[1] , s:visual_mod_bg[1] ] ,
      \ }

" Command Line mode
let s:R1 = [ s:commandline_side_fg[0] , s:commandline_side_bg[0] , s:commandline_side_fg[1] , s:commandline_side_bg[1] ]
let s:R2 = [ s:commandline_sub_fg[0] , s:commandline_sub_bg[0] , s:commandline_sub_fg[1] , s:commandline_sub_bg[1] ]
let s:R3 = [ s:commandline_mid_fg[0] , s:commandline_mid_bg[0] , s:commandline_mid_fg[1] , s:commandline_mid_bg[1] ]

let g:airline#themes#gruvbox_material#palette.commandline = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#gruvbox_material#palette.commandline.airline_error = [ s:error_fg[0] , s:error_bg[0] , s:error_fg[1] , s:error_bg[1] ]
let g:airline#themes#gruvbox_material#palette.commandline.airline_warning = [ s:warning_fg[0] , s:warning_bg[0] , s:warning_fg[1] , s:warning_bg[1] ]
let g:airline#themes#gruvbox_material#palette.commandline.airline_error_inactive = [ s:error_fg[0] , s:error_bg[0] , s:error_fg[1] , s:error_bg[1] ]
let g:airline#themes#gruvbox_material#palette.commandline.airline_warning_inactive = [ s:warning_fg[0] , s:warning_bg[0] , s:warning_fg[1] , s:warning_bg[1] ]
let g:airline#themes#gruvbox_material#palette.commandline.airline_error_red = [ s:error_fg[0] , s:error_bg[0] , s:error_fg[1] , s:error_bg[1] ]
let g:airline#themes#gruvbox_material#palette.commandline.airline_warning_red = [ s:warning_fg[0] , s:warning_bg[0] , s:warning_fg[1] , s:warning_bg[1] ]
let g:airline#themes#gruvbox_material#palette.commandline_modified = {
      \ 'airline_c': [ s:commandline_mod_fg[0] , s:commandline_mod_bg[0] , s:commandline_mod_fg[1] , s:commandline_mod_bg[1] ] ,
      \ }

" Inactive
let s:IA1 = [ s:inactive_side_fg[0] , s:inactive_side_bg[0] , s:inactive_side_fg[1] , s:inactive_side_bg[1] ]
let s:IA2 = [ s:inactive_sub_fg[0] , s:inactive_sub_bg[0] , s:inactive_sub_fg[1] , s:inactive_sub_bg[1] ]
let s:IA3 = [ s:inactive_mid_fg[0] , s:inactive_mid_bg[0] , s:inactive_mid_fg[1] , s:inactive_mid_bg[1] ]

let g:airline#themes#gruvbox_material#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#gruvbox_material#palette.inactive.airline_error = [ s:error_fg[0] , s:error_bg[0] , s:error_fg[1] , s:error_bg[1] ]
let g:airline#themes#gruvbox_material#palette.inactive.airline_warning = [ s:warning_fg[0] , s:warning_bg[0] , s:warning_fg[1] , s:warning_bg[1] ]
let g:airline#themes#gruvbox_material#palette.inactive.airline_error_inactive = [ s:error_fg[0] , s:error_bg[0] , s:error_fg[1] , s:error_bg[1] ]
let g:airline#themes#gruvbox_material#palette.inactive.airline_warning_inactive = [ s:warning_fg[0] , s:warning_bg[0] , s:warning_fg[1] , s:warning_bg[1] ]
let g:airline#themes#gruvbox_material#palette.inactive.airline_error_red = [ s:error_fg[0] , s:error_bg[0] , s:error_fg[1] , s:error_bg[1] ]
let g:airline#themes#gruvbox_material#palette.inactive.airline_warning_red = [ s:warning_fg[0] , s:warning_bg[0] , s:warning_fg[1] , s:warning_bg[1] ]
let g:airline#themes#gruvbox_material#palette.inactive_modified = {
      \ 'airline_c': [ s:inactive_mod_fg[0] , s:inactive_mod_bg[0] , s:inactive_mod_fg[1] , s:inactive_mod_bg[1] ] ,
      \ }
"}}}

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker fmr={{{,}}}:
