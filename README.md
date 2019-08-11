|        |                                                     𝑶𝒓𝒊𝒈𝒊𝒏𝒂𝒍 𝑮𝒓𝒖𝒗𝒃𝒐𝒙                                                     |                                                     𝑮𝒓𝒖𝒗𝒃𝒐𝒙 𝑴𝒂𝒕𝒆𝒓𝒊𝒂𝒍                                                     |
| :----: | :----------------------------------------------------------------------------------------------------------------------: | :----------------------------------------------------------------------------------------------------------------------: |
|  𝒉𝒂𝒓𝒅  |  ![original-hard](https://user-images.githubusercontent.com/37491630/61801994-4072df00-ae1f-11e9-8a3a-cc806393f460.png)  |  ![material-hard](https://user-images.githubusercontent.com/37491630/62828764-867cc080-bbdd-11e9-9b93-697a6f338e13.png)  |
| 𝒎𝒆𝒅𝒊𝒖𝒎 | ![original-medium](https://user-images.githubusercontent.com/37491630/61802005-45379300-ae1f-11e9-91bb-012e058eb906.png) | ![material-medium](https://user-images.githubusercontent.com/37491630/62828765-88df1a80-bbdd-11e9-8cd7-a6d0f8c95d1a.png) |
|  𝒔𝒐𝒇𝒕  |  ![original-soft](https://user-images.githubusercontent.com/37491630/61801978-3bae2b00-ae1f-11e9-9b7b-33105484be47.png)  |  ![material-soft](https://user-images.githubusercontent.com/37491630/62828766-8bda0b00-bbdd-11e9-84b3-4f320d88a60d.png)  |

Gruvbox Material is based on Gruvbox, but with a very different color palette, almost all foreground colors are adjusted.

The syntax highlighting logic in this branch is the same as the original gruvbox, and I will periodically merge changes from [gruvbox-community/gruvbox](https://github.com/gruvbox-community/gruvbox).

In addition, I've developed [neosyn](https://github.com/sainnhe/gruvbox-material/tree/neosyn) branch that uses completely different syntax highlighting logic, and it has also been optimized for common file types and plugins.

# Installation

## Via Plugin Manager

Take [vim-plug](https://github.com/junegunn/vim-plug) for example:

```vim
Plug 'sainnhe/gruvbox-material'
```

For better syntax highlighting support, please install [sheerun/vim-polyglot](https://github.com/sheerun/vim-polyglot).

## Manually

1. Clone this repository.
2. Copy `/path/to/gruvbox-material/colors/*` to `~/.vim/colors/`
3. To install [airline](https://github.com/vim-airline/vim-airline) theme, copy `/path/to/gruvbox-material/autoload/airline/themes/gruvbox_material.vim` to `~/.vim/autoload/airline/themes/gruvbox_material.vim`
4. To install [lightline](https://github.com/itchyny/lightline.vim) theme, copy `/path/to/gruvbox-material/autoload/lightline/colorscheme/gruvbox_material.vim` to `~/.vim/autoload/lightline/colorscheme/gruvbox_material.vim`

## AUR

There is a package available for Arch Linux users in AUR: [gruvbox-material-git](https://aur.archlinux.org/packages/gruvbox-material-git/)

# Usage

## Vim

Put this in your vimrc:

```vim
set termguicolors

colorscheme gruvbox-material

" for soft background
colorscheme gruvbox-material-soft

" for hard background
colorscheme gruvbox-material-hard
```

If you want to apply this color scheme temporarily, run this command in vim(**this may cause color broken**):

```vim
:colorscheme gruvbox-material
```

## Airline

To enable [airline](https://github.com/vim-airline/vim-airline) color scheme, put this in your vimrc:

```vim
let g:airline_theme = 'gruvbox_material'
```

To apply it without reloading:

```vim
:AirlineTheme gruvbox_material
```

## Lightline

To enable [lightline](https://github.com/itchyny/lightline.vim) color scheme, put this in your vimrc:

```vim
let g:lightline = {}
let g:lightline.colorscheme = 'gruvbox_material'

" or this line
let g:lightline = {'colorscheme' : 'gruvbox_material'}
```

To apply it without reloading:

```vim
:let g:lightline.colorscheme = 'gruvbox_material'
:call lightline#init()
:call lightline#colorscheme()
```

# Customization

-   By default, italic is enabled. To disable italic, add `let g:gruvbox_material_kill_italic=1` to your vimrc.
-   By default, bold is partly enabled. To completely enable bold, add `let g:gruvbox_material_enable_bold=1` to your vimrc.
-   By default, bold is enabled in lightline color scheme. To disable bold in lightline color scheme, add `let g:gruvbox_material_lightline_kill_bold=1` to your vimrc.

# Contribution

Check this gist for detailed instructions to hack this color scheme: [hack-color-schemes.md](https://gist.github.com/sainnhe/911f78cbb092ac58c8734c423a464935)

# Related Projects

-   [Alacritty](https://gist.github.com/kamek-pf/2eae4f570061a97788a8a9ca4c893797)
-   [Tilix](https://gist.github.com/sainnhe/5c44ffcd2465198ced6d80ac57b38b34)
-   [Zsh Pure Power](https://github.com/sainnhe/dotfiles/blob/735f561e814e7901508d6bed569646d0c0fe3ab0/.zsh-theme)

# License

[MIT](./LICENSE) && [Anti-996](./Anti-996-LICENSE)
