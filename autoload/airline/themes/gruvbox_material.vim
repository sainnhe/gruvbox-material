" =============================================================================
" URL: https://github.com/sainnhe/gruvbox-material/
" Filename: autoload/airline/themes/gruvbox_material.vim
" Author: Sainnhepark
" Email: sainnhe@gmail.com
" License: MIT License & Anti-996 License
" =============================================================================

let g:airline#themes#gruvbox_material#palette = {}
let g:airline#themes#gruvbox_material#palette.accents = {
      \ 'red': [ '#ea6962' , '' , 167 , '' , '' ],
      \ }

" Normal mode
let s:N1 = [ '#282828' , '#a89984' , 235 , 246 ] " mode
let s:N2 = [ '#dfbd8e' , '#665c54' , 223 , 241 ] " info
let s:N3 = [ '#dfbd8e' , '#3c3836' , 223 , 237 ] " statusline

let g:airline#themes#gruvbox_material#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#gruvbox_material#palette.normal_modified = {
      \ 'airline_c': [ '#dfbd8e' , '#3c3836' , 223 , 237 ] ,
      \ }

" Insert mode
let s:I1 = [ '#282828' , '#a9b665' , 235 , 142 ]
let s:I2 = [ '#dfbd8e' , '#665c54' , 223 , 241 ]
let s:I3 = [ '#dfbd8e' , '#3c3836' , 223 , 237 ]

let g:airline#themes#gruvbox_material#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#gruvbox_material#palette.insert_modified = {
      \ 'airline_c': [ '#dfbd8e' , '#3c3836' , 223 , 237 ] ,
      \ }

" Replace mode
let s:R1 = [ '#282828' , '#e78a4e' , 235 , 208 ]
let s:R2 = [ '#dfbd8e' , '#665c54' , 223 , 241 ]
let s:R3 = [ '#dfbd8e' , '#3c3836' , 223 , 237 ]

let g:airline#themes#gruvbox_material#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#gruvbox_material#palette.replace_modified = {
      \ 'airline_c': [ '#dfbd8e' , '#3c3836' , 223 , 237 ] ,
      \ }

" Visual mode
let s:V1 = [ '#282828' , '#ea6962' , 235 , 167 ]
let s:V2 = [ '#dfbd8e' , '#665c54' , 223 , 241 ]
let s:V3 = [ '#dfbd8e' , '#3c3836' , 223 , 237 ]

let g:airline#themes#gruvbox_material#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#gruvbox_material#palette.visual_modified = {
      \ 'airline_c': [ '#dfbd8e' , '#3c3836' , 223 , 237 ] ,
      \ }

" Inactive
let s:IA = [ '#dfbd8e' , '#3c3836' , 223 , 237 ]
let g:airline#themes#gruvbox_material#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
let g:airline#themes#gruvbox_material#palette.inactive_modified = {
      \ 'airline_c': [ '#dfbd8e' , '#3c3836' , 223 , 237 ] ,
      \ }

