" =============================================================================
" URL: https://github.com/sainnhe/gruvbox-material/
" Filename: autoload/airline/themes/gruvbox_material.vim
" Author: Sainnhepark
" Email: sainnhe@gmail.com
" License: MIT License & Anti-996 License
" =============================================================================

if &background ==# 'light'
    if get(g:, 'gruvbox_material_background', 'medium') ==# 'hard'
        let s:darker    = '#fbf1c7'
        let s:darkgrey  = '#ebdbb2'
    elseif get(g:, 'gruvbox_material_background', 'medium') ==# 'medium'
        let s:darker    = '#f2e5bc'
        let s:darkgrey  = '#d5c4a1'
    elseif get(g:, 'gruvbox_material_background', 'medium') ==# 'soft'
        let s:darker    = '#ebdbb2'
        let s:darkgrey  = '#d5c4a1'
    endif
else
    if get(g:, 'gruvbox_material_background', 'medium') ==# 'hard'
        let s:darker    = '#282828'
        let s:darkgrey  = '#504945'
    elseif get(g:, 'gruvbox_material_background', 'medium') ==# 'medium'
        let s:darker    = '#32302f'
        let s:darkgrey  = '#665c54'
    elseif get(g:, 'gruvbox_material_background', 'medium') ==# 'soft'
        let s:darker    = '#3c3836'
        let s:darkgrey  = '#665c54'
    endif
endif

if &background ==# 'light'
    let g:airline#themes#gruvbox_material#palette = {}
    let g:airline#themes#gruvbox_material#palette.accents = {
                \ 'red': [ '#ae5858' , '' , 88 , '' , '' ],
                \ }

    " Normal mode
    let s:N1 = [ '#ebdbb2' , '#7c6f64' , 223 , 243 ] " mode
    let s:N2 = [ '#665c54' , s:darkgrey , 241 , 250 ] " info
    let s:N3 = [ '#665c54' , s:darker , 241 , 223 ] " statusline

    let g:airline#themes#gruvbox_material#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
    let g:airline#themes#gruvbox_material#palette.normal_modified = {
                \ 'airline_c': [ '#665c54' , s:darker , 241 , 223 ] ,
                \ }

    " Insert mode
    let s:I1 = [ '#ebdbb2' , '#6f8352' , 223 , 100 ]
    let s:I2 = [ '#665c54' , s:darkgrey , 241 , 250 ]
    let s:I3 = [ '#665c54' , s:darker , 241 , 223 ]

    let g:airline#themes#gruvbox_material#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
    let g:airline#themes#gruvbox_material#palette.insert_modified = {
                \ 'airline_c': [ '#665c54' , s:darker , 241 , 223 ] ,
                \ }

    " Replace mode
    let s:R1 = [ '#ebdbb2' , '#a96b2c' , 223 , 130 ]
    let s:R2 = [ '#665c54' , s:darkgrey , 241 , 250 ]
    let s:R3 = [ '#665c54' , s:darker , 241 , 223 ]

    let g:airline#themes#gruvbox_material#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
    let g:airline#themes#gruvbox_material#palette.replace_modified = {
                \ 'airline_c': [ '#665c54' , s:darker , 241 , 223 ] ,
                \ }

    " Visual mode
    let s:V1 = [ '#ebdbb2' , '#ae5858' , 223 , 88 ]
    let s:V2 = [ '#665c54' , s:darkgrey , 241 , 250 ]
    let s:V3 = [ '#665c54' , s:darker , 241 , 223 ]

    let g:airline#themes#gruvbox_material#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
    let g:airline#themes#gruvbox_material#palette.visual_modified = {
                \ 'airline_c': [ '#665c54' , s:darker , 241 , 223 ] ,
                \ }

    " Inactive
    let s:IA = [ '#665c54' , s:darker , 241 , 223 ]
    let g:airline#themes#gruvbox_material#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
    let g:airline#themes#gruvbox_material#palette.inactive_modified = {
                \ 'airline_c': [ '#665c54' , s:darker , 241 , 223 ] ,
                \ }
else
    let g:airline#themes#gruvbox_material#palette = {}
    let g:airline#themes#gruvbox_material#palette.accents = {
                \ 'red': [ '#ea6962' , '' , 167 , '' , '' ],
                \ }

    " Normal mode
    let s:N1 = [ '#282828' , '#a89984' , 235 , 246 ] " mode
    let s:N2 = [ '#dfbd8e' , s:darkgrey , 223 , 241 ] " info
    let s:N3 = [ '#dfbd8e' , s:darker , 223 , 237 ] " statusline

    let g:airline#themes#gruvbox_material#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
    let g:airline#themes#gruvbox_material#palette.normal_modified = {
                \ 'airline_c': [ '#dfbd8e' , s:darker , 223 , 237 ] ,
                \ }

    " Insert mode
    let s:I1 = [ '#282828' , '#a9b665' , 235 , 142 ]
    let s:I2 = [ '#dfbd8e' , s:darkgrey , 223 , 241 ]
    let s:I3 = [ '#dfbd8e' , s:darker , 223 , 237 ]

    let g:airline#themes#gruvbox_material#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
    let g:airline#themes#gruvbox_material#palette.insert_modified = {
                \ 'airline_c': [ '#dfbd8e' , s:darker , 223 , 237 ] ,
                \ }

    " Replace mode
    let s:R1 = [ '#282828' , '#e78a4e' , 235 , 208 ]
    let s:R2 = [ '#dfbd8e' , s:darkgrey , 223 , 241 ]
    let s:R3 = [ '#dfbd8e' , s:darker , 223 , 237 ]

    let g:airline#themes#gruvbox_material#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
    let g:airline#themes#gruvbox_material#palette.replace_modified = {
                \ 'airline_c': [ '#dfbd8e' , s:darker , 223 , 237 ] ,
                \ }

    " Visual mode
    let s:V1 = [ '#282828' , '#ea6962' , 235 , 167 ]
    let s:V2 = [ '#dfbd8e' , s:darkgrey , 223 , 241 ]
    let s:V3 = [ '#dfbd8e' , s:darker , 223 , 237 ]

    let g:airline#themes#gruvbox_material#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
    let g:airline#themes#gruvbox_material#palette.visual_modified = {
                \ 'airline_c': [ '#dfbd8e' , s:darker , 223 , 237 ] ,
                \ }

    " Inactive
    let s:IA = [ '#dfbd8e' , s:darker , 223 , 237 ]
    let g:airline#themes#gruvbox_material#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
    let g:airline#themes#gruvbox_material#palette.inactive_modified = {
                \ 'airline_c': [ '#dfbd8e' , s:darker , 223 , 237 ] ,
                \ }
endif
