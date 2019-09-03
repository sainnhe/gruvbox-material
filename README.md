<h1 align="center">
𝐃𝐚𝐫𝐤
</h1>

|        |                                                     𝐎𝐫𝐢𝐠𝐢𝐧𝐚𝐥 𝐆𝐫𝐮𝐯𝐛𝐨𝐱                                                     |                                                     𝐆𝐫𝐮𝐯𝐛𝐨𝐱 𝐌𝐚𝐭𝐞𝐫𝐢𝐚𝐥                                                     |
| :----: | :----------------------------------------------------------------------------------------------------------------------: | :----------------------------------------------------------------------------------------------------------------------: |
|  𝒉𝒂𝒓𝒅  |  ![original-hard](https://user-images.githubusercontent.com/37491630/64962022-32bd6100-d886-11e9-9504-f924c07022ae.png)  |  ![material-hard](https://user-images.githubusercontent.com/37491630/64961995-289b6280-d886-11e9-9b8b-c5ea74d8da5f.png)  |
| 𝒎𝒆𝒅𝒊𝒖𝒎 | ![original-medium](https://user-images.githubusercontent.com/37491630/64962019-318c3400-d886-11e9-99cf-4ea0145c0ae3.png) | ![material-medium](https://user-images.githubusercontent.com/37491630/65002822-156baf80-d8e5-11e9-9b20-ffe920584c5a.png) |
|  𝒔𝒐𝒇𝒕  |  ![original-soft](https://user-images.githubusercontent.com/37491630/64962028-34872480-d886-11e9-828c-073cc40e8701.png)  |  ![material-soft](https://user-images.githubusercontent.com/37491630/64962007-2c2ee980-d886-11e9-8a11-aacff84d33f7.png)  |

<h1 align="center">
𝐋𝐢𝐠𝐡𝐭
</h1>

|        |                                                     𝐎𝐫𝐢𝐠𝐢𝐧𝐚𝐥 𝐆𝐫𝐮𝐯𝐛𝐨𝐱                                                     |                                                     𝐆𝐫𝐮𝐯𝐛𝐨𝐱 𝐌𝐚𝐭𝐞𝐫𝐢𝐚𝐥                                                     |
| :----: | :----------------------------------------------------------------------------------------------------------------------: | :----------------------------------------------------------------------------------------------------------------------: |
|  𝒉𝒂𝒓𝒅  |  ![original-hard](https://user-images.githubusercontent.com/37491630/64962226-934c9e00-d886-11e9-91fc-c67b08cb6da4.png)  |  ![material-hard](https://user-images.githubusercontent.com/37491630/64962200-8c259000-d886-11e9-9ecb-540f1ccb0b4b.png)  |
| 𝒎𝒆𝒅𝒊𝒖𝒎 | ![original-medium](https://user-images.githubusercontent.com/37491630/64962235-95aef800-d886-11e9-96a5-1cdf59857e55.png) | ![material-medium](https://user-images.githubusercontent.com/37491630/64962206-8e87ea00-d886-11e9-9734-33cdc496dca6.png) |
|  𝒔𝒐𝒇𝒕  |  ![original-soft](https://user-images.githubusercontent.com/37491630/64962251-98a9e880-d886-11e9-82e8-be7e1bc8e15c.png)  |  ![material-soft](https://user-images.githubusercontent.com/37491630/64962218-9182da80-d886-11e9-9b22-f4a4a39f80f0.png)  |

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

" for dark version
set background=dark

" for light version
set background=light

colorscheme gruvbox-material
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

**Note:** The following commands should be executed **before** `colorscheme gruvbox-material`

- By default, the background is `medium`. To use `hard` background, add `let g:gruvbox_material_background = 'hard'` to your vimrc. To use `soft` background, add `let g:gruvbox_material_background = 'soft'` to your vimrc.
- By default, italic is enabled in `Comment`. To disable italic in `Comment`, add `let g:gruvbox_material_disable_italic_comment = 1` to your vimrc.
- By default, bold is partly enabled. To completely enable bold, add `let g:gruvbox_material_enable_bold = 1` to your vimrc.
- By default, bold is enabled in lightline color scheme. To disable bold in lightline color scheme, add `let g:gruvbox_material_lightline_disable_bold = 1` to your vimrc.
- To use transparent background, add `let g:gruvbox_material_transparent_background = 1` to your vimrc.

# FAQ

**Q: It doesn't work as expected.**

**A:**

1. This color scheme is mainly designed for true colors, `set termguicolors` is required. Check output of `vim --version`, maybe your vim doesn't support `termguicolors`

2. Maybe your terminal emulator doesn't support true colors, you can test it using [this script](https://unix.stackexchange.com/questions/404414/print-true-color-24-bit-test-pattern)

3. If you are running vim in tmux, you need to override default true colors of tmux, as tmux cannot display true color properly: [#1246 How to use true colors in vim under tmux?](https://github.com/tmux/tmux/issues/1246)

4. There are many highlight group links in syntax files while a color scheme may change them, enabling one color scheme based on another color scheme enabled is very likely to cause color broken. If there is any color broken, you can enable the color scheme in your vimrc instead of after vim startup.

**Q: What's your status line configuration?**

**A:** Check this [gist](https://gist.github.com/sainnhe/b8240bc047313fd6185bb8052df5a8fb).

**Q: What's the font used here?**

**A:** [Fira Code Nerd Font](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/FiraCode).

# Contribution

Check this gist for detailed instructions to hack this color scheme: [hack-color-schemes.md](https://gist.github.com/sainnhe/911f78cbb092ac58c8734c423a464935)

# Related Projects

## Code Editor

- [Visual Studio Code](https://github.com/sainnhe/gruvbox-material-vscode) by [@sainnhe](https://github.com/sainnhe/)

## Terminal Emulators

- [Alacritty](https://gist.github.com/kamek-pf/2eae4f570061a97788a8a9ca4c893797) by [@kamek-pf](https://github.com/kamek-pf/)
- [Kitty](https://github.com/rsaihe/gruvbox-material-kitty) by [@rsaihe](https://github.com/rsaihe/)
- [Tilix](https://github.com/sainnhe/gruvbox-material-tilix) by [@sainnhe](https://github.com/sainnhe/)
- [Windows Terminal](https://gist.github.com/sainnhe/587a1bba123cb25a3ed83ced613c20c0) by [@sainnhe](https://github.com/sainnhe/)

## Other

- [Zsh](https://gist.github.com/sainnhe/f92372e14c59750b6ac8dc927ba9f7fe) by [@sainnhe](https://github.com/sainnhe/)
- [Tmux](https://gist.github.com/sainnhe/b8240bc047313fd6185bb8052df5a8fb) by [@sainnhe](https://github.com/sainnhe/)

# License

[MIT](./LICENSE) && [Anti-996](./Anti-996-LICENSE)
