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
    let s:configuration.palette = 'material'
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
        let s:orange    = [ '#e78a4e', 208 ]
        let s:white     = [ '#ddc7a1', 223 ]
        let s:red_fg    = [ '#ea6962', 167 ]
        let s:blue_fg   = [ '#7daea3', 109 ]
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
        let s:orange    = [ '#a96b2c', 130 ]
        let s:white     = [ '#4f3829', 241 ]
        let s:red_fg    = [ '#c14a4a', 88 ]
        let s:blue_fg   = [ '#45707a', 24 ]
    endif
else
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
        let s:red       = [ '#cc241d', 167 ]
        let s:green     = [ '#b8bb26', 142 ]
        let s:orange    = [ '#fabd2f', 208 ]
        let s:white     = [ '#ebdbb2', 223 ]
        let s:red_fg    = [ '#fb4934', 88 ]
        let s:blue_fg   = [ '#83a598', 24 ]
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
        let s:red       = [ '#cc241d', 88 ]
        let s:green     = [ '#79740e', 100 ]
        let s:orange    = [ '#b57614', 130 ]
        let s:white     = [ '#3c3836', 241 ]
        let s:red_fg    = [ '#9d0006', 88 ]
        let s:blue_fg   = [ '#076678', 24 ]
    endif
endif
"}}}

"{{{Definition
let s:accents = s:red_fg

let s:normal_side_fg = s:dark
let s:normal_side_bg = s:grey
let s:normal_sub_fg = s:white
let s:normal_sub_bg = s:darkgrey
let s:normal_mid_fg = s:white
let s:normal_mid_bg = s:darker
let s:normal_mod_fg = s:blue_fg
let s:normal_mod_bg = s:darker

let s:insert_side_fg = s:dark
let s:insert_side_bg = s:green
let s:insert_sub_fg = s:white
let s:insert_sub_bg = s:darkgrey
let s:insert_mid_fg = s:white
let s:insert_mid_bg = s:darker
let s:insert_mod_fg = s:blue_fg
let s:insert_mod_bg = s:darker

let s:visual_side_fg = s:dark
let s:visual_side_bg = s:red
let s:visual_sub_fg = s:white
let s:visual_sub_bg = s:darkgrey
let s:visual_mid_fg = s:white
let s:visual_mid_bg = s:darker
let s:visual_mod_fg = s:blue_fg
let s:visual_mod_bg = s:darker

let s:replace_side_fg = s:dark
let s:replace_side_bg = s:orange
let s:replace_sub_fg = s:white
let s:replace_sub_bg = s:darkgrey
let s:replace_mid_fg = s:white
let s:replace_mid_bg = s:darker
let s:replace_mod_fg = s:blue_fg
let s:replace_mod_bg = s:darker

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

" Normal mode
let s:N1 = [ s:normal_side_fg[0] , s:normal_side_bg[0] , s:normal_side_fg[1] , s:normal_side_bg[1] ]
let s:N2 = [ s:normal_sub_fg[0] , s:normal_sub_bg[0] , s:normal_sub_fg[1] , s:normal_sub_bg[1] ]
let s:N3 = [ s:normal_mid_fg[0] , s:normal_mid_bg[0] , s:normal_mid_fg[1] , s:normal_mid_bg[1] ]

let g:airline#themes#gruvbox_material#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#gruvbox_material#palette.normal_modified = {
            \ 'airline_c': [ s:normal_mod_fg[0] , s:normal_mod_bg[0] , s:normal_mod_fg[1] , s:normal_mod_bg[1] ] ,
            \ }

" Insert mode
let s:I1 = [ s:insert_side_fg[0] , s:insert_side_bg[0] , s:insert_side_fg[1] , s:insert_side_bg[1] ]
let s:I2 = [ s:insert_sub_fg[0] , s:insert_sub_bg[0] , s:insert_sub_fg[1] , s:insert_sub_bg[1] ]
let s:I3 = [ s:insert_mid_fg[0] , s:insert_mid_bg[0] , s:insert_mid_fg[1] , s:insert_mid_bg[1] ]

let g:airline#themes#gruvbox_material#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#gruvbox_material#palette.insert_modified = {
            \ 'airline_c': [ s:insert_mod_fg[0] , s:insert_mod_bg[0] , s:insert_mod_fg[1] , s:insert_mod_bg[1] ] ,
            \ }

" Replace mode
let s:R1 = [ s:replace_side_fg[0] , s:replace_side_bg[0] , s:replace_side_fg[1] , s:replace_side_bg[1] ]
let s:R2 = [ s:replace_sub_fg[0] , s:replace_sub_bg[0] , s:replace_sub_fg[1] , s:replace_sub_bg[1] ]
let s:R3 = [ s:replace_mid_fg[0] , s:replace_mid_bg[0] , s:replace_mid_fg[1] , s:replace_mid_bg[1] ]

let g:airline#themes#gruvbox_material#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#gruvbox_material#palette.replace_modified = {
            \ 'airline_c': [ s:replace_mod_fg[0] , s:replace_mod_bg[0] , s:replace_mod_fg[1] , s:replace_mod_bg[1] ] ,
            \ }

" Visual mode
let s:V1 = [ s:visual_side_fg[0] , s:visual_side_bg[0] , s:visual_side_fg[1] , s:visual_side_bg[1] ]
let s:V2 = [ s:visual_sub_fg[0] , s:visual_sub_bg[0] , s:visual_sub_fg[1] , s:visual_sub_bg[1] ]
let s:V3 = [ s:visual_mid_fg[0] , s:visual_mid_bg[0] , s:visual_mid_fg[1] , s:visual_mid_bg[1] ]

let g:airline#themes#gruvbox_material#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#gruvbox_material#palette.visual_modified = {
            \ 'airline_c': [ s:visual_mod_fg[0] , s:visual_mod_bg[0] , s:visual_mod_fg[1] , s:visual_mod_bg[1] ] ,
            \ }

" Inactive
let s:IA1 = [ s:inactive_side_fg[0] , s:inactive_side_bg[0] , s:inactive_side_fg[1] , s:inactive_side_bg[1] ]
let s:IA2 = [ s:inactive_sub_fg[0] , s:inactive_sub_bg[0] , s:inactive_sub_fg[1] , s:inactive_sub_bg[1] ]
let s:IA3 = [ s:inactive_mid_fg[0] , s:inactive_mid_bg[0] , s:inactive_mid_fg[1] , s:inactive_mid_bg[1] ]

let g:airline#themes#gruvbox_material#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#gruvbox_material#palette.inactive_modified = {
            \ 'airline_c': [ s:inactive_mod_fg[0] , s:inactive_mod_bg[0] , s:inactive_mod_fg[1] , s:inactive_mod_bg[1] ] ,
            \ }
"}}}

