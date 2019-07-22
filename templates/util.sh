#!/bin/env bash

ROOT_DIR=$(git rev-parse --show-toplevel)

mv -f $ROOT_DIR/colors/gruvbox_material.vim $ROOT_DIR/colors/gruvbox-material.vim
mv -f $ROOT_DIR/colors/gruvbox_material_hard.vim $ROOT_DIR/colors/gruvbox-material-hard.vim
mv -f $ROOT_DIR/colors/gruvbox_material_soft.vim $ROOT_DIR/colors/gruvbox-material-soft.vim

sed -i\
    -re "s/let g:colors_name = 'gruvbox_material'/let g:colors_name = 'gruvbox-material'/"\
    $ROOT_DIR/colors/gruvbox-material.vim
sed -i\
    -re "s/let g:colors_name = 'gruvbox_material_hard'/let g:colors_name = 'gruvbox-material-hard'/"\
    $ROOT_DIR/colors/gruvbox-material-hard.vim
sed -i\
    -re "s/let g:colors_name = 'gruvbox_material_soft'/let g:colors_name = 'gruvbox-material-soft'/"\
    $ROOT_DIR/colors/gruvbox-material-soft.vim
