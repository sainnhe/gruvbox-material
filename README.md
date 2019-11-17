<h1 align="center">
𝐃𝐚𝐫𝐤
</h1>

|        |                                                     𝐎𝐫𝐢𝐠𝐢𝐧𝐚𝐥 𝐆𝐫𝐮𝐯𝐛𝐨𝐱                                                     |                                                     𝐆𝐫𝐮𝐯𝐛𝐨𝐱 𝐌𝐚𝐭𝐞𝐫𝐢𝐚𝐥                                                     |
| :----: | :----------------------------------------------------------------------------------------------------------------------: | :----------------------------------------------------------------------------------------------------------------------: |
|  𝒉𝒂𝒓𝒅  |  ![original-hard-dark](https://user-images.githubusercontent.com/37491630/67563234-cef14800-f70f-11e9-9778-11f5ded98be5.png)  |  ![material-hard-dark](https://user-images.githubusercontent.com/37491630/67563211-c4cf4980-f70f-11e9-920d-8eebe85d4b35.png)  |
| 𝒎𝒆𝒅𝒊𝒖𝒎 | ![original-medium-dark](https://user-images.githubusercontent.com/37491630/67563242-d284cf00-f70f-11e9-8b51-39e6baef1252.png) | ![material-medium-dark](https://user-images.githubusercontent.com/37491630/67563218-c862d080-f70f-11e9-9add-df2427a26667.png) |
|  𝒔𝒐𝒇𝒕  |  ![original-soft-dark](https://user-images.githubusercontent.com/37491630/67563251-d6185600-f70f-11e9-8535-7b8072ccc464.png)  |  ![material-soft-dark](https://user-images.githubusercontent.com/37491630/67563225-cbf65780-f70f-11e9-8e36-95517f9d3273.png)  |

<h1 align="center">
𝐋𝐢𝐠𝐡𝐭
</h1>

|        |                                                     𝐎𝐫𝐢𝐠𝐢𝐧𝐚𝐥 𝐆𝐫𝐮𝐯𝐛𝐨𝐱                                                     |                                                     𝐆𝐫𝐮𝐯𝐛𝐨𝐱 𝐌𝐚𝐭𝐞𝐫𝐢𝐚𝐥                                                     |
| :----: | :----------------------------------------------------------------------------------------------------------------------: | :----------------------------------------------------------------------------------------------------------------------: |
|  𝒉𝒂𝒓𝒅  |  ![original-hard-light](https://user-images.githubusercontent.com/37491630/67563236-d0bb0b80-f70f-11e9-9966-79b0a69c5586.png)  |  ![material-hard-light](https://user-images.githubusercontent.com/37491630/67563213-c6990d00-f70f-11e9-97e3-6d92d3256245.png)  |
| 𝒎𝒆𝒅𝒊𝒖𝒎 | ![original-medium-light](https://user-images.githubusercontent.com/37491630/67563247-d44e9280-f70f-11e9-97b4-07f236221d9a.png) | ![material-medium-light](https://user-images.githubusercontent.com/37491630/67563221-ca2c9400-f70f-11e9-9bbb-217037a73988.png) |
|  𝒔𝒐𝒇𝒕  |  ![original-soft-light](https://user-images.githubusercontent.com/37491630/67563257-d7e21980-f70f-11e9-9e83-37efc571c9d9.png)  |  ![material-soft-light](https://user-images.githubusercontent.com/37491630/67563228-cd278480-f70f-11e9-8b79-22717cd4a43e.png)  |

In my opinion, the very first thing a color scheme should do is to be eye-friendly, anything else is secondary. This requires soft contrast and low blue light.

Gruvbox Material is based on Gruvbox, but with a very different color palette, I'm trying to adjust the foreground colors to match these requirements.

The syntax highlighting logic used in this branch is almost the same as the original gruvbox. In addition, I've developed [neosyn](https://github.com/sainnhe/gruvbox-material/tree/neosyn) branch that uses another syntax highlighting logic, and it has also been optimized for common file types and plugins.

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

Put something like this in your vimrc:

```vim
" if you don't set this option, this color scheme will fall back to the original gruvbox
set termguicolors

" for dark version
set background=dark

" for light version
set background=light

" set contrast
" this configuration option should be placed before `colorscheme gruvbox-material`
" available value: 'hard', 'medium', 'soft'
let g:gruvbox_material_background = 'soft'

colorscheme gruvbox-material
```

See `:help gruvbox-material-configuration` for more configuration options.

If you want to apply this color scheme temporarily, run this command in vim(**this may cause broken colors**):

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

# FAQ

**Q: It doesn't work as expected.**

**A:**

1. This color scheme is mainly designed for true colors, `set termguicolors` is required. Check output of `vim --version`, maybe your vim doesn't support `termguicolors`.

2. Maybe your terminal emulator doesn't support true colors, you can test it using [this script](https://unix.stackexchange.com/questions/404414/print-true-color-24-bit-test-pattern).

3. If you are running vim in tmux, you need to override default true colors of tmux, as tmux cannot display true color properly: [#1246 How to use true colors in vim under tmux?](https://github.com/tmux/tmux/issues/1246)

4. There are many highlight group links in syntax files while a color scheme may change them, enabling one color scheme based on another color scheme enabled is very likely to cause colors to break. If any color is broken, you can enable the color scheme in your vimrc instead of after vim startup.

**Q: What's your status line configuration?**

**A:** Check this [gist](https://gist.github.com/sainnhe/b8240bc047313fd6185bb8052df5a8fb).

**Q: What's the font used here?**

**A:** [Fira Code Nerd Font](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/FiraCode).

# Contribution

Check this gist for detailed instructions to hack this color scheme: [hack-color-schemes.md](https://gist.github.com/sainnhe/911f78cbb092ac58c8734c423a464935)

# Related Projects

Color reference: [dark](https://github.com/sainnhe/gruvbox-material-vscode/blob/master/colors-dark.yml), [light](https://github.com/sainnhe/gruvbox-material-vscode/blob/master/colors-light.yml)

**Note**: The following projects are sorted by alphabet.

## Code Editor

- [Visual Studio Code](https://github.com/sainnhe/gruvbox-material-vscode) by [@sainnhe](https://github.com/sainnhe/)

## Terminal Emulators

- [Alacritty](https://gist.github.com/kamek-pf/2eae4f570061a97788a8a9ca4c893797) by [@kamek-pf](https://github.com/kamek-pf/)
- [Kitty](https://github.com/rsaihe/gruvbox-material-kitty) by [@rsaihe](https://github.com/rsaihe/)
- [Tilix](https://github.com/sainnhe/gruvbox-material-tilix) by [@sainnhe](https://github.com/sainnhe/)
- [Windows Terminal](https://gist.github.com/sainnhe/587a1bba123cb25a3ed83ced613c20c0) by [@sainnhe](https://github.com/sainnhe/)

## Other

- [Tmux](https://gist.github.com/sainnhe/b8240bc047313fd6185bb8052df5a8fb) by [@sainnhe](https://github.com/sainnhe/)
- [Zsh](https://gist.github.com/sainnhe/f92372e14c59750b6ac8dc927ba9f7fe) by [@sainnhe](https://github.com/sainnhe/)

# Inspirations

- [morhetz/gruvbox](https://github.com/morhetz/gruvbox): original gruvbox
- [sainnhe/vim-color-desert-night](https://github.com/sainnhe/vim-color-desert-night): the `white` color in the dark variant
- [atom.io](https://atom.io): the `white` color in the dark variant
- [zefei/cake16](https://github.com/zefei/cake16): the `black` color in the light variant
- [Google Material Design](https://en.wikipedia.org/wiki/Material_Design)

# License

[MIT](./LICENSE) && [Anti-996](./Anti-996-LICENSE)
