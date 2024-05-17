# Changelog

All notable changes to this project will be documented in this file.

## [Unreleased]

### Added

- Optimize `github/copilot.vim`.
- Add `g:gruvbox_material_inlay_hints_background`.

## [1.2.5] - 2023-01-14

### Added

- Optimize `b0o/incline.nvim`.
- Optimize winbar.
- Optimize `echasnovski/mini.nvim`.
- Support coc popup menu.
- Optimize `ggandor/lightspeed.nvim`.
- Optimize `pwntester/octo.nvim`.
- Optimize `simrat39/symbols-outline.nvim`.
- Support for YCM semantic highlighting and inlayHints.
- Optimize `MattesGroeger/vim-bookmarks`.
- Support for vim-lsp semantic highlighting and inlayHints.
- New tree-sitter tokens.
- Support for shading.
- Optimize `nvim-neo-tree/neo-tree.nvim`.
- Add `g:gruvbox_material_dim_inactive_windows`.

### Changed

- Change default value of `g:gruvbox_material_sign_column_background` to `'none'`.

## [1.2.4] - 2022-05-26

### Added

- Add `g:gruvbox_material_spell_foreground`.
- Optimize `junegunn/limelight.vim`.
- Add FAQ for configuration options.
- Optimize `rhysd/clever-f.vim`.
- Optimize `rcarriga/nvim-dap-ui`.
- Add `g:gruvbox_material_disable_terminal_colors`.
- Optimize `voldikss/vim-floaterm`.
- Support `g:gruvbox_material_transparent_background == 2`.
- Optimize `stevearc/aerial.nvim`.
- Optimize `wbthomason/packer.nvim`.

### Changed

- Redesign coc symbols.
- Redesign `liuchengxu/vim-clap`.
- Redesign semantic hi groups in coc.nvim [neoclide/coc.nvim#3355](https://github.com/neoclide/coc.nvim/pull/3355).
- Generate `/after/syntax`.
- Split `g:gruvbox_material_palette` into `g:gruvbox_material_foreground` and `g:gruvbox_material_colors_override`.

### Fixed

- Update &runtimepath after generating syntax files.

### Removed

- Remove examples of configuration options in help doc.

## [1.2.3] - 2022-01-09

### Added

- Add `g:gruvbox_material_ui_contrast`.
- Optimize `fannheyward/coc-rust-analyzer`.
- Add [Diagnostic](https://github.com/neovim/neovim/pull/15585) highlight groups.
- Optimize `vimwiki/vimwiki`.
- Optimize `hrsh7th/nvim-cmp`.
- Optimize `folke/trouble.nvim`.
- Optimize `TimUntersberger/neogit`.
- Optimize `lambdalisue/fern.vim`.
- Optimize `romgrk/barbar.nvim`.
- Optimize `rcarriga/nvim-notify`.
- Support `nvim-lualine/lualine.nvim`.
- Optimize performance in vim by disabling hi groups of neovim-only plugins.
- Optimize `lewis6991/gitsigns.nvim`.
- Optimize `airblade/vim-gitgutter`.
- Optimize `mhinz/vim-signify`.
- Optimize `glepnir/dashboard-nvim`.
- Optimize `glepnir/lspsaga.nvim`.
- Add modeline to generated ftplugin files.

### Changed

- Disable tmux checking.

## [1.2.2] - 2021-08-06

### Added

- Optimize `lervag/vimtex`.
- Add `g:gruvbox_material_diagnostic_text_highlight`
- Optimize `liuchengxu/vim-clap`.
- Add whitelist for extended file types.
- Support for leaderf popup mode.
- Optimize `nvim-telescope/telescope.nvim`.
- Add `g:gruvbox_material_diagnostic_virtual_text`.
- Optimize `kyazdani42/nvim-tree.lua`.
- Add installation guide for using pack feature.
- New value `'mix'` for `g:gruvbox_material_statusline_style`.
- Add `g:gruvbox_material_show_eob`.
- Optimize `McSinyx/vim-octave`.
- Support semantic highlight in coc.nvim .
- Optimize semantic highlight in some plugins.
- Support `thiagoalessio/rainbow_levels.vim` and `p00f/nvim-ts-rainbow`.
- Optimize coc symbols and coc tree.

### Changed

- Diagnostics text highlights.
- Adjust diff and visual background colors in light variant.
- `gui=undercurl` is enabled in tmux >= 2.9
- Adjust the design of airline/lightline.
- Redesign syntax logic of tree-sitter.

## [1.2.1] - 2020-12-29

### Added

- Optimize `nvim-treesitter/nvim-treesitter`.
- AUR packages.
- Support neovim lsp diagnostics.
- New highlight groups for coc-explorer.
- Outline of help doc.

### Changed

- Remove duplicate docs in README.

### Fixed

- Fix errors when doesn't set `g:colors_name`.
- Fix `DiffText` in Vim.
- Fix `CurrentWord` in diff mode.
- Fix `CursorColumn` in diff mode.
- Clear highlights when better performance is disabled.

## [1.2.0] - 2020-06-04

### Added

- Add `g:gruvbox_material_diagnostic_line_highlight`.
- Add `g:gruvbox_material_better_performance`.

### Changed

- Fix airline warning and error.
- Fix `g:gruvbox_material_current_word` settings.
- Use `grey0` in `Conceal`.

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

[unreleased]: https://github.com/sainnhe/gruvbox-material/compare/v1.2.5...HEAD
[1.2.5]: https://github.com/sainnhe/gruvbox-material/compare/v1.2.4...v1.2.5
[1.2.4]: https://github.com/sainnhe/gruvbox-material/compare/v1.2.3...v1.2.4
[1.2.3]: https://github.com/sainnhe/gruvbox-material/compare/v1.2.2...v1.2.3
[1.2.2]: https://github.com/sainnhe/gruvbox-material/compare/v1.2.1...v1.2.2
[1.2.1]: https://github.com/sainnhe/gruvbox-material/compare/v1.2.0...v1.2.1
[1.2.0]: https://github.com/sainnhe/gruvbox-material/compare/v1.1.3...v1.2.0
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
