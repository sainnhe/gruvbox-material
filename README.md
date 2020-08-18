## Introduction

Gruvbox Material is a modified version of [Gruvbox](https://github.com/morhetz/gruvbox), the contrast is adjusted to be softer in order to protect developers' eyes.

There are 3 palettes available in this color scheme:

<details>
  <summary><code>material</code>: Carefully designed to have a soft contrast(<b>click on this line to preview</b>)</summary>

|        |                                                             𝐃𝐚𝐫𝐤                                                              |                                                             𝐋𝐢𝐠𝐡𝐭                                                              |
| :----: | :---------------------------------------------------------------------------------------------------------------------------: | :----------------------------------------------------------------------------------------------------------------------------: |
|  𝐇𝐚𝐫𝐝  |  ![material-hard-dark](https://user-images.githubusercontent.com/37491630/75227134-891fbb80-57a5-11ea-878e-b8b2972cfd6e.png)  |  ![material-hard-light](https://user-images.githubusercontent.com/37491630/75227137-8a50e880-57a5-11ea-90dc-b2646d8b0b55.png)  |
| 𝐌𝐞𝐝𝐢𝐮𝐦 | ![material-medium-dark](https://user-images.githubusercontent.com/37491630/75227139-8cb34280-57a5-11ea-86d6-3d3f6a2475eb.png) | ![material-medium-light](https://user-images.githubusercontent.com/37491630/75227141-8de46f80-57a5-11ea-820a-9394ab9d09aa.png) |
|  𝐒𝐨𝐟𝐭  |  ![material-soft-dark](https://user-images.githubusercontent.com/37491630/75227149-9046c980-57a5-11ea-8633-bf4f31e533d0.png)  |  ![material-soft-light](https://user-images.githubusercontent.com/37491630/75227157-92108d00-57a5-11ea-8b13-b2130bff60d8.png)  |

</details>

<details>
  <summary><code>mix</code>: Color palette obtained by calculating the mean of the other two(<b>click on this line to preview</b>)</summary>

|        |                                                           𝐃𝐚𝐫𝐤                                                           |                                                           𝐋𝐢𝐠𝐡𝐭                                                           |
| :----: | :----------------------------------------------------------------------------------------------------------------------: | :-----------------------------------------------------------------------------------------------------------------------: |
|  𝐇𝐚𝐫𝐝  |  ![mix-hard-dark](https://user-images.githubusercontent.com/37491630/76383368-826f7780-6353-11ea-8094-b593eb5f1e10.png)  |  ![mix-hard-light](https://user-images.githubusercontent.com/37491630/76383372-88655880-6353-11ea-9441-78d159600faf.png)  |
| 𝐌𝐞𝐝𝐢𝐮𝐦 | ![mix-medium-dark](https://user-images.githubusercontent.com/37491630/76383370-84393b00-6353-11ea-88de-804a781d3142.png) | ![mix-medium-light](https://user-images.githubusercontent.com/37491630/76383375-8ac7b280-6353-11ea-94a8-62e3845203bc.png) |
|  𝐒𝐨𝐟𝐭  |  ![mix-soft-dark](https://user-images.githubusercontent.com/37491630/76383371-869b9500-6353-11ea-923d-9011bbe6bcad.png)  |  ![mix-soft-light](https://user-images.githubusercontent.com/37491630/76383380-8c917600-6353-11ea-8530-a67932a6a2ec.png)  |

</details>

<details>
  <summary><code>original</code>: The color palette used in the original gruvbox(<b>click on this line to preview</b>)</summary>

|        |                                                             𝐃𝐚𝐫𝐤                                                              |                                                             𝐋𝐢𝐠𝐡𝐭                                                              |
| :----: | :---------------------------------------------------------------------------------------------------------------------------: | :----------------------------------------------------------------------------------------------------------------------------: |
|  𝐇𝐚𝐫𝐝  |  ![original-hard-dark](https://user-images.githubusercontent.com/37491630/76383382-8e5b3980-6353-11ea-9398-08d31b1ed32d.png)  |  ![original-hard-light](https://user-images.githubusercontent.com/37491630/76383389-931fed80-6353-11ea-905f-47b35c0cac39.png)  |
| 𝐌𝐞𝐝𝐢𝐮𝐦 | ![original-medium-dark](https://user-images.githubusercontent.com/37491630/76383385-9024fd00-6353-11ea-99c1-7bba4f796115.png) | ![original-medium-light](https://user-images.githubusercontent.com/37491630/76383393-94511a80-6353-11ea-84ea-551b44f0d5bd.png) |
|  𝐒𝐨𝐟𝐭  |  ![original-soft-dark](https://user-images.githubusercontent.com/37491630/76383387-91562a00-6353-11ea-90a0-daac8653dfd0.png)  |  ![original-soft-light](https://user-images.githubusercontent.com/37491630/76383396-95824780-6353-11ea-9b36-302b88fef429.png)  |

</details>

This color scheme uses the `material` palette by default, you can use a global variable to switch to another palette.

### Features

- Carefully designed color palette for eye protection.
- Switch back to the original color palette whenever you like.
- Highly customizable.
- Rich support for common file types and plugins.
- [Italic support](https://github.com/sainnhe/icursive-nerd-font) 🎉

## Installation

### Via Plugin Manager

Take [vim-plug](https://github.com/junegunn/vim-plug) for example:

```vim
Plug 'sainnhe/gruvbox-material'
```

For better syntax highlighting support, please install [sheerun/vim-polyglot](https://github.com/sheerun/vim-polyglot) or [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter).

### Manually

1. Clone this repository.
2. Copy `/path/to/gruvbox-material/autoload/gruvbox_material.vim` to `~/.vim/autoload/`.
3. Copy `/path/to/gruvbox-material/colors/gruvbox-material.vim` to `~/.vim/colors/` .
4. Copy `/path/to/gruvbox-material/doc/gruvbox-material.txt` to `~/.vim/doc/` and execute `:helptags ~/.vim/doc/` to generate help tags.
5. To install [airline](https://github.com/vim-airline/vim-airline) theme, copy `/path/to/gruvbox-material/autoload/airline/themes/gruvbox_material.vim` to `~/.vim/autoload/airline/themes/gruvbox_material.vim` .
6. To install [lightline](https://github.com/itchyny/lightline.vim) theme, copy `/path/to/gruvbox-material/autoload/lightline/colorscheme/gruvbox_material.vim` to `~/.vim/autoload/lightline/colorscheme/gruvbox_material.vim` .

### AUR

There is a package available for Arch Linux users in AUR: [gruvbox-material-git](https://aur.archlinux.org/packages/gruvbox-material-git/)

## Usage

### Vim

Put something like this in your vimrc:

```vim
" Important!!
if has('termguicolors')
  set termguicolors
endif

" For dark version.
set background=dark

" For light version.
set background=light

" Set contrast.
" This configuration option should be placed before `colorscheme gruvbox-material`.
" Available values: 'hard', 'medium'(default), 'soft'
let g:gruvbox_material_background = 'soft'

colorscheme gruvbox-material
```

See `:help gruvbox-material-configuration` for more configuration options.

If you want to apply this color scheme temporarily, run this command in vim(**this may cause broken colors**):

```vim
:colorscheme gruvbox-material
```

### Airline

To enable [airline](https://github.com/vim-airline/vim-airline) color scheme, put this in your vimrc:

```vim
let g:airline_theme = 'gruvbox_material'
```

To apply it without reloading:

```vim
:AirlineTheme gruvbox_material
```

### Lightline

To enable [lightline](https://github.com/itchyny/lightline.vim) color scheme, put this in your vimrc:

```vim
let g:lightline = {}
let g:lightline.colorscheme = 'gruvbox_material'

" Or this line:
let g:lightline = {'colorscheme' : 'gruvbox_material'}
```

To apply it without reloading:

```vim
:let g:lightline.colorscheme = 'gruvbox_material'
:call lightline#init()
:call lightline#colorscheme()
```

## FAQ

**Q: It doesn't work as expected.**

**A:**

1. This color scheme is mainly designed for true colors, `set termguicolors` is required. Check output of `vim --version`, maybe your vim doesn't support `termguicolors`.
2. Maybe your terminal emulator doesn't support true colors, you can test it using [this script](https://unix.stackexchange.com/questions/404414/print-true-color-24-bit-test-pattern).
3. If you are running vim in tmux, you need to override default true colors of tmux, as tmux cannot display true colors properly: [#1246 How to use true colors in vim under tmux?](https://github.com/tmux/tmux/issues/1246)
4. There are many highlight group links in syntax files while a color scheme may change them, enabling one color scheme based on another color scheme enabled is very likely to cause colors to break. If any color is broken, you can enable the color scheme in your vimrc instead of after vim startup.

**Q: I can't apply airline/lightline color scheme.**

**A:** The name is `gruvbox_material` instead of `gruvbox-material`. I have to use underline for some grammatical reasons.

**Q: How to enable cursive italic keywords?**

**A:**

1. Install a font that supports cursive italics, for example [icursive-nerd-font](https://github.com/sainnhe/icursive-nerd-font).
2. Enable italic keywords in this color scheme: `let g:gruvbox_material_enable_italic = 1`
3. Disable italic comment(optional): `let g:gruvbox_material_disable_italic_comment = 1`

**Q: How to use custom colors?**

**A:**

If you want to replace `groupA` with `groupB`, put this in your vimrc:

```vim
augroup GruvboxMaterialCustom
  autocmd!
  autocmd ColorScheme gruvbox-material highlight! link groupA groupB
augroup END

colorscheme gruvbox-material
```

*Tips: make sure to define the `augroup` before declare the `colorscheme`.*

**Q: What's your status line configuration?**

**A:** See this [article](https://www.sainnhe.dev/post/status-line-config/).

**Q: What's the font used here?**

**A:** [Fira Code iCursive Op](https://github.com/sainnhe/icursive-nerd-font).

## Related Projects

See this [wiki page](https://github.com/sainnhe/gruvbox-material/wiki/Related-Projects).

## More Color Schemes

- [Forest Night](https://github.com/sainnhe/forest-night)
- [Edge](https://github.com/sainnhe/edge)
- [Sonokai](https://github.com/sainnhe/sonokai)

## Credits

- The color palette is based on [gruvbox](https://github.com/morhetz/gruvbox) by [@morhetz](https://github.com/morhetz)
- The color palette is adjusted by [@sainnhe](https://github.com/sainnhe)

## Inspirations

- [morhetz/gruvbox](https://github.com/morhetz/gruvbox): original gruvbox
- [atom.io](https://atom.io): the `white` color in the dark variant
- [zefei/cake16](https://github.com/zefei/cake16): the `black` color in the light variant
- [Google Material Design](https://www.material.io)

## Maintainers

| [![Sainnhe Park](https://avatars1.githubusercontent.com/u/37491630?s=70&u=14e72916dcf467f393c532536387ec72a23747ec&v=4)](https://github.com/sainnhe) | [![Zixin Yin](https://avatars2.githubusercontent.com/u/33487417?s=70&u=c6acee32fad2edb8c3bc3f7e0f436f1e8b8024c6&v=4)](https://github.com/zxYin) |
| ---------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------- |
| [Sainnhe Park](https://github.com/sainnhe)                                                                                                           | [Zixin Yin](https://github.com/zxYin)                                                                                                           |

## License

[MIT License](./LICENSE)
