" ============================================================================
" File:        autoload/leaderf/colorscheme/popup/gruvbox_material.vim
" Description: Gruvbox with Material Palette
" Author:      Sainnhe Park <sainnhe@gmail.com>
" Website:     https://github.com/sainnhe/gruvbox-material/
" Note:
" License:     MIT, Anti-996
" ============================================================================

if &background ==# 'dark'
    if get(g:, 'gruvbox_material_background', 'medium') ==# 'hard'
        highlight Lf_hl_popup_inputText guifg=#ddc7a1 guibg=#3c3836 gui=NONE ctermfg=223 ctermbg=237 cterm=NONE
        highlight Lf_hl_popup_window guifg=#ddc7a1 guibg=#3c3836 gui=NONE ctermfg=223 ctermbg=237 cterm=NONE
    elseif get(g:, 'gruvbox_material_background', 'medium') ==# 'medium'
        highlight Lf_hl_popup_inputText guifg=#ddc7a1 guibg=#504945 gui=NONE ctermfg=223 ctermbg=239 cterm=NONE
        highlight Lf_hl_popup_window guifg=#ddc7a1 guibg=#504945 gui=NONE ctermfg=223 ctermbg=239 cterm=NONE
    elseif get(g:, 'gruvbox_material_background', 'medium') ==# 'soft'
        highlight Lf_hl_popup_inputText guifg=#ddc7a1 guibg=#504945 gui=NONE ctermfg=223 ctermbg=239 cterm=NONE
        highlight Lf_hl_popup_window guifg=#ddc7a1 guibg=#504945 gui=NONE ctermfg=223 ctermbg=239 cterm=NONE
    endif

    highlight Lf_hl_popup_prompt guifg=#89b482 ctermfg=108
    highlight Lf_hl_popup_spin guifg=#d8a657 ctermfg=214
    highlight Lf_hl_popup_normalMode guifg=#282828 guibg=#a89984 gui=bold ctermfg=235 ctermbg=246 cterm=bold
    highlight Lf_hl_popup_inputMode guifg=#282828 guibg=#a89984 gui=bold ctermfg=235 ctermbg=246 cterm=bold
    highlight Lf_hl_popup_category guifg=#ddc7a1 guibg=#7c6f64 gui=NONE ctermfg=223 ctermbg=243 cterm=NONE
    highlight Lf_hl_popup_nameOnlyMode guifg=#ddc7a1 guibg=#665c54 gui=NONE ctermfg=223 ctermbg=241 cterm=NONE
    highlight Lf_hl_popup_fullPathMode guifg=#ddc7a1 guibg=#665c54 gui=NONE ctermfg=223 ctermbg=241 cterm=NONE
    highlight Lf_hl_popup_fuzzyMode guifg=#ddc7a1 guibg=#665c54 gui=NONE ctermfg=223 ctermbg=241 cterm=NONE
    highlight Lf_hl_popup_regexMode guifg=#ddc7a1 guibg=#665c54 gui=NONE ctermfg=223 ctermbg=241 cterm=NONE
    highlight Lf_hl_popup_cwd guifg=#ddc7a1 guibg=#504945 gui=NONE ctermfg=223 ctermbg=239 cterm=NONE
    " Lf_hl_popup_blank is the wincolor of statusline window
    highlight! link Lf_hl_popup_blank Lf_hl_popup_window
    highlight Lf_hl_popup_lineInfo guifg=#ddc7a1 guibg=#665c54 gui=NONE ctermfg=223 ctermbg=241 cterm=NONE
    highlight Lf_hl_popup_total guifg=#282828 guibg=#a89984 gui=NONE ctermfg=235 ctermbg=246 cterm=NONE
else
    if get(g:, 'gruvbox_material_background', 'medium') ==# 'hard'
        highlight Lf_hl_popup_inputText guifg=#4f3829 guibg=#f2e5bc gui=NONE ctermfg=237 ctermbg=228 cterm=NONE
        highlight Lf_hl_popup_window guifg=#4f3829 guibg=#f2e5bc gui=NONE ctermfg=237 ctermbg=228 cterm=NONE
    elseif get(g:, 'gruvbox_material_background', 'medium') ==# 'medium'
        highlight Lf_hl_popup_inputText guifg=#4f3829 guibg=#ebdbb2 gui=NONE ctermfg=237 ctermbg=223 cterm=NONE
        highlight Lf_hl_popup_window guifg=#4f3829 guibg=#ebdbb2 gui=NONE ctermfg=237 ctermbg=223 cterm=NONE
    elseif get(g:, 'gruvbox_material_background', 'medium') ==# 'soft'
        highlight Lf_hl_popup_inputText guifg=#4f3829 guibg=#d5c4a1 gui=NONE ctermfg=237 ctermbg=250 cterm=NONE
        highlight Lf_hl_popup_window guifg=#4f3829 guibg=#d5c4a1 gui=NONE ctermfg=237 ctermbg=250 cterm=NONE
    endif

    highlight Lf_hl_popup_prompt guifg=#4c7a5d ctermfg=165
    highlight Lf_hl_popup_spin guifg=#b47109 ctermfg=136
    highlight Lf_hl_popup_normalMode guifg=#ebdbb2 guibg=#7c6f64 gui=bold ctermfg=235 ctermbg=243 cterm=bold
    highlight Lf_hl_popup_inputMode guifg=#ebdbb2 guibg=#7c6f64 gui=bold ctermfg=235 ctermbg=243 cterm=bold
    highlight Lf_hl_popup_category guifg=#4f3829 guibg=#a89984 gui=NONE ctermfg=237 ctermbg=246 cterm=NONE
    highlight Lf_hl_popup_nameOnlyMode guifg=#4f3829 guibg=#bdae93 gui=NONE ctermfg=237 ctermbg=248 cterm=NONE
    highlight Lf_hl_popup_fullPathMode guifg=#4f3829 guibg=#bdae93 gui=NONE ctermfg=237 ctermbg=248 cterm=NONE
    highlight Lf_hl_popup_fuzzyMode guifg=#4f3829 guibg=#bdae93 gui=NONE ctermfg=237 ctermbg=248 cterm=NONE
    highlight Lf_hl_popup_regexMode guifg=#4f3829 guibg=#bdae93 gui=NONE ctermfg=237 ctermbg=248 cterm=NONE
    highlight Lf_hl_popup_cwd guifg=#4f3829 guibg=#d5c4a1 gui=NONE ctermfg=237 ctermbg=250 cterm=NONE
    " Lf_hl_popup_blank is the wincolor of statusline window
    highlight! link Lf_hl_popup_blank Lf_hl_popup_window
    highlight Lf_hl_popup_lineInfo guifg=#4f3829 guibg=#bdae93 gui=NONE ctermfg=237 ctermbg=248 cterm=NONE
    highlight Lf_hl_popup_total guifg=#ebdbb2 guibg=#7c6f64 gui=NONE ctermfg=235 ctermbg=243 cterm=NONE
endif

call leaderf#colorscheme#popup#link_no_reverse("Lf_hl_popup_cursor", "Cursor")
