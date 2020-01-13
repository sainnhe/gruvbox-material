<h1 align="center">
𝐃𝐚𝐫𝐤
</h1>

|        |                                                       𝐎𝐫𝐢𝐠𝐢𝐧𝐚𝐥 𝐆𝐫𝐮𝐯𝐛𝐨𝐱                                                        |                                                       𝐆𝐫𝐮𝐯𝐛𝐨𝐱 𝐌𝐚𝐭𝐞𝐫𝐢𝐚𝐥                                                        |
| :----: | :---------------------------------------------------------------------------------------------------------------------------: | :---------------------------------------------------------------------------------------------------------------------------: |
|  𝒉𝒂𝒓𝒅  |  ![original-hard-dark](https://user-images.githubusercontent.com/37491630/69468270-71d6c980-0d83-11ea-97f5-844accd52f68.png)  |  ![material-hard-dark](https://user-images.githubusercontent.com/37491630/69468250-65527100-0d83-11ea-98e8-04cc64e9270b.png)  |
| 𝒎𝒆𝒅𝒊𝒖𝒎 | ![original-medium-dark](https://user-images.githubusercontent.com/37491630/69468276-7602e700-0d83-11ea-8c31-4dd038e52114.png) | ![material-medium-dark](https://user-images.githubusercontent.com/37491630/69468257-697e8e80-0d83-11ea-8299-c0e5ecd132e3.png) |
|  𝒔𝒐𝒇𝒕  |  ![original-soft-dark](https://user-images.githubusercontent.com/37491630/69468280-78654100-0d83-11ea-9f69-2d0c0aa2dabb.png)  |  ![material-soft-dark](https://user-images.githubusercontent.com/37491630/69468264-6edbd900-0d83-11ea-815a-9d61509f3769.png)  |

<h1 align="center">
𝐋𝐢𝐠𝐡𝐭
</h1>

|        |                                                        𝐎𝐫𝐢𝐠𝐢𝐧𝐚𝐥 𝐆𝐫𝐮𝐯𝐛𝐨𝐱                                                        |                                                        𝐆𝐫𝐮𝐯𝐛𝐨𝐱 𝐌𝐚𝐭𝐞𝐫𝐢𝐚𝐥                                                        |
| :----: | :----------------------------------------------------------------------------------------------------------------------------: | :----------------------------------------------------------------------------------------------------------------------------: |
|  𝒉𝒂𝒓𝒅  |  ![original-hard-light](https://user-images.githubusercontent.com/37491630/69468272-73a08d00-0d83-11ea-8065-c2875d6c5cb1.png)  |  ![material-hard-light](https://user-images.githubusercontent.com/37491630/69468253-671c3480-0d83-11ea-932d-1fe0ba559a1b.png)  |
| 𝒎𝒆𝒅𝒊𝒖𝒎 | ![original-medium-light](https://user-images.githubusercontent.com/37491630/69468278-77341400-0d83-11ea-9aa3-b6a94c442989.png) | ![material-medium-light](https://user-images.githubusercontent.com/37491630/69468260-6b485200-0d83-11ea-8329-c4564e40f65b.png) |
|  𝒔𝒐𝒇𝒕  |  ![original-soft-light](https://user-images.githubusercontent.com/37491630/69468281-7a2f0480-0d83-11ea-8ab0-3f0dc15fd0cb.png)  |  ![material-soft-light](https://user-images.githubusercontent.com/37491630/69468266-700d0600-0d83-11ea-8aa1-e97b86864a08.png)  |

This color scheme is a port of [Gruvbox Material](https://github.com/gruvbox-material/gruvbox-material) for Vim/Neovim.

> Gruvbox Material is a color scheme designed for eye protection, based on [morhetz/gruvbox](https://github.com/morhetz/gruvbox).

## Features

- Carefully designed color palette for eye protection.
- Switch back to the original color palette whenever you like.
- Highly customizable.
- Rich support for common file types and plugins.
- [Italic support](https://github.com/sainnhe/icursive-nerd-font) 🎉

# Installation

## Via Plugin Manager

Take [vim-plug](https://github.com/junegunn/vim-plug) for example:

```vim
Plug 'gruvbox-material/vim', {'as': 'gruvbox-material'}
```

For better syntax highlighting support, please install [sheerun/vim-polyglot](https://github.com/sheerun/vim-polyglot).

## Manually

1. Clone this repository.
2. Copy `/path/to/gruvbox-material/colors/gruvbox-material.vim` to `~/.vim/colors/` .
3. Copy `/path/to/gruvbox-material/doc/gruvbox-material.txt` to `~/.vim/doc/` and execute `:helptags ~/.vim/doc/` to generate help tags.
4. To install [airline](https://github.com/vim-airline/vim-airline) theme, copy `/path/to/gruvbox-material/autoload/airline/themes/gruvbox_material.vim` to `~/.vim/autoload/airline/themes/gruvbox_material.vim` .
5. To install [lightline](https://github.com/itchyny/lightline.vim) theme, copy `/path/to/gruvbox-material/autoload/lightline/colorscheme/gruvbox_material.vim` to `~/.vim/autoload/lightline/colorscheme/gruvbox_material.vim` .

## AUR

There is a package available for Arch Linux users in AUR: [gruvbox-material-git](https://aur.archlinux.org/packages/gruvbox-material-git/)

# Usage

## Vim

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

**A:** [Fira Code Nerd Font](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/FiraCode).

# Related Projects

See [gruvbox-material/gruvbox-material](https://github.com/gruvbox-material/gruvbox-material)

# Maintainer(s)

This project is maintained by

- [@sainnhe](https://github.com/sainnhe/)

# License

[MIT](./LICENSE)
