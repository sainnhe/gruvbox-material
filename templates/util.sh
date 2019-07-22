#!/bin/env bash

mv -f ../colors/gruvbox_material.vim ../colors/gruvbox-material.vim
mv -f ../colors/gruvbox_material_hard.vim ../colors/gruvbox-material-hard.vim
mv -f ../colors/gruvbox_material_soft.vim ../colors/gruvbox-material-soft.vim

sed -i\
    -re "s/let g:colors_name = 'gruvbox_material'/let g:colors_name = 'gruvbox-material'/"\
    ../colors/gruvbox-material.vim
sed -i\
    -re "s/let g:colors_name = 'gruvbox_material_hard'/let g:colors_name = 'gruvbox-material-hard'/"\
    ../colors/gruvbox-material-hard.vim
sed -i\
    -re "s/let g:colors_name = 'gruvbox_material_soft'/let g:colors_name = 'gruvbox-material-soft'/"\
    ../colors/gruvbox-material-soft.vim
