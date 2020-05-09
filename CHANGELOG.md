# Changelog

All notable changes to this project will be documented in this file.

## [Unreleased]

### Added

- Add `g:gruvbox_material_enable_error_warning_line_highlight`.

### Changed

- Fix airline warning and error.

## [1.1.3] - 2020-05-06

### Added

- Optimize Coc.
- Optimize gitcommit.
- Add hi groups for builtin lsp and checkhealth.
- Optimize DOS INI.
- Optimize Matlab.
- Optimize Airline.
- Optimize `cohama/agit.vim`.
- Add `ToolbarLine` and `ToolbarButton`.
- Support command line mode for airline and lightline.
- Support terminal mode for airline and lightline.
- Add `g:gruvbox_material_statusline_style`.
- Add more available values for `g:gruvbox_material_menu_selection_background`.
- Add `Substitute`, `TermCursor` and `TermCursorNC`.
- Optimize vim-sneak.
- Add `g:gruvbox_material_sign_column_background`.

### Changed

- Adjust `Search` and `IncSearch`.
- Adjust `NonText`, `Whitespace` and `SpecialKey`.
- Use green in modified fg.
- Add `autoload/gruvbox_material.vim`.
- Adjust `bg_red` in the mix palette.
- Adjust `DiffText`.
- Adjust `bg_statusline3` in soft dark background.
- Optimize performance.

### Removed

- Remove `g:gruvbox_material_cursor_line_contrast`.

## [1.1.2] - 2020-04-04

### Added

- Add `g:gruvbox_material_cursor_line_contrast`
- Optimize [arakashic/chromatica.nvim](https://github.com/arakashic/chromatica.nvim)
- Optimize [numirias/semshi](https://github.com/numirias/semshi)
- Optimize [jackguo380/vim-lsp-cxx-highlight](https://github.com/jackguo380/vim-lsp-cxx-highlight)

## [1.1.1] - 2020-03-11

### Changed

- Rename `median` as `mix`.

## [1.1.0] - 2020-03-11

### Added

- Add `g:gruvbox_material_cursor`.
- Optimize `Yggdroot/indentLine`.
- Add `median` palette.

### Changed

- Adjust some background colors used in the light variant.
- Transfer ownership.

### Fixed

- Fix terminal colors. [#24](https://github.com/sainnhe/gruvbox-material/issues/24)

## [1.0.1] - 2020-01-09

### Added

- Add `g:gruvbox_material_palette`.
- Add `g:gruvbox_material_enable_italic`.
- Add `g:gruvbox_material_menu_selection_background`.

### Changed

- Refactor `colors/gruvbox-material.vim`.
- Adjust syntax highlighting logic.
- Remove color templates.
- Rewrite airline theme.
- Markdown heading delimiter.

## [1.0.0] - 2019-12-11

### Changed

- Adjust the background color of `CursorLine` in the dark variant.
- Link `WhichKeyFloating` to `SignColumn`.
- Optimize vim-sneak.
- Markdown headings.

### Added

- Use blue as foreground color of modified file name in airline color scheme.
- Add a judgment logic for `CursorLineNr`.
- Optimize Dart.

### Fix

- Fix background colors in transparent mode.
- Remove `doc/tags`.

## [0.3.4] - 2019-11-23

### Changed

- Use grey as foreground color of `Conceal`.
- Optimize `CursorLine`.
- Optimize `MatchParen`.
- Optimize `Pmenu`.
- Better support for hard light variant.
- Disable bold in `MatchParen`.

### Added

- Support `Shougo/denite.nvim`.
- Support `mg979/vim-visual-multi`.
- Support `liuchengxu/vim-which-key`.
- Support `neomake/neomake`.
- Support `liuchengxu/vista.vim`.
- Support `unblevable/quick-scope`.
- Support `neoclide/coc-yank`.
- New configuration option: `g:gruvbox_material_visual`.
- New configuration option: `g:gruvbox_material_current_word`.

## [0.3.3] - 2019-11-07

### Changed

- Adjust white in the dark variant.

## [0.3.2] - 2019-11-01

### Changed

- Adjust white in the dark variant.

## [0.3.1] - 2019-10-31

### Changed

- Adjust white in the dark variant.

## [0.3.0] - 2019-10-30

### Changed

- Adjust yellow in the dark variant.
- Adjust red, orange and blue in the light variant.

### Added

- Add `CHANGELOG.md`.

## [0.2.0] - 2019-10-25

### Changed

- Adjust white and yellow in the dark variant.
- Adjust black in the light variant.

## [0.1.4] - 2019-10-17

### Fixed

- Stable release for the initial color palette.

## [0.1.3] - 2019-09-22

### Fixed

- Better support for `:set notermguicolors`.

## [0.1.2] - 2019-09-16

### Changed

- Adjust workbench colors.

## [0.1.1] - 2019-09-04

### Changed

- Adjust the color palette of the light variant.

## [0.1.0] - 2019-09-03

### Added

- Finish light variant.

## [0.0.3] - 2019-07-24

### Added

- Optimize markdown.
- Optimize ALE Virtual Text, CoC and vim-matchup.
- New option: `g:gruvbox_material_lightline_kill_bold`.

### Changed

- Adjust blue in order to better distinguish between blue and aqua.

### Fixed

- Foreground color of parentheses.

## [0.0.2] - 2019-07-23

### Changed

- Adjust blue in order to better distinguish between blue and aqua.
- Adjust the location of hi links for better load time.

### Fixed

- Fix terminal colors.

## [0.0.1] - 2019-07-22

### Added

- Finish dark variant.
- Airline theme.
- Lightline theme.
- Finish AUR package and add the url in README.

[unreleased]: https://github.com/sainnhe/gruvbox-material/compare/v1.1.3...HEAD
[1.1.3]: https://github.com/sainnhe/gruvbox-material/compare/v1.1.2...v1.1.3
[1.1.2]: https://github.com/sainnhe/gruvbox-material/compare/v1.1.1...v1.1.2
[1.1.1]: https://github.com/sainnhe/gruvbox-material/compare/v1.1.0...v1.1.1
[1.1.0]: https://github.com/sainnhe/gruvbox-material/compare/v1.0.1...v1.1.0
[1.0.1]: https://github.com/sainnhe/gruvbox-material/compare/v1.0.0...v1.0.1
[1.0.0]: https://github.com/sainnhe/gruvbox-material/compare/v0.3.4...v1.0.0
[0.3.4]: https://github.com/sainnhe/gruvbox-material/compare/v0.3.3...v0.3.4
[0.3.3]: https://github.com/sainnhe/gruvbox-material/compare/v0.3.2...v0.3.3
[0.3.2]: https://github.com/sainnhe/gruvbox-material/compare/v0.3.1...v0.3.2
[0.3.1]: https://github.com/sainnhe/gruvbox-material/compare/v0.3.0...v0.3.1
[0.3.0]: https://github.com/sainnhe/gruvbox-material/compare/v0.2.0...v0.3.0
[0.2.0]: https://github.com/sainnhe/gruvbox-material/compare/v0.1.4...v0.2.0
[0.1.4]: https://github.com/sainnhe/gruvbox-material/compare/v0.1.3...v0.1.4
[0.1.3]: https://github.com/sainnhe/gruvbox-material/compare/v0.1.2...v0.1.3
[0.1.2]: https://github.com/sainnhe/gruvbox-material/compare/v0.1.1...v0.1.2
[0.1.1]: https://github.com/sainnhe/gruvbox-material/compare/v0.1.0...v0.1.1
[0.1.0]: https://github.com/sainnhe/gruvbox-material/compare/v0.0.3...v0.1.0
[0.0.3]: https://github.com/sainnhe/gruvbox-material/compare/v0.0.2...v0.0.3
[0.0.2]: https://github.com/sainnhe/gruvbox-material/compare/v0.0.1...v0.0.2
[0.0.1]: https://github.com/sainnhe/gruvbox-material/releases/tag/v0.0.1
