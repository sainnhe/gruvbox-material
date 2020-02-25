# This project is looking for maintainers! [#23](https://github.com/gruvbox-material/vim/issues/23)

<h1 align="center">
𝐆𝐫𝐮𝐯𝐛𝐨𝐱 𝐌𝐚𝐭𝐞𝐫𝐢𝐚𝐥
</h1>

|        |                                                         𝐃𝐚𝐫𝐤                                                         |                                                         𝐋𝐢𝐠𝐡𝐭                                                         |
| :----: | :------------------------------------------------------------------------------------------------------------------: | :-------------------------------------------------------------------------------------------------------------------: |
|  𝐇𝐚𝐫𝐝  |  ![hard-dark](https://user-images.githubusercontent.com/37491630/75227134-891fbb80-57a5-11ea-878e-b8b2972cfd6e.png)  |  ![hard-light](https://user-images.githubusercontent.com/37491630/75227137-8a50e880-57a5-11ea-90dc-b2646d8b0b55.png)  |
| 𝐌𝐞𝐝𝐢𝐮𝐦 | ![medium-dark](https://user-images.githubusercontent.com/37491630/75227139-8cb34280-57a5-11ea-86d6-3d3f6a2475eb.png) | ![medium-light](https://user-images.githubusercontent.com/37491630/75227141-8de46f80-57a5-11ea-820a-9394ab9d09aa.png) |
|  𝐒𝐨𝐟𝐭  |  ![soft-dark](https://user-images.githubusercontent.com/37491630/75227149-9046c980-57a5-11ea-8633-bf4f31e533d0.png)  |  ![soft-light](https://user-images.githubusercontent.com/37491630/75227157-92108d00-57a5-11ea-8b13-b2130bff60d8.png)  |

This color scheme is a port of [Gruvbox Material](https://github.com/gruvbox-material/gruvbox-material) for Vim/Neovim.

> Gruvbox Material is a modified version of [Gruvbox](https://github.com/morhetz/gruvbox), the contrast is adjusted to be softer in order to protect developers' eyes.

## Features

- Carefully designed color palette for eye protection.
- Switch back to the original color palette whenever you like.
- Highly customizable.
- Rich support for common file types and plugins.
- [Italic support](https://github.com/sainnhe/icursive-nerd-font) 🎉

## Installation

### Via Plugin Manager

Take [vim-plug](https://github.com/junegunn/vim-plug) for example:

```vim
Plug 'gruvbox-material/vim', {'as': 'gruvbox-material'}
```

For better syntax highlighting support, please install [sheerun/vim-polyglot](https://github.com/sheerun/vim-polyglot).

### Manually

1. Clone this repository.
2. Copy `/path/to/gruvbox-material/colors/gruvbox-material.vim` to `~/.vim/colors/` .
3. Copy `/path/to/gruvbox-material/doc/gruvbox-material.txt` to `~/.vim/doc/` and execute `:helptags ~/.vim/doc/` to generate help tags.
4. To install [airline](https://github.com/vim-airline/vim-airline) theme, copy `/path/to/gruvbox-material/autoload/airline/themes/gruvbox_material.vim` to `~/.vim/autoload/airline/themes/gruvbox_material.vim` .
5. To install [lightline](https://github.com/itchyny/lightline.vim) theme, copy `/path/to/gruvbox-material/autoload/lightline/colorscheme/gruvbox_material.vim` to `~/.vim/autoload/lightline/colorscheme/gruvbox_material.vim` .

### AUR

There is a package available for Arch Linux users in AUR: [gruvbox-material-git](https://aur.archlinux.org/packages/gruvbox-material-git/)

## Usage

### Vim

Put something like this in your vimrc:

```vim
" important!!
set termguicolors

" for dark version
set background=dark

" for light version
set background=light

" set contrast
" this configuration option should be placed before `colorscheme gruvbox-material`
" available values: 'hard', 'medium'(default), 'soft'
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

" or this line
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

**Q: How to enable cursive italic keywords?**

**A:**

1. Install a font that supports cursive italics, for example [icursive-nerd-font](https://github.com/sainnhe/icursive-nerd-font).
2. Enable italic keywords in this color scheme: `let g:gruvbox_material_enable_italic = 1`
3. Disable italic comment(optional): `let g:gruvbox_material_disable_italic_comment = 1`

**Q: What's your status line configuration?**

**A:** Check this [gist](https://gist.github.com/sainnhe/b8240bc047313fd6185bb8052df5a8fb).

**Q: What's the font used here?**

**A:** [Fira Code iCursive Op](https://github.com/sainnhe/icursive-nerd-font).

## Related Projects

See [gruvbox-material/gruvbox-material](https://github.com/gruvbox-material/gruvbox-material)

## Contributing

See [CONTRIBUTING.md](https://github.com/gruvbox-material/gruvbox-material/blob/master/CONTRIBUTING.md)

## Credits

- The color palette is based on [gruvbox](https://github.com/morhetz/gruvbox) by [@morhetz](https://github.com/morhetz)
- The color palette is adjusted by [@sainnhe](https://github.com/sainnhe)

## Inspirations

- [morhetz/gruvbox](https://github.com/morhetz/gruvbox): original gruvbox
- [atom.io](https://atom.io): the `white` color in the dark variant
- [zefei/cake16](https://github.com/zefei/cake16): the `black` color in the light variant
- [Google Material Design](https://www.material.io)

## License

[MIT License](./LICENSE) © Gruvbox Material
