#!/bin/env bash

ROOT_DIR=$(git rev-parse --show-toplevel)

mv -f $ROOT_DIR/colors/gruvbox_material.vim $ROOT_DIR/colors/gruvbox-material.vim

sed -ri\
    -e "s/let g:colors_name = 'gruvbox_material'/let g:colors_name = 'gruvbox-material'/"\
    $ROOT_DIR/colors/gruvbox-material.vim
