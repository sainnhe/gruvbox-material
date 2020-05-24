" -----------------------------------------------------------------------------
" Name:           Gruvbox Material
" Description:    Gruvbox with Material Palette
" Author:         sainnhe <sainnhe@gmail.com>
" Website:        https://github.com/sainnhe/gruvbox-material
" License:        MIT
" -----------------------------------------------------------------------------

" Initialization: {{{
highlight clear
if exists('syntax_on')
  syntax reset
endif

let g:colors_name = 'gruvbox-material'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif

let s:configuration = gruvbox_material#get_configuration()
let s:palette = gruvbox_material#get_palette(s:configuration.background, s:configuration.palette)
let s:path = expand('<sfile>:p') " the path of this script
let s:last_modified = 'Sun 24 May 2020 02:27:50 AM UTC'
" }}}
" Common Highlight Groups: {{{
" UI: {{{
if s:configuration.transparent_background
  call gruvbox_material#highlight('Normal', s:palette.fg0, s:palette.none)
  call gruvbox_material#highlight('Terminal', s:palette.fg0, s:palette.none)
  call gruvbox_material#highlight('EndOfBuffer', s:palette.bg0, s:palette.none)
  call gruvbox_material#highlight('FoldColumn', s:palette.grey0, s:palette.none)
  call gruvbox_material#highlight('Folded', s:palette.grey1, s:palette.none)
  call gruvbox_material#highlight('SignColumn', s:palette.fg0, s:palette.none)
  call gruvbox_material#highlight('ToolbarLine', s:palette.fg0, s:palette.none)
else
  call gruvbox_material#highlight('Normal', s:palette.fg0, s:palette.bg0)
  call gruvbox_material#highlight('Terminal', s:palette.fg0, s:palette.bg0)
  call gruvbox_material#highlight('EndOfBuffer', s:palette.bg0, s:palette.bg0)
  call gruvbox_material#highlight('Folded', s:palette.grey1, s:palette.bg2)
  call gruvbox_material#highlight('ToolbarLine', s:palette.fg1, s:palette.bg3)
  if s:configuration.sign_column_background ==# 'default'
    call gruvbox_material#highlight('SignColumn', s:palette.fg0, s:palette.bg2)
    call gruvbox_material#highlight('FoldColumn', s:palette.grey0, s:palette.bg2)
  else
    call gruvbox_material#highlight('SignColumn', s:palette.fg0, s:palette.none)
    call gruvbox_material#highlight('FoldColumn', s:palette.grey0, s:palette.none)
  endif
endif
call gruvbox_material#highlight('IncSearch', s:palette.bg0, s:palette.bg_red)
call gruvbox_material#highlight('Search', s:palette.bg0, s:palette.bg_green)
call gruvbox_material#highlight('ColorColumn', s:palette.none, s:palette.bg2)
call gruvbox_material#highlight('Conceal', s:palette.grey0, s:palette.none)
if s:configuration.cursor ==# 'auto'
  call gruvbox_material#highlight('Cursor', s:palette.none, s:palette.none, 'reverse')
else
  call gruvbox_material#highlight('Cursor', s:palette.bg0, s:palette[s:configuration.cursor])
endif
highlight! link vCursor Cursor
highlight! link iCursor Cursor
highlight! link lCursor Cursor
highlight! link CursorIM Cursor
call gruvbox_material#highlight('CursorColumn', s:palette.none, s:palette.bg1)
call gruvbox_material#highlight('CursorLine', s:palette.none, s:palette.bg1)
call gruvbox_material#highlight('LineNr', s:palette.grey0, s:palette.none)
if (&relativenumber == 1 && &cursorline == 0) || s:configuration.sign_column_background !=# 'default'
  call gruvbox_material#highlight('CursorLineNr', s:palette.grey2, s:palette.none)
else
  call gruvbox_material#highlight('CursorLineNr', s:palette.grey2, s:palette.bg1)
endif
call gruvbox_material#highlight('DiffAdd', s:palette.none, s:palette.bg_diff_green)
call gruvbox_material#highlight('DiffChange', s:palette.none, s:palette.bg_diff_blue)
call gruvbox_material#highlight('DiffDelete', s:palette.none, s:palette.bg_diff_red)
call gruvbox_material#highlight('DiffText', s:palette.bg0, s:palette.fg0)
call gruvbox_material#highlight('Directory', s:palette.green, s:palette.none)
call gruvbox_material#highlight('ErrorMsg', s:palette.red, s:palette.none, 'bold,underline')
call gruvbox_material#highlight('WarningMsg', s:palette.yellow, s:palette.none, 'bold')
call gruvbox_material#highlight('ModeMsg', s:palette.fg0, s:palette.none, 'bold')
call gruvbox_material#highlight('MoreMsg', s:palette.yellow, s:palette.none, 'bold')
call gruvbox_material#highlight('MatchParen', s:palette.none, s:palette.bg4)
call gruvbox_material#highlight('NonText', s:palette.bg5, s:palette.none)
call gruvbox_material#highlight('Whitespace', s:palette.bg5, s:palette.none)
call gruvbox_material#highlight('SpecialKey', s:palette.bg5, s:palette.none)
call gruvbox_material#highlight('Pmenu', s:palette.fg1, s:palette.bg3)
call gruvbox_material#highlight('PmenuSbar', s:palette.none, s:palette.bg3)
if s:configuration.menu_selection_background ==# 'grey'
  call gruvbox_material#highlight('PmenuSel', s:palette.bg3, s:palette.grey2)
elseif s:configuration.menu_selection_background ==# 'green'
  call gruvbox_material#highlight('PmenuSel', s:palette.bg3, s:palette.bg_green)
elseif s:configuration.menu_selection_background ==# 'red'
  call gruvbox_material#highlight('PmenuSel', s:palette.bg3, s:palette.bg_red)
else
  call gruvbox_material#highlight('PmenuSel', s:palette.bg3, s:palette[s:configuration.menu_selection_background])
end
highlight! link WildMenu PmenuSel
call gruvbox_material#highlight('PmenuThumb', s:palette.none, s:palette.grey0)
call gruvbox_material#highlight('Question', s:palette.yellow, s:palette.none)
call gruvbox_material#highlight('SpellBad', s:palette.red, s:palette.none, 'undercurl', s:palette.red)
call gruvbox_material#highlight('SpellCap', s:palette.blue, s:palette.none, 'undercurl', s:palette.blue)
call gruvbox_material#highlight('SpellLocal', s:palette.aqua, s:palette.none, 'undercurl', s:palette.aqua)
call gruvbox_material#highlight('SpellRare', s:palette.purple, s:palette.none, 'undercurl', s:palette.purple)
if s:configuration.statusline_style ==# 'original'
  call gruvbox_material#highlight('StatusLine', s:palette.grey2, s:palette.bg_statusline3)
  call gruvbox_material#highlight('StatusLineTerm', s:palette.grey2, s:palette.bg_statusline3)
  call gruvbox_material#highlight('StatusLineNC', s:palette.grey1, s:palette.bg_statusline2)
  call gruvbox_material#highlight('StatusLineTermNC', s:palette.grey1, s:palette.bg_statusline2)
  call gruvbox_material#highlight('TabLine', s:palette.grey2, s:palette.bg_statusline3)
  call gruvbox_material#highlight('TabLineFill', s:palette.grey1, s:palette.bg0)
  call gruvbox_material#highlight('TabLineSel', s:palette.bg0, s:palette.grey2)
else
  call gruvbox_material#highlight('StatusLine', s:palette.fg1, s:palette.bg_statusline2)
  call gruvbox_material#highlight('StatusLineTerm', s:palette.fg1, s:palette.bg_statusline2)
  call gruvbox_material#highlight('StatusLineNC', s:palette.grey2, s:palette.bg_statusline2)
  call gruvbox_material#highlight('StatusLineTermNC', s:palette.grey2, s:palette.bg_statusline2)
  call gruvbox_material#highlight('TabLine', s:palette.fg1, s:palette.bg_statusline3)
  call gruvbox_material#highlight('TabLineFill', s:palette.fg0, s:palette.bg_statusline1)
  call gruvbox_material#highlight('TabLineSel', s:palette.bg0, s:palette.grey2)
endif
call gruvbox_material#highlight('VertSplit', s:palette.bg5, s:palette.none)
if s:configuration.visual ==# 'grey background'
  call gruvbox_material#highlight('Visual', s:palette.none, s:palette.bg3)
  call gruvbox_material#highlight('VisualNOS', s:palette.none, s:palette.bg3)
elseif s:configuration.visual ==# 'green background'
  call gruvbox_material#highlight('Visual', s:palette.none, s:palette.bg_visual_green)
  call gruvbox_material#highlight('VisualNOS', s:palette.none, s:palette.bg_visual_green)
elseif s:configuration.visual ==# 'blue background'
  call gruvbox_material#highlight('Visual', s:palette.none, s:palette.bg_visual_blue)
  call gruvbox_material#highlight('VisualNOS', s:palette.none, s:palette.bg_visual_blue)
elseif s:configuration.visual ==# 'red background'
  call gruvbox_material#highlight('Visual', s:palette.none, s:palette.bg_visual_red)
  call gruvbox_material#highlight('VisualNOS', s:palette.none, s:palette.bg_visual_red)
elseif s:configuration.visual ==# 'reverse'
  call gruvbox_material#highlight('Visual', s:palette.none, s:palette.none, 'reverse')
  call gruvbox_material#highlight('VisualNOS', s:palette.none, s:palette.none, 'reverse')
endif
call gruvbox_material#highlight('QuickFixLine', s:palette.purple, s:palette.none, 'bold')
call gruvbox_material#highlight('Debug', s:palette.orange, s:palette.none)
call gruvbox_material#highlight('debugPC', s:palette.bg0, s:palette.green)
call gruvbox_material#highlight('debugBreakpoint', s:palette.bg0, s:palette.red)
call gruvbox_material#highlight('ToolbarButton', s:palette.bg0, s:palette.grey2)
if has('nvim')
  call gruvbox_material#highlight('Substitute', s:palette.bg0, s:palette.yellow)
  highlight! link TermCursor Cursor
  highlight! link healthError Red
  highlight! link healthSuccess Green
  highlight! link healthWarning Yellow
  highlight! link LspDiagnosticsError Grey
  highlight! link LspDiagnosticsWarning Grey
  highlight! link LspDiagnosticInformation Grey
  highlight! link LspDiagnosticHint Grey
  highlight! link LspReferenceText CurrentWord
  highlight! link LspReferenceRead CurrentWord
  highlight! link LspReferenceWrite CurrentWord
endif
" }}}
" Syntax: {{{
call gruvbox_material#highlight('Boolean', s:palette.purple, s:palette.none)
call gruvbox_material#highlight('Number', s:palette.purple, s:palette.none)
call gruvbox_material#highlight('Float', s:palette.purple, s:palette.none)
if s:configuration.enable_italic
  call gruvbox_material#highlight('PreProc', s:palette.purple, s:palette.none, 'italic')
  call gruvbox_material#highlight('PreCondit', s:palette.purple, s:palette.none, 'italic')
  call gruvbox_material#highlight('Include', s:palette.purple, s:palette.none, 'italic')
  call gruvbox_material#highlight('Define', s:palette.purple, s:palette.none, 'italic')
  call gruvbox_material#highlight('Conditional', s:palette.red, s:palette.none, 'italic')
  call gruvbox_material#highlight('Repeat', s:palette.red, s:palette.none, 'italic')
  call gruvbox_material#highlight('Keyword', s:palette.red, s:palette.none, 'italic')
  call gruvbox_material#highlight('Typedef', s:palette.red, s:palette.none, 'italic')
  call gruvbox_material#highlight('Exception', s:palette.red, s:palette.none, 'italic')
  call gruvbox_material#highlight('Statement', s:palette.red, s:palette.none, 'italic')
else
  call gruvbox_material#highlight('PreProc', s:palette.purple, s:palette.none)
  call gruvbox_material#highlight('PreCondit', s:palette.purple, s:palette.none)
  call gruvbox_material#highlight('Include', s:palette.purple, s:palette.none)
  call gruvbox_material#highlight('Define', s:palette.purple, s:palette.none)
  call gruvbox_material#highlight('Conditional', s:palette.red, s:palette.none)
  call gruvbox_material#highlight('Repeat', s:palette.red, s:palette.none)
  call gruvbox_material#highlight('Keyword', s:palette.red, s:palette.none)
  call gruvbox_material#highlight('Typedef', s:palette.red, s:palette.none)
  call gruvbox_material#highlight('Exception', s:palette.red, s:palette.none)
  call gruvbox_material#highlight('Statement', s:palette.red, s:palette.none)
endif
call gruvbox_material#highlight('Error', s:palette.red, s:palette.none)
call gruvbox_material#highlight('StorageClass', s:palette.orange, s:palette.none)
call gruvbox_material#highlight('Tag', s:palette.orange, s:palette.none)
call gruvbox_material#highlight('Label', s:palette.orange, s:palette.none)
call gruvbox_material#highlight('Structure', s:palette.orange, s:palette.none)
call gruvbox_material#highlight('Operator', s:palette.orange, s:palette.none)
call gruvbox_material#highlight('Title', s:palette.orange, s:palette.none, 'bold')
call gruvbox_material#highlight('Special', s:palette.yellow, s:palette.none)
call gruvbox_material#highlight('SpecialChar', s:palette.yellow, s:palette.none)
call gruvbox_material#highlight('Type', s:palette.yellow, s:palette.none)
if s:configuration.enable_bold
  call gruvbox_material#highlight('Function', s:palette.green, s:palette.none, 'bold')
else
  call gruvbox_material#highlight('Function', s:palette.green, s:palette.none)
endif
call gruvbox_material#highlight('String', s:palette.green, s:palette.none)
call gruvbox_material#highlight('Character', s:palette.green, s:palette.none)
call gruvbox_material#highlight('Constant', s:palette.aqua, s:palette.none)
call gruvbox_material#highlight('Macro', s:palette.aqua, s:palette.none)
call gruvbox_material#highlight('Identifier', s:palette.blue, s:palette.none)
if s:configuration.disable_italic_comment
  call gruvbox_material#highlight('Comment', s:palette.grey1, s:palette.none)
  call gruvbox_material#highlight('SpecialComment', s:palette.grey1, s:palette.none)
  call gruvbox_material#highlight('Todo', s:palette.purple, s:palette.none)
else
  call gruvbox_material#highlight('Comment', s:palette.grey1, s:palette.none, 'italic')
  call gruvbox_material#highlight('SpecialComment', s:palette.grey1, s:palette.none, 'italic')
  call gruvbox_material#highlight('Todo', s:palette.purple, s:palette.none, 'italic')
endif
call gruvbox_material#highlight('Delimiter', s:palette.fg0, s:palette.none)
call gruvbox_material#highlight('Ignore', s:palette.grey1, s:palette.none)
call gruvbox_material#highlight('Underlined', s:palette.none, s:palette.none, 'underline')
" }}}
" Predefined Highlight Groups: {{{
call gruvbox_material#highlight('Fg', s:palette.fg0, s:palette.none)
call gruvbox_material#highlight('Grey', s:palette.grey1, s:palette.none)
call gruvbox_material#highlight('Red', s:palette.red, s:palette.none)
call gruvbox_material#highlight('Orange', s:palette.orange, s:palette.none)
call gruvbox_material#highlight('Yellow', s:palette.yellow, s:palette.none)
call gruvbox_material#highlight('Green', s:palette.green, s:palette.none)
call gruvbox_material#highlight('Aqua', s:palette.aqua, s:palette.none)
call gruvbox_material#highlight('Blue', s:palette.blue, s:palette.none)
call gruvbox_material#highlight('Purple', s:palette.purple, s:palette.none)
if s:configuration.enable_italic
  call gruvbox_material#highlight('RedItalic', s:palette.red, s:palette.none, 'italic')
  call gruvbox_material#highlight('OrangeItalic', s:palette.orange, s:palette.none, 'italic')
  call gruvbox_material#highlight('YellowItalic', s:palette.yellow, s:palette.none, 'italic')
  call gruvbox_material#highlight('GreenItalic', s:palette.green, s:palette.none, 'italic')
  call gruvbox_material#highlight('AquaItalic', s:palette.aqua, s:palette.none, 'italic')
  call gruvbox_material#highlight('BlueItalic', s:palette.blue, s:palette.none, 'italic')
  call gruvbox_material#highlight('PurpleItalic', s:palette.purple, s:palette.none, 'italic')
else
  call gruvbox_material#highlight('RedItalic', s:palette.red, s:palette.none)
  call gruvbox_material#highlight('OrangeItalic', s:palette.orange, s:palette.none)
  call gruvbox_material#highlight('YellowItalic', s:palette.yellow, s:palette.none)
  call gruvbox_material#highlight('GreenItalic', s:palette.green, s:palette.none)
  call gruvbox_material#highlight('AquaItalic', s:palette.aqua, s:palette.none)
  call gruvbox_material#highlight('BlueItalic', s:palette.blue, s:palette.none)
  call gruvbox_material#highlight('PurpleItalic', s:palette.purple, s:palette.none)
endif
if s:configuration.enable_bold
  call gruvbox_material#highlight('RedBold', s:palette.red, s:palette.none, 'bold')
  call gruvbox_material#highlight('OrangeBold', s:palette.orange, s:palette.none, 'bold')
  call gruvbox_material#highlight('YellowBold', s:palette.yellow, s:palette.none, 'bold')
  call gruvbox_material#highlight('GreenBold', s:palette.green, s:palette.none, 'bold')
  call gruvbox_material#highlight('AquaBold', s:palette.aqua, s:palette.none, 'bold')
  call gruvbox_material#highlight('BlueBold', s:palette.blue, s:palette.none, 'bold')
  call gruvbox_material#highlight('PurpleBold', s:palette.purple, s:palette.none, 'bold')
else
  call gruvbox_material#highlight('RedBold', s:palette.red, s:palette.none)
  call gruvbox_material#highlight('OrangeBold', s:palette.orange, s:palette.none)
  call gruvbox_material#highlight('YellowBold', s:palette.yellow, s:palette.none)
  call gruvbox_material#highlight('GreenBold', s:palette.green, s:palette.none)
  call gruvbox_material#highlight('AquaBold', s:palette.aqua, s:palette.none)
  call gruvbox_material#highlight('BlueBold', s:palette.blue, s:palette.none)
  call gruvbox_material#highlight('PurpleBold', s:palette.purple, s:palette.none)
endif
if s:configuration.transparent_background || s:configuration.sign_column_background !=# 'default'
  call gruvbox_material#highlight('RedSign', s:palette.red, s:palette.none)
  call gruvbox_material#highlight('OrangeSign', s:palette.orange, s:palette.none)
  call gruvbox_material#highlight('YellowSign', s:palette.yellow, s:palette.none)
  call gruvbox_material#highlight('GreenSign', s:palette.green, s:palette.none)
  call gruvbox_material#highlight('AquaSign', s:palette.aqua, s:palette.none)
  call gruvbox_material#highlight('BlueSign', s:palette.blue, s:palette.none)
  call gruvbox_material#highlight('PurpleSign', s:palette.purple, s:palette.none)
else
  call gruvbox_material#highlight('RedSign', s:palette.red, s:palette.bg2)
  call gruvbox_material#highlight('OrangeSign', s:palette.orange, s:palette.bg2)
  call gruvbox_material#highlight('YellowSign', s:palette.yellow, s:palette.bg2)
  call gruvbox_material#highlight('GreenSign', s:palette.green, s:palette.bg2)
  call gruvbox_material#highlight('AquaSign', s:palette.aqua, s:palette.bg2)
  call gruvbox_material#highlight('BlueSign', s:palette.blue, s:palette.bg2)
  call gruvbox_material#highlight('PurpleSign', s:palette.purple, s:palette.bg2)
endif
if s:configuration.diagnostic_line_highlight
  call gruvbox_material#highlight('ErrorLine', s:palette.none, s:palette.bg_visual_red)
  call gruvbox_material#highlight('WarningLine', s:palette.none, s:palette.bg_visual_yellow)
  call gruvbox_material#highlight('InfoLine', s:palette.none, s:palette.bg_visual_blue)
  call gruvbox_material#highlight('HintLine', s:palette.none, s:palette.bg_visual_green)
else
  highlight clear ErrorLine
  highlight clear WarningLine
  highlight clear InfoLine
  highlight clear HintLine
endif
if s:configuration.current_word ==# 'grey background'
  call gruvbox_material#highlight('CurrentWord', s:palette.none, s:palette.bg_current_word)
else
  call gruvbox_material#highlight('CurrentWord', s:palette.none, s:palette.none, s:configuration.current_word)
endif
" }}}
" }}}
" Terminal: {{{
if (has('termguicolors') && &termguicolors) || has('gui_running')
  " Definition
  let s:terminal = {
        \ 'black':    &background ==# 'dark' ? s:palette.bg0 : s:palette.fg0,
        \ 'red':      s:palette.red,
        \ 'yellow':   s:palette.yellow,
        \ 'green':    s:palette.green,
        \ 'cyan':     s:palette.aqua,
        \ 'blue':     s:palette.blue,
        \ 'purple':   s:palette.purple,
        \ 'white':    &background ==# 'dark' ? s:palette.fg0 : s:palette.bg0
        \ }
  " Implementation: {{{
  if !has('nvim')
    let g:terminal_ansi_colors = [s:terminal.black[0], s:terminal.red[0], s:terminal.green[0], s:terminal.yellow[0],
          \ s:terminal.blue[0], s:terminal.purple[0], s:terminal.cyan[0], s:terminal.white[0], s:terminal.black[0], s:terminal.red[0],
          \ s:terminal.green[0], s:terminal.yellow[0], s:terminal.blue[0], s:terminal.purple[0], s:terminal.cyan[0], s:terminal.white[0]]
  else
    let g:terminal_color_0 = s:terminal.black[0]
    let g:terminal_color_1 = s:terminal.red[0]
    let g:terminal_color_2 = s:terminal.green[0]
    let g:terminal_color_3 = s:terminal.yellow[0]
    let g:terminal_color_4 = s:terminal.blue[0]
    let g:terminal_color_5 = s:terminal.purple[0]
    let g:terminal_color_6 = s:terminal.cyan[0]
    let g:terminal_color_7 = s:terminal.white[0]
    let g:terminal_color_8 = s:terminal.black[0]
    let g:terminal_color_9 = s:terminal.red[0]
    let g:terminal_color_10 = s:terminal.green[0]
    let g:terminal_color_11 = s:terminal.yellow[0]
    let g:terminal_color_12 = s:terminal.blue[0]
    let g:terminal_color_13 = s:terminal.purple[0]
    let g:terminal_color_14 = s:terminal.cyan[0]
    let g:terminal_color_15 = s:terminal.white[0]
  endif
  " }}}
endif
" }}}
" Plugins: {{{
" neoclide/coc.nvim {{{
call gruvbox_material#highlight('CocHoverRange', s:palette.none, s:palette.none, 'bold,underline')
call gruvbox_material#highlight('CocErrorHighlight', s:palette.none, s:palette.none, 'undercurl', s:palette.red)
call gruvbox_material#highlight('CocWarningHighlight', s:palette.none, s:palette.none, 'undercurl', s:palette.yellow)
call gruvbox_material#highlight('CocInfoHighlight', s:palette.none, s:palette.none, 'undercurl', s:palette.blue)
call gruvbox_material#highlight('CocHintHighlight', s:palette.none, s:palette.none, 'undercurl', s:palette.aqua)
call gruvbox_material#highlight('CocErrorFloat', s:palette.red, s:palette.bg3)
call gruvbox_material#highlight('CocWarningFloat', s:palette.yellow, s:palette.bg3)
call gruvbox_material#highlight('CocInfoFloat', s:palette.blue, s:palette.bg3)
call gruvbox_material#highlight('CocHintFloat', s:palette.aqua, s:palette.bg3)
highlight! link CocHighlightText CurrentWord
highlight! link CocErrorSign RedSign
highlight! link CocWarningSign YellowSign
highlight! link CocInfoSign BlueSign
highlight! link CocHintSign AquaSign
highlight! link CocWarningVirtualText Grey
highlight! link CocErrorVirtualText Grey
highlight! link CocInfoVirtualText Grey
highlight! link CocHintVirtualText Grey
highlight! link CocErrorLine ErrorLine
highlight! link CocWarningLine WarningLine
highlight! link CocInfoLine InfoLine
highlight! link CocHintLine HintLine
highlight! link CocCodeLens Grey
highlight! link HighlightedyankRegion Visual
highlight! link CocGitAddedSign GreenSign
highlight! link CocGitChangeRemovedSign PurpleSign
highlight! link CocGitChangedSign BlueSign
highlight! link CocGitRemovedSign RedSign
highlight! link CocGitTopRemovedSign RedSign
highlight! link CocExplorerBufferRoot Orange
highlight! link CocExplorerBufferExpandIcon Aqua
highlight! link CocExplorerBufferBufnr Purple
highlight! link CocExplorerBufferModified Red
highlight! link CocExplorerBufferBufname Grey
highlight! link CocExplorerBufferFullpath Grey
highlight! link CocExplorerFileRoot Orange
highlight! link CocExplorerFileExpandIcon Aqua
highlight! link CocExplorerFileFullpath Grey
highlight! link CocExplorerFileDirectory Green
highlight! link CocExplorerFileGitStage Purple
highlight! link CocExplorerFileGitUnstage Yellow
highlight! link CocExplorerFileSize Blue
highlight! link CocExplorerTimeAccessed Aqua
highlight! link CocExplorerTimeCreated Aqua
highlight! link CocExplorerTimeModified Aqua
" }}}
" prabirshrestha/vim-lsp {{{
highlight! link LspErrorVirtual Grey
highlight! link LspWarningVirtual Grey
highlight! link LspInformationVirtual Grey
highlight! link LspHintVirtual Grey
highlight! link LspErrorHighlight CocErrorHighlight
highlight! link LspWarningHighlight CocWarningHighlight
highlight! link LspInformationHighlight CocInfoHighlight
highlight! link LspHintHighlight CocHintHighlight
highlight! link lspReference CurrentWord
" }}}
" ycm-core/YouCompleteMe {{{
highlight! link YcmErrorSign RedSign
highlight! link YcmWarningSign YellowSign
highlight! link YcmErrorLine ErrorLine
highlight! link YcmWarningLine WarningLine
highlight! link YcmErrorSection CocErrorHighlight
highlight! link YcmWarningSection CocWarningHighlight
" }}}
" dense-analysis/ale {{{
highlight! link ALEError CocErrorHighlight
highlight! link ALEWarning CocWarningHighlight
highlight! link ALEInfo CocInfoHighlight
highlight! link ALEErrorSign RedSign
highlight! link ALEWarningSign YellowSign
highlight! link ALEInfoSign BlueSign
highlight! link ALEErrorLine ErrorLine
highlight! link ALEWarningLine WarningLine
highlight! link ALEInfoLine InfoLine
highlight! link ALEVirtualTextError Grey
highlight! link ALEVirtualTextWarning Grey
highlight! link ALEVirtualTextInfo Grey
highlight! link ALEVirtualTextStyleError Grey
highlight! link ALEVirtualTextStyleWarning Grey
" }}}
" neomake/neomake {{{
highlight! link NeomakeError ALEError
highlight! link NeomakeErrorSign RedSign
highlight! link NeomakeWarning ALEWarning
highlight! link NeomakeWarningSign YellowSign
highlight! link NeomakeInfo ALEInfo
highlight! link NeomakeInfoSign BlueSign
highlight! link NeomakeMessage Aqua
highlight! link NeomakeMessageSign AquaSign
highlight! link NeomakeVirtualtextError Grey
highlight! link NeomakeVirtualtextWarning Grey
highlight! link NeomakeVirtualtextInfo Grey
highlight! link NeomakeVirtualtextMessag Grey
" }}}
" vim-syntastic/syntastic {{{
highlight! link SyntasticError ALEError
highlight! link SyntasticWarning ALEWarning
highlight! link SyntasticErrorSign RedSign
highlight! link SyntasticWarningSign YellowSign
highlight! link SyntasticErrorLine ErrorLine
highlight! link SyntasticWarningLine WarningLine
" }}}
" Yggdroot/LeaderF {{{
if !exists('g:Lf_StlColorscheme')
  let g:Lf_StlColorscheme = 'gruvbox_material'
endif
if !exists('g:Lf_PopupColorscheme')
  let g:Lf_PopupColorscheme = 'gruvbox_material'
endif
call gruvbox_material#highlight('Lf_hl_match', s:palette.green, s:palette.none, 'bold')
call gruvbox_material#highlight('Lf_hl_match0', s:palette.green, s:palette.none, 'bold')
call gruvbox_material#highlight('Lf_hl_match1', s:palette.aqua, s:palette.none, 'bold')
call gruvbox_material#highlight('Lf_hl_match2', s:palette.blue, s:palette.none, 'bold')
call gruvbox_material#highlight('Lf_hl_match3', s:palette.purple, s:palette.none, 'bold')
call gruvbox_material#highlight('Lf_hl_match4', s:palette.orange, s:palette.none, 'bold')
call gruvbox_material#highlight('Lf_hl_matchRefine', s:palette.red, s:palette.none, 'bold')
highlight! link Lf_hl_cursorline Fg
highlight! link Lf_hl_selection DiffAdd
highlight! link Lf_hl_rgHighlight Visual
highlight! link Lf_hl_gtagsHighlight Visual
" }}}
" junegunn/fzf.vim {{{
let g:fzf_colors = {
      \ 'fg':      ['fg', 'Normal'],
      \ 'bg':      ['bg', 'Normal'],
      \ 'hl':      ['fg', 'Green'],
      \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
      \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
      \ 'hl+':     ['fg', 'Aqua'],
      \ 'info':    ['fg', 'Aqua'],
      \ 'prompt':  ['fg', 'Orange'],
      \ 'pointer': ['fg', 'Blue'],
      \ 'marker':  ['fg', 'Yellow'],
      \ 'spinner': ['fg', 'Yellow'],
      \ 'header':  ['fg', 'Grey']
      \ }
" }}}
" Shougo/denite.nvim {{{
call gruvbox_material#highlight('deniteMatchedChar', s:palette.green, s:palette.none, 'bold')
call gruvbox_material#highlight('deniteMatchedRange', s:palette.green, s:palette.none, 'bold,underline')
call gruvbox_material#highlight('deniteInput', s:palette.green, s:palette.bg4, 'bold')
call gruvbox_material#highlight('deniteStatusLineNumber', s:palette.purple, s:palette.bg4)
call gruvbox_material#highlight('deniteStatusLinePath', s:palette.fg0, s:palette.bg4)
highlight! link deniteSelectedLin Green
" }}}
" kien/ctrlp.vim {{{
call gruvbox_material#highlight('CtrlPMatch', s:palette.green, s:palette.none, 'bold')
call gruvbox_material#highlight('CtrlPPrtBase', s:palette.bg4, s:palette.none)
call gruvbox_material#highlight('CtrlPLinePre', s:palette.bg4, s:palette.none)
call gruvbox_material#highlight('CtrlPMode1', s:palette.blue, s:palette.bg4, 'bold')
call gruvbox_material#highlight('CtrlPMode2', s:palette.bg0, s:palette.blue, 'bold')
call gruvbox_material#highlight('CtrlPStats', s:palette.grey2, s:palette.bg4, 'bold')
highlight! link CtrlPNoEntries Red
highlight! link CtrlPPrtCursor Blue
" }}}
" airblade/vim-gitgutter {{{
highlight! link GitGutterAdd GreenSign
highlight! link GitGutterChange BlueSign
highlight! link GitGutterDelete RedSign
highlight! link GitGutterChangeDelete PurpleSign
" }}}
" mhinz/vim-signify {{{
highlight! link SignifySignAdd GreenSign
highlight! link SignifySignChange BlueSign
highlight! link SignifySignDelete RedSign
highlight! link SignifySignChangeDelete PurpleSign
" }}}
" andymass/vim-matchup {{{
call gruvbox_material#highlight('MatchParenCur', s:palette.none, s:palette.none, 'bold')
call gruvbox_material#highlight('MatchWord', s:palette.none, s:palette.none, 'underline')
call gruvbox_material#highlight('MatchWordCur', s:palette.none, s:palette.none, 'underline')
" }}}
" easymotion/vim-easymotion {{{
highlight! link EasyMotionTarget Search
highlight! link EasyMotionShade Grey
" }}}
" justinmk/vim-sneak {{{
call gruvbox_material#highlight('SneakLabelMask', s:palette.bg_green, s:palette.bg_green)
highlight! link Sneak Search
highlight! link SneakLabel Search
highlight! link SneakScope DiffText
" }}}
" terryma/vim-multiple-cursors {{{
highlight! link multiple_cursors_cursor Cursor
highlight! link multiple_cursors_visual Visual
" }}}
" mg979/vim-visual-multi {{{
let g:VM_Mono_hl = 'Cursor'
let g:VM_Extend_hl = 'Visual'
let g:VM_Cursor_hl = 'Cursor'
let g:VM_Insert_hl = 'Cursor'
" }}}
" dominikduda/vim_current_word {{{
highlight! link CurrentWord CurrentWord
highlight! link CurrentWordTwins CurrentWord
" }}}
" RRethy/vim-illuminate {{{
highlight! link illuminatedWord CurrentWord
" }}}
" itchyny/vim-cursorword {{{
highlight! link CursorWord0 CurrentWord
highlight! link CursorWord1 CurrentWord
" }}}
" Yggdroot/indentLine {{{
let g:indentLine_color_gui = s:palette.grey0[0]
let g:indentLine_color_term = s:palette.grey0[1]
" }}}
" nathanaelkane/vim-indent-guides {{{
if get(g:, 'indent_guides_auto_colors', 1) == 0
  call gruvbox_material#highlight('IndentGuidesOdd', s:palette.bg0, s:palette.bg2)
  call gruvbox_material#highlight('IndentGuidesEven', s:palette.bg0, s:palette.bg3)
endif
" }}}
" luochen1990/rainbow {{{
if !exists('g:rbpt_colorpairs')
  let g:rbpt_colorpairs = [['blue', s:palette.blue[0]], ['magenta', s:palette.purple[0]],
        \ ['red', s:palette.red[0]], ['166', s:palette.orange[0]]]
endif

let g:rainbow_guifgs = [ s:palette.orange[0], s:palette.red[0], s:palette.purple[0], s:palette.blue[0] ]
let g:rainbow_ctermfgs = [ '166', 'red', 'magenta', 'blue' ]

if !exists('g:rainbow_conf')
  let g:rainbow_conf = {}
endif
if !has_key(g:rainbow_conf, 'guifgs')
  let g:rainbow_conf['guifgs'] = g:rainbow_guifgs
endif
if !has_key(g:rainbow_conf, 'ctermfgs')
  let g:rainbow_conf['ctermfgs'] = g:rainbow_ctermfgs
endif

let g:niji_dark_colours = g:rbpt_colorpairs
let g:niji_light_colours = g:rbpt_colorpairs
" }}}
" kshenoy/vim-signature {{{
highlight! link SignatureMarkText BlueSign
highlight! link SignatureMarkerText PurpleSign
" }}}
" ap/vim-buftabline {{{
highlight! link BufTabLineCurrent TabLineSel
highlight! link BufTabLineActive TabLine
highlight! link BufTabLineHidden TabLineFill
highlight! link BufTabLineFill TabLineFill
" }}}
" liuchengxu/vim-which-key {{{
highlight! link WhichKey Red
highlight! link WhichKeySeperator Green
highlight! link WhichKeyGroup Yellow
highlight! link WhichKeyDesc Blue
" }}}
" unblevable/quick-scope {{{
call gruvbox_material#highlight('QuickScopePrimary', s:palette.aqua, s:palette.none, 'underline')
call gruvbox_material#highlight('QuickScopeSecondary', s:palette.blue, s:palette.none, 'underline')
" }}}
" APZelos/blamer.nvim {{{
highlight! link Blamer Grey
" }}}
" }}}
" Extended File Types: {{{
" Note: To ensure that the `s:last_modified` variable is always up to date, you need to copy `.githooks/pre-commit` to `.git/hooks/pre-commit`.
" Generate the `after/ftplugin` directory based on the comment tags in this file.
" For example, the content between `ft_begin: sh/zsh` and `ft_end` will be placed in `after/ftplugin/sh/gruvbox_material.vim` and `after/ftplugin/zsh/gruvbox_material.vim`.
if gruvbox_material#ft_exists(s:path) " If the ftplugin exists.
  if s:configuration.better_performance
    if !gruvbox_material#ft_newest(s:path, s:last_modified) " Regenerate if it's not up to date.
      call gruvbox_material#ft_clean(s:path, 0)
      call gruvbox_material#ft_gen(s:path, s:last_modified, 'update')
    endif
    finish
  elseif !has('nvim') " Only clean the `after/ftplugin` directory when in vim. This code will produce a bug in neovim.
    call gruvbox_material#ft_clean(s:path, 1)
  endif
else
  if s:configuration.better_performance
    call gruvbox_material#ft_gen(s:path, s:last_modified, 'generate')
    finish
  endif
endif
" ft_begin: vim-plug {{{
" https://github.com/junegunn/vim-plug
call gruvbox_material#highlight('plug1', s:palette.orange, s:palette.none, 'bold')
call gruvbox_material#highlight('plugNumber', s:palette.yellow, s:palette.none, 'bold')
highlight! link plug2 Green
highlight! link plugBracket Grey
highlight! link plugName Aqua
highlight! link plugDash Orange
highlight! link plugError Red
highlight! link plugNotLoaded Grey
highlight! link plugRelDate Grey
highlight! link plugH2 Orange
highlight! link plugMessage Orange
highlight! link plugStar Red
highlight! link plugUpdate Blue
highlight! link plugDeleted Grey
highlight! link plugEdge Yellow
highlight! link plugSha Green
" ft_end }}}
" ft_begin: tagbar {{{
" https://github.com/majutsushi/tagbar
highlight! link TagbarFoldIcon Green
highlight! link TagbarSignature Green
highlight! link TagbarKind Red
highlight! link TagbarScope Orange
highlight! link TagbarNestedKind Aqua
highlight! link TagbarVisibilityPrivate Red
highlight! link TagbarVisibilityPublic Blue
" ft_end }}}
" ft_begin: vista/vista_kind/vista_markdown {{{
" https://github.com/liuchengxu/vista.vim
highlight! link VistaBracket Grey
highlight! link VistaChildrenNr Orange
highlight! link VistaScope Red
highlight! link VistaTag Green
highlight! link VistaPrefix Grey
highlight! link VistaColon Green
highlight! link VistaIcon Purple
highlight! link VistaLineNr Fg
" }}}
" ft_begin: netrw {{{
" https://www.vim.org/scripts/script.php?script_id=1075
highlight! link netrwDir Green
highlight! link netrwClassify Green
highlight! link netrwLink Grey
highlight! link netrwSymLink Fg
highlight! link netrwExe Yellow
highlight! link netrwComment Grey
highlight! link netrwList Aqua
highlight! link netrwHelpCmd Blue
highlight! link netrwCmdSep Grey
highlight! link netrwVersion Orange
" ft_end }}}
" ft_begin: nerdtree {{{
highlight! link NERDTreeDir Green
highlight! link NERDTreeDirSlash Aqua
highlight! link NERDTreeOpenable Orange
highlight! link NERDTreeClosable Orange
highlight! link NERDTreeFile Fg
highlight! link NERDTreeExecFile Yellow
highlight! link NERDTreeUp Grey
highlight! link NERDTreeCWD Aqua
highlight! link NERDTreeHelp LightGrey
highlight! link NERDTreeToggleOn Green
highlight! link NERDTreeToggleOff Red
highlight! link NERDTreeFlags Orange
highlight! link NERDTreeLinkFile Grey
highlight! link NERDTreeLinkTarget Green
" ft_end }}}
" ft_begin: dirvish {{{
highlight! link DirvishPathTail Aqua
highlight! link DirvishArg Yellow
" ft_end }}}
" ft_begin: startify/quickmenu {{{
" https://github.com/mhinz/vim-startify
highlight! link StartifyBracket Grey
highlight! link StartifyFile Fg
highlight! link StartifyNumber Red
highlight! link StartifyPath Green
highlight! link StartifySlash Green
highlight! link StartifySection Blue
highlight! link StartifyHeader Orange
highlight! link StartifySpecial Grey
highlight! link StartifyFooter Grey
" ft_end }}}
" ft_begin: quickmenu {{{
highlight! link QuickmenuOption Green
highlight! link QuickmenuNumber Red
highlight! link QuickmenuBracket Grey
highlight! link QuickmenuHelp Green
highlight! link QuickmenuSpecial Purple
highlight! link QuickmenuHeader Orange
" ft_end }}}
" ft_begin: undotree {{{
" https://github.com/mbbill/undotree
call gruvbox_material#highlight('UndotreeSavedBig', s:palette.purple, s:palette.none, 'bold')
highlight! link UndotreeNode Orange
highlight! link UndotreeNodeCurrent Red
highlight! link UndotreeSeq Green
highlight! link UndotreeNext Blue
highlight! link UndotreeTimeStamp Grey
highlight! link UndotreeHead Yellow
highlight! link UndotreeBranch Yellow
highlight! link UndotreeCurrent Aqua
highlight! link UndotreeSavedSmall Purple
" ft_end }}}
" ft_begin: agit {{{
" https://github.com/cohama/agit.vim
highlight! link agitTree Grey
highlight! link agitDate Green
highlight! link agitRemote Red
highlight! link agitHead Orange
highlight! link agitRef Aqua
highlight! link agitTag Orange
highlight! link agitStatFile Blue
highlight! link agitStatRemoved Red
highlight! link agitStatAdded Green
highlight! link agitStatMessage Orange
highlight! link agitDiffRemove diffRemoved
highlight! link agitDiffAdd diffAdded
highlight! link agitDiffHeader Purple
" ft_end }}}
" ft_begin: markdown {{{
" builtin: {{{
call gruvbox_material#highlight('markdownH1', s:palette.red, s:palette.none, 'bold')
call gruvbox_material#highlight('markdownH2', s:palette.orange, s:palette.none, 'bold')
call gruvbox_material#highlight('markdownH3', s:palette.yellow, s:palette.none, 'bold')
call gruvbox_material#highlight('markdownH4', s:palette.green, s:palette.none, 'bold')
call gruvbox_material#highlight('markdownH5', s:palette.blue, s:palette.none, 'bold')
call gruvbox_material#highlight('markdownH6', s:palette.purple, s:palette.none, 'bold')
call gruvbox_material#highlight('markdownUrl', s:palette.blue, s:palette.none, 'underline')
call gruvbox_material#highlight('markdownItalic', s:palette.none, s:palette.none, 'italic')
call gruvbox_material#highlight('markdownBold', s:palette.none, s:palette.none, 'bold')
call gruvbox_material#highlight('markdownItalicDelimiter', s:palette.grey1, s:palette.none, 'italic')
highlight! link markdownCode Green
highlight! link markdownCodeBlock Aqua
highlight! link markdownCodeDelimiter Aqua
highlight! link markdownBlockquote Grey
highlight! link markdownListMarker Red
highlight! link markdownOrderedListMarker Red
highlight! link markdownRule Purple
highlight! link markdownHeadingRule Grey
highlight! link markdownUrlDelimiter Grey
highlight! link markdownLinkDelimiter Grey
highlight! link markdownLinkTextDelimiter Grey
highlight! link markdownHeadingDelimiter Grey
highlight! link markdownLinkText Purple
highlight! link markdownUrlTitleDelimiter Green
highlight! link markdownIdDeclaration markdownLinkText
highlight! link markdownBoldDelimiter Grey
highlight! link markdownId Yellow
" }}}
" vim-markdown: https://github.com/gabrielelana/vim-markdown {{{
call gruvbox_material#highlight('mkdURL', s:palette.blue, s:palette.none, 'underline')
call gruvbox_material#highlight('mkdInlineURL', s:palette.purple, s:palette.none, 'underline')
call gruvbox_material#highlight('mkdItalic', s:palette.grey1, s:palette.none, 'italic')
highlight! link mkdCodeDelimiter Aqua
highlight! link mkdBold Grey
highlight! link mkdLink Purple
highlight! link mkdHeading Grey
highlight! link mkdListItem Red
highlight! link mkdRule Purple
highlight! link mkdDelimiter Grey
highlight! link mkdId Yellow
" }}}
" ft_end }}}
" ft_begin: rst {{{
" builtin: https://github.com/marshallward/vim-restructuredtext {{{
call gruvbox_material#highlight('rstStandaloneHyperlink', s:palette.purple, s:palette.none, 'underline')
highlight! link rstSubstitutionReference Blue
highlight! link rstInterpretedTextOrHyperlinkReference Aqua
highlight! link rstTableLines Grey
" }}}
" ft_end }}}
" ft_begin: tex {{{
" builtin: http://www.drchip.org/astronaut/vim/index.html#SYNTAX_TEX {{{
highlight! link texStatement Green
highlight! link texOnlyMath Grey
highlight! link texDefName Yellow
highlight! link texNewCmd Orange
highlight! link texCmdName Blue
highlight! link texBeginEnd Red
highlight! link texBeginEndName Blue
highlight! link texDocType Purple
highlight! link texDocTypeArgs Orange
" }}}
" ft_end }}}
" ft_begin: html/markdown/javascriptreact/typescriptreact {{{
" builtin: https://notabug.org/jorgesumle/vim-html-syntax {{{
call gruvbox_material#highlight('htmlH1', s:palette.red, s:palette.none, 'bold')
call gruvbox_material#highlight('htmlH2', s:palette.orange, s:palette.none, 'bold')
call gruvbox_material#highlight('htmlH3', s:palette.yellow, s:palette.none, 'bold')
call gruvbox_material#highlight('htmlH4', s:palette.green, s:palette.none, 'bold')
call gruvbox_material#highlight('htmlH5', s:palette.blue, s:palette.none, 'bold')
call gruvbox_material#highlight('htmlH6', s:palette.purple, s:palette.none, 'bold')
call gruvbox_material#highlight('htmlLink', s:palette.none, s:palette.none, 'underline')
call gruvbox_material#highlight('htmlBold', s:palette.none, s:palette.none, 'bold')
call gruvbox_material#highlight('htmlBoldUnderline', s:palette.none, s:palette.none, 'bold,underline')
call gruvbox_material#highlight('htmlBoldItalic', s:palette.none, s:palette.none, 'bold,italic')
call gruvbox_material#highlight('htmlBoldUnderlineItalic', s:palette.none, s:palette.none, 'bold,underline,italic')
call gruvbox_material#highlight('htmlUnderline', s:palette.none, s:palette.none, 'underline')
call gruvbox_material#highlight('htmlUnderlineItalic', s:palette.none, s:palette.none, 'underline,italic')
call gruvbox_material#highlight('htmlItalic', s:palette.none, s:palette.none, 'italic')
highlight! link htmlTag Green
highlight! link htmlEndTag Blue
highlight! link htmlTagN OrangeItalic
highlight! link htmlTagName OrangeItalic
highlight! link htmlArg Aqua
highlight! link htmlScriptTag Purple
highlight! link htmlSpecialTagName RedItalic
" }}}
" ft_end }}}
" ft_begin: xml {{{
" builtin: https://github.com/chrisbra/vim-xml-ftplugin {{{
highlight! link xmlTag Green
highlight! link xmlEndTag Blue
highlight! link xmlTagName OrangeItalic
highlight! link xmlEqual Orange
highlight! link xmlAttrib Aqua
highlight! link xmlEntity Red
highlight! link xmlEntityPunct Red
highlight! link xmlDocTypeDecl Grey
highlight! link xmlDocTypeKeyword PurpleItalic
highlight! link xmlCdataStart Grey
highlight! link xmlCdataCdata Purple
" }}}
" ft_end }}}
" ft_begin: css/scss/sass/less {{{
" builtin: https://github.com/JulesWang/css.vim {{{
highlight! link cssAttrComma Fg
highlight! link cssBraces Fg
highlight! link cssTagName PurpleItalic
highlight! link cssClassNameDot Red
highlight! link cssClassName RedItalic
highlight! link cssFunctionName Yellow
highlight! link cssAttr Orange
highlight! link cssProp Aqua
highlight! link cssCommonAttr Yellow
highlight! link cssPseudoClassId Blue
highlight! link cssPseudoClassFn Green
highlight! link cssPseudoClass Purple
highlight! link cssImportant RedItalic
highlight! link cssSelectorOp Orange
highlight! link cssSelectorOp2 Orange
highlight! link cssColor Green
highlight! link cssAttributeSelector Aqua
highlight! link cssUnitDecorators Orange
highlight! link cssValueLength Green
highlight! link cssValueInteger Green
highlight! link cssValueNumber Green
highlight! link cssValueAngle Green
highlight! link cssValueTime Green
highlight! link cssValueFrequency Green
highlight! link cssVendor Grey
highlight! link cssNoise Grey
" }}}
" ft_end }}}
" ft_begin: scss {{{
" scss-syntax: https://github.com/cakebaker/scss-syntax.vim {{{
highlight! link scssMixinName Yellow
highlight! link scssSelectorChar Red
highlight! link scssSelectorName RedItalic
highlight! link scssInterpolationDelimiter Green
highlight! link scssVariableValue Green
highlight! link scssNull Purple
highlight! link scssBoolean Purple
highlight! link scssVariableAssignment Grey
highlight! link scssForKeyword PurpleItalic
highlight! link scssAttribute Orange
highlight! link scssFunctionName Yellow
" }}}
" ft_end }}}
" ft_begin: sass {{{
" builtin: {{{
highlight! link sassProperty Aqua
highlight! link sassAmpersand Orange
highlight! link sassClass RedItalic
highlight! link sassClassChar Red
highlight! link sassMixing PurpleItalic
highlight! link sassMixinName Orange
highlight! link sassCssAttribute Yellow
highlight! link sassInterpolationDelimiter Green
highlight! link sassFunction Yellow
highlight! link sassControl RedItalic
highlight! link sassFor RedItalic
highlight! link sassFunctionName GreenBold
" }}}
" ft_end }}}
" ft_begin: less {{{
" vim-less: https://github.com/groenewege/vim-less {{{
highlight! link lessMixinChar Grey
highlight! link lessClass RedItalic
highlight! link lessVariable Blue
highlight! link lessAmpersandChar Orange
highlight! link lessFunction Yellow
" }}}
" ft_end }}}
" ft_begin: javascript/javascriptreact {{{
" builtin: http://www.fleiner.com/vim/syntax/javascript.vim {{{
highlight! link javaScriptNull Aqua
highlight! link javaScriptIdentifier Orange
highlight! link javaScriptParens Fg
highlight! link javaScriptBraces Fg
highlight! link javaScriptGlobal Purple
highlight! link javaScriptMessage Yellow
highlight! link javaScriptFunction RedItalic
highlight! link javaScriptOperator Orange
highlight! link javaScriptMember Aqua
" }}}
" vim-javascript: https://github.com/pangloss/vim-javascript {{{
highlight! link jsThis Purple
highlight! link jsUndefined Aqua
highlight! link jsNull Aqua
highlight! link jsNan Aqua
highlight! link jsSuper Purple
highlight! link jsPrototype Purple
highlight! link jsFunction RedItalic
highlight! link jsGlobalNodeObjects PurpleItalic
highlight! link jsGlobalObjects Yellow
highlight! link jsArrowFunction Purple
highlight! link jsArrowFuncArgs Blue
highlight! link jsFuncArgs Blue
highlight! link jsObjectProp Aqua
highlight! link jsVariableDef Blue
highlight! link jsObjectKey Aqua
highlight! link jsParen Blue
highlight! link jsParenIfElse Blue
highlight! link jsParenRepeat Blue
highlight! link jsParenSwitch Blue
highlight! link jsParenCatch Blue
highlight! link jsBracket Blue
highlight! link jsBlockLabel Aqua
highlight! link jsFunctionKey GreenBold
highlight! link jsClassDefinition Yellow
highlight! link jsDot Grey
highlight! link jsDestructuringBlock Blue
highlight! link jsSpreadExpression Purple
highlight! link jsSpreadOperator Green
highlight! link jsModuleKeyword Yellow
highlight! link jsObjectValue Blue
highlight! link jsTemplateExpression Yellow
highlight! link jsTemplateBraces Yellow
highlight! link jsClassMethodType Orange
" }}}
" yajs: https://github.com/othree/yajs.vim {{{
highlight! link javascriptEndColons Fg
highlight! link javascriptOpSymbol Orange
highlight! link javascriptOpSymbols Orange
highlight! link javascriptIdentifierName Blue
highlight! link javascriptVariable Orange
highlight! link javascriptObjectLabel Aqua
highlight! link javascriptObjectLabelColon Grey
highlight! link javascriptPropertyNameString Aqua
highlight! link javascriptFuncArg Blue
highlight! link javascriptIdentifier Purple
highlight! link javascriptArrowFunc Purple
highlight! link javascriptTemplate Yellow
highlight! link javascriptTemplateSubstitution Yellow
highlight! link javascriptTemplateSB Yellow
highlight! link javascriptNodeGlobal PurpleItalic
highlight! link javascriptDocTags PurpleItalic
highlight! link javascriptDocNotation Purple
highlight! link javascriptClassSuper Purple
highlight! link javascriptClassName Yellow
highlight! link javascriptClassSuperName Yellow
highlight! link javascriptBrackets Fg
highlight! link javascriptBraces Fg
highlight! link javascriptLabel Purple
highlight! link javascriptDotNotation Grey
highlight! link javascriptGlobalArrayDot Grey
highlight! link javascriptGlobalBigIntDot Grey
highlight! link javascriptGlobalDateDot Grey
highlight! link javascriptGlobalJSONDot Grey
highlight! link javascriptGlobalMathDot Grey
highlight! link javascriptGlobalNumberDot Grey
highlight! link javascriptGlobalObjectDot Grey
highlight! link javascriptGlobalPromiseDot Grey
highlight! link javascriptGlobalRegExpDot Grey
highlight! link javascriptGlobalStringDot Grey
highlight! link javascriptGlobalSymbolDot Grey
highlight! link javascriptGlobalURLDot Grey
highlight! link javascriptMethod GreenBold
highlight! link javascriptMethodName GreenBold
highlight! link javascriptObjectMethodName GreenBold
highlight! link javascriptGlobalMethod GreenBold
highlight! link javascriptDOMStorageMethod GreenBold
highlight! link javascriptFileMethod GreenBold
highlight! link javascriptFileReaderMethod GreenBold
highlight! link javascriptFileListMethod GreenBold
highlight! link javascriptBlobMethod GreenBold
highlight! link javascriptURLStaticMethod GreenBold
highlight! link javascriptNumberStaticMethod GreenBold
highlight! link javascriptNumberMethod GreenBold
highlight! link javascriptDOMNodeMethod GreenBold
highlight! link javascriptES6BigIntStaticMethod GreenBold
highlight! link javascriptBOMWindowMethod GreenBold
highlight! link javascriptHeadersMethod GreenBold
highlight! link javascriptRequestMethod GreenBold
highlight! link javascriptResponseMethod GreenBold
highlight! link javascriptES6SetMethod GreenBold
highlight! link javascriptReflectMethod GreenBold
highlight! link javascriptPaymentMethod GreenBold
highlight! link javascriptPaymentResponseMethod GreenBold
highlight! link javascriptTypedArrayStaticMethod GreenBold
highlight! link javascriptGeolocationMethod GreenBold
highlight! link javascriptES6MapMethod GreenBold
highlight! link javascriptServiceWorkerMethod GreenBold
highlight! link javascriptCacheMethod GreenBold
highlight! link javascriptFunctionMethod GreenBold
highlight! link javascriptXHRMethod GreenBold
highlight! link javascriptBOMNavigatorMethod GreenBold
highlight! link javascriptServiceWorkerMethod GreenBold
highlight! link javascriptDOMEventTargetMethod GreenBold
highlight! link javascriptDOMEventMethod GreenBold
highlight! link javascriptIntlMethod GreenBold
highlight! link javascriptDOMDocMethod GreenBold
highlight! link javascriptStringStaticMethod GreenBold
highlight! link javascriptStringMethod GreenBold
highlight! link javascriptSymbolStaticMethod GreenBold
highlight! link javascriptRegExpMethod GreenBold
highlight! link javascriptObjectStaticMethod GreenBold
highlight! link javascriptObjectMethod GreenBold
highlight! link javascriptBOMLocationMethod GreenBold
highlight! link javascriptJSONStaticMethod GreenBold
highlight! link javascriptGeneratorMethod GreenBold
highlight! link javascriptEncodingMethod GreenBold
highlight! link javascriptPromiseStaticMethod GreenBold
highlight! link javascriptPromiseMethod GreenBold
highlight! link javascriptBOMHistoryMethod GreenBold
highlight! link javascriptDOMFormMethod GreenBold
highlight! link javascriptClipboardMethod GreenBold
highlight! link javascriptTypedArrayStaticMethod GreenBold
highlight! link javascriptBroadcastMethod GreenBold
highlight! link javascriptDateStaticMethod GreenBold
highlight! link javascriptDateMethod GreenBold
highlight! link javascriptConsoleMethod GreenBold
highlight! link javascriptArrayStaticMethod GreenBold
highlight! link javascriptArrayMethod GreenBold
highlight! link javascriptMathStaticMethod GreenBold
highlight! link javascriptSubtleCryptoMethod GreenBold
highlight! link javascriptCryptoMethod GreenBold
highlight! link javascriptProp Aqua
highlight! link javascriptBOMWindowProp Aqua
highlight! link javascriptDOMStorageProp Aqua
highlight! link javascriptFileReaderProp Aqua
highlight! link javascriptURLUtilsProp Aqua
highlight! link javascriptNumberStaticProp Aqua
highlight! link javascriptDOMNodeProp Aqua
highlight! link javascriptRequestProp Aqua
highlight! link javascriptResponseProp Aqua
highlight! link javascriptES6SetProp Aqua
highlight! link javascriptPaymentProp Aqua
highlight! link javascriptPaymentResponseProp Aqua
highlight! link javascriptPaymentAddressProp Aqua
highlight! link javascriptPaymentShippingOptionProp Aqua
highlight! link javascriptTypedArrayStaticProp Aqua
highlight! link javascriptServiceWorkerProp Aqua
highlight! link javascriptES6MapProp Aqua
highlight! link javascriptRegExpStaticProp Aqua
highlight! link javascriptRegExpProp Aqua
highlight! link javascriptXHRProp Aqua
highlight! link javascriptBOMNavigatorProp GreenBold
highlight! link javascriptDOMEventProp Aqua
highlight! link javascriptBOMNetworkProp Aqua
highlight! link javascriptDOMDocProp Aqua
highlight! link javascriptSymbolStaticProp Aqua
highlight! link javascriptSymbolProp Aqua
highlight! link javascriptBOMLocationProp Aqua
highlight! link javascriptEncodingProp Aqua
highlight! link javascriptCryptoProp Aqua
highlight! link javascriptBOMHistoryProp Aqua
highlight! link javascriptDOMFormProp Aqua
highlight! link javascriptDataViewProp Aqua
highlight! link javascriptBroadcastProp Aqua
highlight! link javascriptMathStaticProp Aqua
" }}}
" vim-jsx-pretty: https://github.com/maxmellon/vim-jsx-pretty {{{
highlight! link jsxTagName OrangeItalic
highlight! link jsxOpenPunct Green
highlight! link jsxClosePunct Blue
highlight! link jsxEscapeJs Blue
highlight! link jsxAttrib Aqua
" }}}
" ft_end }}}
" ft_begin: typescript/typescriptreact {{{
" vim-typescript: https://github.com/leafgarland/typescript-vim {{{
highlight! link typescriptSource PurpleItalic
highlight! link typescriptMessage Yellow
highlight! link typescriptGlobalObjects Aqua
highlight! link typescriptInterpolation Yellow
highlight! link typescriptInterpolationDelimiter Yellow
highlight! link typescriptBraces Fg
highlight! link typescriptParens Fg
" }}}
" yats: https:github.com/HerringtonDarkholme/yats.vim {{{
highlight! link typescriptMethodAccessor OrangeItalic
highlight! link typescriptVariable Orange
highlight! link typescriptVariableDeclaration Blue
highlight! link typescriptTypeReference Yellow
highlight! link typescriptBraces Fg
highlight! link typescriptEnumKeyword RedItalic
highlight! link typescriptEnum Yellow
highlight! link typescriptIdentifierName Aqua
highlight! link typescriptProp Aqua
highlight! link typescriptCall Blue
highlight! link typescriptInterfaceName Yellow
highlight! link typescriptEndColons Fg
highlight! link typescriptMember Aqua
highlight! link typescriptMemberOptionality Orange
highlight! link typescriptObjectLabel Aqua
highlight! link typescriptArrowFunc Purple
highlight! link typescriptAbstract Orange
highlight! link typescriptObjectColon Grey
highlight! link typescriptTypeAnnotation Grey
highlight! link typescriptAssign Orange
highlight! link typescriptBinaryOp Orange
highlight! link typescriptUnaryOp Orange
highlight! link typescriptFuncComma Fg
highlight! link typescriptClassName Yellow
highlight! link typescriptClassHeritage Yellow
highlight! link typescriptInterfaceHeritage Yellow
highlight! link typescriptIdentifier Purple
highlight! link typescriptGlobal Purple
highlight! link typescriptOperator RedItalic
highlight! link typescriptNodeGlobal PurpleItalic
highlight! link typescriptExport PurpleItalic
highlight! link typescriptDefaultParam Orange
highlight! link typescriptImport PurpleItalic
highlight! link typescriptTypeParameter Yellow
highlight! link typescriptReadonlyModifier Orange
highlight! link typescriptAccessibilityModifier Orange
highlight! link typescriptAmbientDeclaration RedItalic
highlight! link typescriptTemplateSubstitution Yellow
highlight! link typescriptTemplateSB Yellow
highlight! link typescriptExceptions RedItalic
highlight! link typescriptCastKeyword RedItalic
highlight! link typescriptOptionalMark Orange
highlight! link typescriptNull Aqua
highlight! link typescriptMappedIn RedItalic
highlight! link typescriptFuncTypeArrow Purple
highlight! link typescriptTernaryOp Orange
highlight! link typescriptParenExp Blue
highlight! link typescriptIndexExpr Blue
highlight! link typescriptDotNotation Grey
highlight! link typescriptGlobalNumberDot Grey
highlight! link typescriptGlobalStringDot Grey
highlight! link typescriptGlobalArrayDot Grey
highlight! link typescriptGlobalObjectDot Grey
highlight! link typescriptGlobalSymbolDot Grey
highlight! link typescriptGlobalMathDot Grey
highlight! link typescriptGlobalDateDot Grey
highlight! link typescriptGlobalJSONDot Grey
highlight! link typescriptGlobalRegExpDot Grey
highlight! link typescriptGlobalPromiseDot Grey
highlight! link typescriptGlobalURLDot Grey
highlight! link typescriptGlobalMethod GreenBold
highlight! link typescriptDOMStorageMethod GreenBold
highlight! link typescriptFileMethod GreenBold
highlight! link typescriptFileReaderMethod GreenBold
highlight! link typescriptFileListMethod GreenBold
highlight! link typescriptBlobMethod GreenBold
highlight! link typescriptURLStaticMethod GreenBold
highlight! link typescriptNumberStaticMethod GreenBold
highlight! link typescriptNumberMethod GreenBold
highlight! link typescriptDOMNodeMethod GreenBold
highlight! link typescriptPaymentMethod GreenBold
highlight! link typescriptPaymentResponseMethod GreenBold
highlight! link typescriptHeadersMethod GreenBold
highlight! link typescriptRequestMethod GreenBold
highlight! link typescriptResponseMethod GreenBold
highlight! link typescriptES6SetMethod GreenBold
highlight! link typescriptReflectMethod GreenBold
highlight! link typescriptBOMWindowMethod GreenBold
highlight! link typescriptGeolocationMethod GreenBold
highlight! link typescriptServiceWorkerMethod GreenBold
highlight! link typescriptCacheMethod GreenBold
highlight! link typescriptES6MapMethod GreenBold
highlight! link typescriptFunctionMethod GreenBold
highlight! link typescriptRegExpMethod GreenBold
highlight! link typescriptXHRMethod GreenBold
highlight! link typescriptBOMNavigatorMethod GreenBold
highlight! link typescriptServiceWorkerMethod GreenBold
highlight! link typescriptIntlMethod GreenBold
highlight! link typescriptDOMEventTargetMethod GreenBold
highlight! link typescriptDOMEventMethod GreenBold
highlight! link typescriptDOMDocMethod GreenBold
highlight! link typescriptStringStaticMethod GreenBold
highlight! link typescriptStringMethod GreenBold
highlight! link typescriptSymbolStaticMethod GreenBold
highlight! link typescriptObjectStaticMethod GreenBold
highlight! link typescriptObjectMethod GreenBold
highlight! link typescriptJSONStaticMethod GreenBold
highlight! link typescriptEncodingMethod GreenBold
highlight! link typescriptBOMLocationMethod GreenBold
highlight! link typescriptPromiseStaticMethod GreenBold
highlight! link typescriptPromiseMethod GreenBold
highlight! link typescriptSubtleCryptoMethod GreenBold
highlight! link typescriptCryptoMethod GreenBold
highlight! link typescriptBOMHistoryMethod GreenBold
highlight! link typescriptDOMFormMethod GreenBold
highlight! link typescriptConsoleMethod GreenBold
highlight! link typescriptDateStaticMethod GreenBold
highlight! link typescriptDateMethod GreenBold
highlight! link typescriptArrayStaticMethod GreenBold
highlight! link typescriptArrayMethod GreenBold
highlight! link typescriptMathStaticMethod GreenBold
highlight! link typescriptStringProperty Aqua
highlight! link typescriptDOMStorageProp Aqua
highlight! link typescriptFileReaderProp Aqua
highlight! link typescriptURLUtilsProp Aqua
highlight! link typescriptNumberStaticProp Aqua
highlight! link typescriptDOMNodeProp Aqua
highlight! link typescriptBOMWindowProp Aqua
highlight! link typescriptRequestProp Aqua
highlight! link typescriptResponseProp Aqua
highlight! link typescriptPaymentProp Aqua
highlight! link typescriptPaymentResponseProp Aqua
highlight! link typescriptPaymentAddressProp Aqua
highlight! link typescriptPaymentShippingOptionProp Aqua
highlight! link typescriptES6SetProp Aqua
highlight! link typescriptServiceWorkerProp Aqua
highlight! link typescriptES6MapProp Aqua
highlight! link typescriptRegExpStaticProp Aqua
highlight! link typescriptRegExpProp Aqua
highlight! link typescriptBOMNavigatorProp GreenBold
highlight! link typescriptXHRProp Aqua
highlight! link typescriptDOMEventProp Aqua
highlight! link typescriptDOMDocProp Aqua
highlight! link typescriptBOMNetworkProp Aqua
highlight! link typescriptSymbolStaticProp Aqua
highlight! link typescriptEncodingProp Aqua
highlight! link typescriptBOMLocationProp Aqua
highlight! link typescriptCryptoProp Aqua
highlight! link typescriptDOMFormProp Aqua
highlight! link typescriptBOMHistoryProp Aqua
highlight! link typescriptMathStaticProp Aqua
" }}}
" ft_end }}}
" ft_begin: dart {{{
" dart-lang: https://github.com/dart-lang/dart-vim-plugin {{{
highlight! link dartCoreClasses Aqua
highlight! link dartTypeName Aqua
highlight! link dartInterpolation Blue
highlight! link dartTypeDef RedItalic
highlight! link dartClassDecl RedItalic
highlight! link dartLibrary PurpleItalic
highlight! link dartMetadata Blue
" }}}
" ft_end }}}
" ft_begin: coffee {{{
" vim-coffee-script: https://github.com/kchmck/vim-coffee-script {{{
highlight! link coffeeExtendedOp Orange
highlight! link coffeeSpecialOp Fg
highlight! link coffeeDotAccess Grey
highlight! link coffeeCurly Fg
highlight! link coffeeParen Fg
highlight! link coffeeBracket Fg
highlight! link coffeeParens Blue
highlight! link coffeeBrackets Blue
highlight! link coffeeCurlies Blue
highlight! link coffeeOperator RedItalic
highlight! link coffeeStatement Orange
highlight! link coffeeSpecialIdent Purple
highlight! link coffeeObject Purple
highlight! link coffeeObjAssign Aqua
" }}}
" ft_end }}}
" ft_begin: purescript {{{
" purescript-vim: https://github.com/purescript-contrib/purescript-vim {{{
highlight! link purescriptModuleKeyword PurpleItalic
highlight! link purescriptModule Aqua
highlight! link purescriptModuleParams Blue
highlight! link purescriptAsKeyword OrangeItalic
highlight! link purescriptHidingKeyword OrangeItalic
highlight! link purescriptWhere OrangeItalic
highlight! link purescriptIdentifier Blue
highlight! link purescriptFunction Yellow
highlight! link purescriptType Aqua
" }}}
" ft_end }}}
" ft_begin: c/cpp/objc/objcpp {{{
" vim-cpp-enhanced-highlight: https://github.com/octol/vim-cpp-enhanced-highlight {{{
highlight! link cppSTLnamespace Purple
highlight! link cppSTLtype Yellow
highlight! link cppAccess PurpleItalic
highlight! link cppStructure RedItalic
highlight! link cppSTLios Aqua
highlight! link cppSTLiterator PurpleItalic
highlight! link cppSTLexception Purple
" }}}
" vim-cpp-modern: https://github.com/bfrg/vim-cpp-modern {{{
highlight! link cppSTLVariable Aqua
" }}}
" chromatica: https://github.com/arakashic/chromatica.nvim {{{
highlight! link Member Aqua
highlight! link Variable Blue
highlight! link Namespace Purple
highlight! link EnumConstant Aqua
highlight! link chromaticaException RedItalic
highlight! link chromaticaCast Orange
highlight! link OperatorOverload Orange
highlight! link AccessQual Orange
highlight! link Linkage Orange
highlight! link AutoType Yellow
" }}}
" vim-lsp-cxx-highlight https://github.com/jackguo380/vim-lsp-cxx-highlight {{{
highlight! link LspCxxHlSkippedRegion Grey
highlight! link LspCxxHlSkippedRegionBeginEnd PurpleItalic
highlight! link LspCxxHlGroupEnumConstant Aqua
highlight! link LspCxxHlGroupNamespace Purple
highlight! link LspCxxHlGroupMemberVariable Aqua
" }}}
" ft_end }}}
" ft_begin: objc {{{
" builtin: {{{
highlight! link objcModuleImport PurpleItalic
highlight! link objcException RedItalic
highlight! link objcProtocolList Aqua
highlight! link objcObjDef PurpleItalic
highlight! link objcDirective RedItalic
highlight! link objcPropertyAttribute Orange
highlight! link objcHiddenArgument Aqua
" }}}
" ft_end }}}
" ft_begin: cs {{{
" builtin: https://github.com/nickspoons/vim-cs {{{
highlight! link csUnspecifiedStatement PurpleItalic
highlight! link csStorage RedItalic
highlight! link csClass RedItalic
highlight! link csNewType Aqua
highlight! link csContextualStatement PurpleItalic
highlight! link csInterpolationDelimiter Yellow
highlight! link csInterpolation Yellow
highlight! link csEndColon Fg
" }}}
" ft_end }}}
" ft_begin: python {{{
" builtin: {{{
highlight! link pythonBuiltin Yellow
highlight! link pythonExceptions Purple
highlight! link pythonDecoratorName Blue
" }}}
" python-syntax: https://github.com/vim-python/python-syntax {{{
highlight! link pythonExClass Purple
highlight! link pythonBuiltinType Yellow
highlight! link pythonBuiltinObj Blue
highlight! link pythonDottedName PurpleItalic
highlight! link pythonBuiltinFunc GreenBold
highlight! link pythonFunction AquaBold
highlight! link pythonDecorator Orange
highlight! link pythonInclude Include
highlight! link pythonImport PreProc
highlight! link pythonRun Blue
highlight! link pythonCoding Grey
highlight! link pythonOperator Orange
highlight! link pythonConditional RedItalic
highlight! link pythonRepeat RedItalic
highlight! link pythonException RedItalic
highlight! link pythonNone Aqua
highlight! link pythonDot Grey
" }}}
" semshi: https://github.com/numirias/semshi {{{
call gruvbox_material#highlight('semshiUnresolved', s:palette.yellow, s:palette.none, 'undercurl')
highlight! link semshiImported Purple
highlight! link semshiParameter Blue
highlight! link semshiParameterUnused Grey
highlight! link semshiSelf PurpleItalic
highlight! link semshiGlobal Yellow
highlight! link semshiBuiltin Yellow
highlight! link semshiAttribute Aqua
highlight! link semshiLocal Red
highlight! link semshiFree Red
highlight! link semshiSelected CurrentWord
highlight! link semshiErrorSign RedSign
highlight! link semshiErrorChar RedSign
" }}}
" ft_end }}}
" ft_begin: lua {{{
" builtin: {{{
highlight! link luaFunc GreenBold
highlight! link luaFunction Aqua
highlight! link luaTable Fg
highlight! link luaIn RedItalic
" }}}
" vim-lua: https://github.com/tbastos/vim-lua {{{
highlight! link luaFuncCall GreenBold
highlight! link luaLocal Orange
highlight! link luaSpecialValue GreenBold
highlight! link luaBraces Fg
highlight! link luaBuiltIn Purple
highlight! link luaNoise Grey
highlight! link luaLabel Purple
highlight! link luaFuncTable Yellow
highlight! link luaFuncArgName Blue
highlight! link luaEllipsis Orange
highlight! link luaDocTag Green
" }}}
" ft_end }}}
" ft_begin: moon {{{
" moonscript-vim: https://github.com/leafo/moonscript-vim {{{
highlight! link moonInterpDelim Yellow
highlight! link moonInterp Blue
highlight! link moonFunction Green
highlight! link moonLuaFunc AquaBold
highlight! link moonSpecialVar Purple
highlight! link moonObject Yellow
highlight! link moonDotAccess Grey
" }}}
" ft_end }}}
" ft_begin: java {{{
" builtin: {{{
highlight! link javaClassDecl RedItalic
highlight! link javaMethodDecl RedItalic
highlight! link javaVarArg Green
highlight! link javaAnnotation Blue
highlight! link javaUserLabel Purple
highlight! link javaTypedef Aqua
highlight! link javaParen Fg
highlight! link javaParen1 Fg
highlight! link javaParen2 Fg
highlight! link javaParen3 Fg
highlight! link javaParen4 Fg
highlight! link javaParen5 Fg
" }}}
" ft_end }}}
" ft_begin: kotlin {{{
" kotlin-vim: https://github.com/udalov/kotlin-vim {{{
highlight! link ktSimpleInterpolation Yellow
highlight! link ktComplexInterpolation Yellow
highlight! link ktComplexInterpolationBrace Yellow
highlight! link ktStructure RedItalic
highlight! link ktKeyword Aqua
" }}}
" ft_end }}}
" ft_begin: scala {{{
" builtin: https://github.com/derekwyatt/vim-scala {{{
highlight! link scalaNameDefinition Aqua
highlight! link scalaInterpolationBoundary Yellow
highlight! link scalaInterpolation Blue
highlight! link scalaTypeOperator Orange
highlight! link scalaOperator Orange
highlight! link scalaKeywordModifier Orange
" }}}
" ft_end }}}
" ft_begin: go {{{
" builtin: https://github.com/google/vim-ft-go {{{
highlight! link goDirective PurpleItalic
highlight! link goConstants Aqua
highlight! link goDeclType OrangeItalic
" }}}
" polyglot: {{{
highlight! link goPackage PurpleItalic
highlight! link goImport PurpleItalic
highlight! link goVarArgs Blue
highlight! link goBuiltins GreenBold
highlight! link goPredefinedIdentifiers Aqua
highlight! link goVar Orange
" }}}
" ft_end }}}
" ft_begin: rust {{{
" builtin: https://github.com/rust-lang/rust.vim {{{
highlight! link rustStructure Orange
highlight! link rustIdentifier Purple
highlight! link rustModPath Orange
highlight! link rustModPathSep Grey
highlight! link rustSelf Blue
highlight! link rustSuper Blue
highlight! link rustDeriveTrait PurpleItalic
highlight! link rustEnumVariant Purple
highlight! link rustMacroVariable Blue
highlight! link rustAssert Aqua
highlight! link rustPanic Aqua
highlight! link rustPubScopeCrate PurpleItalic
" }}}
" ft_end }}}
" ft_begin: swift {{{
" swift.vim: https://github.com/keith/swift.vim {{{
highlight! link swiftInterpolatedWrapper Yellow
highlight! link swiftInterpolatedString Blue
highlight! link swiftProperty Aqua
highlight! link swiftTypeDeclaration Orange
highlight! link swiftClosureArgument Purple
" }}}
" ft_end }}}
" ft_begin: php {{{
" builtin: https://jasonwoof.com/gitweb/?p=vim-syntax.git;a=blob;f=php.vim;hb=HEAD {{{
highlight! link phpVarSelector Blue
highlight! link phpDefine OrangeItalic
highlight! link phpStructure RedItalic
highlight! link phpSpecialFunction GreenBold
highlight! link phpInterpSimpleCurly Yellow
highlight! link phpComparison Orange
highlight! link phpMethodsVar Aqua
highlight! link phpMemberSelector Green
" }}}
" php.vim: https://github.com/StanAngeloff/php.vim {{{
highlight! link phpParent Fg
highlight! link phpNowDoc Green
highlight! link phpFunction GreenBold
highlight! link phpMethod GreenBold
highlight! link phpClass Orange
highlight! link phpSuperglobals Purple
" }}}
" ft_end }}}
" ft_begin: ruby {{{
" builtin: https://github.com/vim-ruby/vim-ruby {{{
highlight! link rubyKeywordAsMethod GreenBold
highlight! link rubyInterpolation Yellow
highlight! link rubyInterpolationDelimiter Yellow
highlight! link rubyStringDelimiter Green
highlight! link rubyBlockParameterList Blue
highlight! link rubyDefine RedItalic
highlight! link rubyModuleName Purple
highlight! link rubyAccess Orange
highlight! link rubyAttribute Yellow
highlight! link rubyMacro RedItalic
" }}}
" ft_end }}}
" ft_begin: haskell {{{
" haskell-vim: https://github.com/neovimhaskell/haskell-vim {{{
highlight! link haskellBrackets Blue
highlight! link haskellIdentifier Yellow
highlight! link haskellAssocType Aqua
highlight! link haskellQuotedType Aqua
highlight! link haskellType Aqua
highlight! link haskellDeclKeyword RedItalic
highlight! link haskellWhere RedItalic
highlight! link haskellDeriving PurpleItalic
highlight! link haskellForeignKeywords PurpleItalic
" }}}
" ft_end }}}
" ft_begin: perl/pod {{{
" builtin: https://github.com/vim-perl/vim-perl {{{
highlight! link perlStatementPackage PurpleItalic
highlight! link perlStatementInclude PurpleItalic
highlight! link perlStatementStorage Orange
highlight! link perlStatementList Orange
highlight! link perlMatchStartEnd Orange
highlight! link perlVarSimpleMemberName Aqua
highlight! link perlVarSimpleMember Fg
highlight! link perlMethod GreenBold
highlight! link podVerbatimLine Green
highlight! link podCmdText Yellow
" }}}
" ft_end }}}
" ft_begin: ocaml {{{
" builtin: https://github.com/rgrinberg/vim-ocaml {{{
highlight! link ocamlArrow Orange
highlight! link ocamlEqual Orange
highlight! link ocamlOperator Orange
highlight! link ocamlKeyChar Orange
highlight! link ocamlModPath Green
highlight! link ocamlFullMod Green
highlight! link ocamlModule Purple
highlight! link ocamlConstructor Aqua
highlight! link ocamlFuncWith Yellow
highlight! link ocamlWith Yellow
highlight! link ocamlModParam Fg
highlight! link ocamlModParam1 Fg
highlight! link ocamlAnyVar Blue
highlight! link ocamlPpxEncl Orange
highlight! link ocamlPpxIdentifier Blue
highlight! link ocamlSigEncl Orange
highlight! link ocamlStructEncl Aqua
highlight! link ocamlModParam1 Blue
" }}}
" ft_end }}}
" ft_begin: erlang {{{
" builtin: https://github.com/vim-erlang/vim-erlang-runtime {{{
highlight! link erlangAtom Aqua
highlight! link erlangLocalFuncRef GreenBold
highlight! link erlangLocalFuncCall GreenBold
highlight! link erlangGlobalFuncRef GreenBold
highlight! link erlangGlobalFuncCall GreenBold
highlight! link erlangAttribute PurpleItalic
highlight! link erlangPipe Orange
" }}}
" ft_end }}}
" ft_begin: elixir {{{
" vim-elixir: https://github.com/elixir-editors/vim-elixir {{{
highlight! link elixirStringDelimiter Green
highlight! link elixirKeyword Orange
highlight! link elixirInterpolation Yellow
highlight! link elixirInterpolationDelimiter Yellow
highlight! link elixirSelf Purple
highlight! link elixirPseudoVariable Purple
highlight! link elixirModuleDefine PurpleItalic
highlight! link elixirBlockDefinition RedItalic
highlight! link elixirDefine RedItalic
highlight! link elixirPrivateDefine RedItalic
highlight! link elixirGuard RedItalic
highlight! link elixirPrivateGuard RedItalic
highlight! link elixirProtocolDefine RedItalic
highlight! link elixirImplDefine RedItalic
highlight! link elixirRecordDefine RedItalic
highlight! link elixirPrivateRecordDefine RedItalic
highlight! link elixirMacroDefine RedItalic
highlight! link elixirPrivateMacroDefine RedItalic
highlight! link elixirDelegateDefine RedItalic
highlight! link elixirOverridableDefine RedItalic
highlight! link elixirExceptionDefine RedItalic
highlight! link elixirCallbackDefine RedItalic
highlight! link elixirStructDefine RedItalic
highlight! link elixirExUnitMacro RedItalic
" }}}
" ft_end }}}
" ft_begin: lisp {{{
" builtin: http://www.drchip.org/astronaut/vim/index.html#SYNTAX_LISP {{{
highlight! link lispAtomMark Green
highlight! link lispKey Aqua
highlight! link lispFunc OrangeItalic
" }}}
" ft_end }}}
" ft_begin: clojure {{{
" builtin: https://github.com/guns/vim-clojure-static {{{
highlight! link clojureMacro PurpleItalic
highlight! link clojureFunc AquaBold
highlight! link clojureConstant Yellow
highlight! link clojureSpecial RedItalic
highlight! link clojureDefine RedItalic
highlight! link clojureKeyword Orange
highlight! link clojureVariable Blue
highlight! link clojureMeta Yellow
highlight! link clojureDeref Yellow
" }}}
" ft_end }}}
" ft_begin: matlab {{{
" builtin: {{{
highlight! link matlabSemicolon Fg
highlight! link matlabFunction RedItalic
highlight! link matlabImplicit GreenBold
highlight! link matlabDelimiter Fg
highlight! link matlabOperator GreenBold
highlight! link matlabArithmeticOperator Orange
highlight! link matlabArithmeticOperator Orange
highlight! link matlabRelationalOperator Orange
highlight! link matlabRelationalOperator Orange
highlight! link matlabLogicalOperator Orange
" }}}
" ft_end }}}
" ft_begin: sh/zsh {{{
" builtin: http://www.drchip.org/astronaut/vim/index.html#SYNTAX_SH {{{
highlight! link shRange Fg
highlight! link shTestOpr Orange
highlight! link shOption Aqua
highlight! link bashStatement Orange
highlight! link shOperator Orange
highlight! link shQuote Green
highlight! link shSet Orange
highlight! link shSetList Blue
highlight! link shSnglCase Orange
highlight! link shVariable Blue
highlight! link shVarAssign Orange
highlight! link shCmdSubRegion Green
highlight! link shCommandSub Orange
highlight! link shFunctionOne GreenBold
highlight! link shFunctionKey RedItalic
" }}}
" ft_end }}}
" ft_begin: zsh {{{
" builtin: https://github.com/chrisbra/vim-zsh {{{
highlight! link zshOptStart PurpleItalic
highlight! link zshOption Blue
highlight! link zshSubst Yellow
highlight! link zshFunction GreenBold
highlight! link zshDeref Blue
highlight! link zshTypes Orange
highlight! link zshVariableDef Blue
" }}}
" ft_end }}}
" ft_begin: fish {{{
" vim-fish: https://github.com/georgewitteman/vim-fish {{{
highlight! link fishStatement Orange
highlight! link fishLabel RedItalic
highlight! link fishCommandSub Yellow
" }}}
" ft_end }}}
" ft_begin: ps1 {{{
" vim-ps1: https://github.com/PProvost/vim-ps1 {{{
highlight! link ps1FunctionInvocation AquaBold
highlight! link ps1FunctionDeclaration AquaBold
highlight! link ps1InterpolationDelimiter Yellow
highlight! link ps1BuiltIn Yellow
" }}}
" ft_end }}}
" ft_begin: vim {{{
call gruvbox_material#highlight('vimCommentTitle', s:palette.grey1, s:palette.none, 'bold')
highlight! link vimLet Orange
highlight! link vimFunction GreenBold
highlight! link vimIsCommand Fg
highlight! link vimUserFunc GreenBold
highlight! link vimFuncName GreenBold
highlight! link vimMap PurpleItalic
highlight! link vimNotation Aqua
highlight! link vimMapLhs Green
highlight! link vimMapRhs Green
highlight! link vimSetEqual Yellow
highlight! link vimSetSep Fg
highlight! link vimOption Aqua
highlight! link vimUserAttrbKey Yellow
highlight! link vimUserAttrb Green
highlight! link vimAutoCmdSfxList Aqua
highlight! link vimSynType Orange
highlight! link vimHiBang Orange
highlight! link vimSet Yellow
highlight! link vimSetSep Grey
highlight! link vimContinue Grey
" ft_end }}}
" ft_begin: make {{{
highlight! link makeIdent Aqua
highlight! link makeSpecTarget Yellow
highlight! link makeTarget Blue
highlight! link makeCommands Orange
" ft_end }}}
" ft_begin: cmake {{{
highlight! link cmakeCommand Orange
highlight! link cmakeKWconfigure_package_config_file Yellow
highlight! link cmakeKWwrite_basic_package_version_file Yellow
highlight! link cmakeKWExternalProject Aqua
highlight! link cmakeKWadd_compile_definitions Aqua
highlight! link cmakeKWadd_compile_options Aqua
highlight! link cmakeKWadd_custom_command Aqua
highlight! link cmakeKWadd_custom_target Aqua
highlight! link cmakeKWadd_definitions Aqua
highlight! link cmakeKWadd_dependencies Aqua
highlight! link cmakeKWadd_executable Aqua
highlight! link cmakeKWadd_library Aqua
highlight! link cmakeKWadd_link_options Aqua
highlight! link cmakeKWadd_subdirectory Aqua
highlight! link cmakeKWadd_test Aqua
highlight! link cmakeKWbuild_command Aqua
highlight! link cmakeKWcmake_host_system_information Aqua
highlight! link cmakeKWcmake_minimum_required Aqua
highlight! link cmakeKWcmake_parse_arguments Aqua
highlight! link cmakeKWcmake_policy Aqua
highlight! link cmakeKWconfigure_file Aqua
highlight! link cmakeKWcreate_test_sourcelist Aqua
highlight! link cmakeKWctest_build Aqua
highlight! link cmakeKWctest_configure Aqua
highlight! link cmakeKWctest_coverage Aqua
highlight! link cmakeKWctest_memcheck Aqua
highlight! link cmakeKWctest_run_script Aqua
highlight! link cmakeKWctest_start Aqua
highlight! link cmakeKWctest_submit Aqua
highlight! link cmakeKWctest_test Aqua
highlight! link cmakeKWctest_update Aqua
highlight! link cmakeKWctest_upload Aqua
highlight! link cmakeKWdefine_property Aqua
highlight! link cmakeKWdoxygen_add_docs Aqua
highlight! link cmakeKWenable_language Aqua
highlight! link cmakeKWenable_testing Aqua
highlight! link cmakeKWexec_program Aqua
highlight! link cmakeKWexecute_process Aqua
highlight! link cmakeKWexport Aqua
highlight! link cmakeKWexport_library_dependencies Aqua
highlight! link cmakeKWfile Aqua
highlight! link cmakeKWfind_file Aqua
highlight! link cmakeKWfind_library Aqua
highlight! link cmakeKWfind_package Aqua
highlight! link cmakeKWfind_path Aqua
highlight! link cmakeKWfind_program Aqua
highlight! link cmakeKWfltk_wrap_ui Aqua
highlight! link cmakeKWforeach Aqua
highlight! link cmakeKWfunction Aqua
highlight! link cmakeKWget_cmake_property Aqua
highlight! link cmakeKWget_directory_property Aqua
highlight! link cmakeKWget_filename_component Aqua
highlight! link cmakeKWget_property Aqua
highlight! link cmakeKWget_source_file_property Aqua
highlight! link cmakeKWget_target_property Aqua
highlight! link cmakeKWget_test_property Aqua
highlight! link cmakeKWif Aqua
highlight! link cmakeKWinclude Aqua
highlight! link cmakeKWinclude_directories Aqua
highlight! link cmakeKWinclude_external_msproject Aqua
highlight! link cmakeKWinclude_guard Aqua
highlight! link cmakeKWinstall Aqua
highlight! link cmakeKWinstall_files Aqua
highlight! link cmakeKWinstall_programs Aqua
highlight! link cmakeKWinstall_targets Aqua
highlight! link cmakeKWlink_directories Aqua
highlight! link cmakeKWlist Aqua
highlight! link cmakeKWload_cache Aqua
highlight! link cmakeKWload_command Aqua
highlight! link cmakeKWmacro Aqua
highlight! link cmakeKWmark_as_advanced Aqua
highlight! link cmakeKWmath Aqua
highlight! link cmakeKWmessage Aqua
highlight! link cmakeKWoption Aqua
highlight! link cmakeKWproject Aqua
highlight! link cmakeKWqt_wrap_cpp Aqua
highlight! link cmakeKWqt_wrap_ui Aqua
highlight! link cmakeKWremove Aqua
highlight! link cmakeKWseparate_arguments Aqua
highlight! link cmakeKWset Aqua
highlight! link cmakeKWset_directory_properties Aqua
highlight! link cmakeKWset_property Aqua
highlight! link cmakeKWset_source_files_properties Aqua
highlight! link cmakeKWset_target_properties Aqua
highlight! link cmakeKWset_tests_properties Aqua
highlight! link cmakeKWsource_group Aqua
highlight! link cmakeKWstring Aqua
highlight! link cmakeKWsubdirs Aqua
highlight! link cmakeKWtarget_compile_definitions Aqua
highlight! link cmakeKWtarget_compile_features Aqua
highlight! link cmakeKWtarget_compile_options Aqua
highlight! link cmakeKWtarget_include_directories Aqua
highlight! link cmakeKWtarget_link_directories Aqua
highlight! link cmakeKWtarget_link_libraries Aqua
highlight! link cmakeKWtarget_link_options Aqua
highlight! link cmakeKWtarget_precompile_headers Aqua
highlight! link cmakeKWtarget_sources Aqua
highlight! link cmakeKWtry_compile Aqua
highlight! link cmakeKWtry_run Aqua
highlight! link cmakeKWunset Aqua
highlight! link cmakeKWuse_mangled_mesa Aqua
highlight! link cmakeKWvariable_requires Aqua
highlight! link cmakeKWvariable_watch Aqua
highlight! link cmakeKWwrite_file Aqua
" ft_end }}}
" ft_begin: json {{{
highlight! link jsonKeyword Orange
highlight! link jsonQuote Grey
highlight! link jsonBraces Fg
" ft_end }}}
" ft_begin: yaml {{{
highlight! link yamlKey Orange
highlight! link yamlConstant Purple
" ft_end }}}
" ft_begin: toml {{{
call gruvbox_material#highlight('tomlTable', s:palette.purple, s:palette.none, 'bold')
highlight! link tomlKey Orange
highlight! link tomlBoolean Aqua
highlight! link tomlTableArray tomlTable
" ft_end }}}
" ft_begin: diff/git {{{
highlight! link diffAdded Green
highlight! link diffRemoved Red
highlight! link diffChanged Blue
highlight! link diffOldFile Yellow
highlight! link diffNewFile Orange
highlight! link diffFile Aqua
highlight! link diffLine Grey
highlight! link diffIndexLine Purple
" ft_end }}}
" ft_begin: gitcommit {{{
highlight! link gitcommitSummary Red
highlight! link gitcommitUntracked Grey
highlight! link gitcommitDiscarded Grey
highlight! link gitcommitSelected Grey
highlight! link gitcommitUnmerged Grey
highlight! link gitcommitOnBranch Grey
highlight! link gitcommitArrow Grey
highlight! link gitcommitFile Green
" ft_end }}}
" ft_begin: dosini {{{
call gruvbox_material#highlight('dosiniHeader', s:palette.red, s:palette.none, 'bold')
highlight! link dosiniLabel Yellow
highlight! link dosiniValue Green
highlight! link dosiniNumber Green
" ft_end }}}
" ft_begin: help {{{
call gruvbox_material#highlight('helpNote', s:palette.purple, s:palette.none, 'bold')
call gruvbox_material#highlight('helpHeadline', s:palette.red, s:palette.none, 'bold')
call gruvbox_material#highlight('helpHeader', s:palette.orange, s:palette.none, 'bold')
call gruvbox_material#highlight('helpURL', s:palette.green, s:palette.none, 'underline')
call gruvbox_material#highlight('helpHyperTextEntry', s:palette.yellow, s:palette.none, 'bold')
highlight! link helpHyperTextJump Yellow
highlight! link helpCommand Aqua
highlight! link helpExample Green
highlight! link helpSpecial Blue
highlight! link helpSectionDelim Grey
" ft_end }}}
" }}}

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker fmr={{{,}}}:
