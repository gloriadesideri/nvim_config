# My Nvim setup for taking LaTex notes
I am an engineering student so I don't have time to review my notes: once they are taken they are written in stone. I needed to find a way to take fast notes in LaTex. 
This forced to follow the majority of lectures in Polimi (even though for some courses I preferred watching them in 2x at home) and have useful notes at the end of each course.
I assume you already know some LaTex, you know how to install basic LaTex packages and you don't react like [this](https://media.giphy.com/media/10FHR5A4cXqVrO/giphy.gif) when you see a terminal.
If you have never used vim or nvim I suggest you to watch [this](https://www.youtube.com/watch?v=c4OyfL5o7DU).
I am 100% sure this guide works for MacOS, 90% sure it works on Linux but I don't know about Windows, so if someone manages to make it work on Windows please give me a feedback and feel
free to contribute with a pull request (or just install WSL on your machine).
## Prerequisites
You need to install Nvim (of course) and you can do it from [here](https://github.com/neovim/neovim/blob/master/INSTALL.md). Make sure to install the latest stable version. 
Once you have installed it type `nvim --version` in your terminal and make sure the build type is `Release`.

You need to install LaTex on your local machine. You can do this [here](https://www.latex-project.org/get/). If you are a MacOS user I suggest you to download BasicTex instead of the full package.
## How to configure Nvim
- clone this repository in your local machine
- copy the `nvim` folder inside your `.config` folder
- navigate to `nvim/lua/user`
- type `nvim plugins-setup.lua` in you terminal
- type `:w` and wait for it to install the plugins
- type `:q`
- type `nvim` again to enter nvim
## What is included
I included several packages to allow sintax highliting, snippets and navigation, plus a package to compile LaTex code. You can find the complete list
in `nvim/lua/user/plugins-setup.lua` and add your own plugins. Each plugin has its own configuration in the folder `nvim/lua/user/plugins` so if you add a new plugin
make sure to include it s configuration there. You will also need to include the configuration file in the `nvim/init.lua` file.
In particular this configuration uses Skim as a pdf reader, if you want to change to another readed check out the [VimTex documentation](https://github.com/lervag/vimtex) and modify the file
`nvim/lua/user/plugins/vimtex.lua`. The line to modify is the following:
```
vim.g['vimtex_view_method'] = 'skim'
```
## Snippets
The main reason why I created this configuration was to use snippets and shortcuts. In particular when you are in normal mode you can use the following:
- space + e: toggle and untoggle navigation bar
- space + ff: find files within current working directory,
- space + fs: find string under current working directory
- space + fc: find string under cursor
- space + sv: split vertically
All shortcuts are listed in `nvim/lua/user/core/keymaps.lua` and you can add your own.

For snippets I used mostly [luasnip](https://github.com/L3MON4D3/LuaSnip). The folder `nvim/snippets` contains the snip file for every languge. I just included LaTex since is what I use this template for but you can add
the file for the labguages you use. 
Some of the snippets are:
- itemize: creates a lust
- col3vec: creates a column vector
- img: includes an image
I suggest you to look at the file to see the template specific snippets and to add your own.

## How to start a new project
The template I am using is the [following](https://github.com/SeniorMars/dotfiles/tree/master/latex_template). To be able to use it you shoud install the following LaTex packages first:
- newpxmath.sty
- cancel.sty
- enumitem.sty
- theoremref.sty
- tcolorbox.sty
- varwidth.sty
- tikz-cd.sty
- algorithm2e.sty
- comment.sty
- import.sty
- xifthen.sty
- transparent.sty
- environ.sty
- tikzfill.image.sty
- pdfcol.sty
- listingsutf8.sty
- ifoddpage.sty
- relsize.sty
- ifmtarg.sty
- tikzsymbols.sty
- titletoc.sty
- pfg-blur.sty

If still you get compilation error look at the `template.log` file and see what is missing.
1. Clone the repository I listed above
2. Create a folder for your notes
3. Copy the template.tex, macros.tex, letterfonts.tex and preample.tex in your folder
4. type `nvim template.tex`
5. type esc to switch to normal mode
6. type `:VimTexCompile` to start the compiler
7. Every time you save the document (`:w`) It will compile it
8. (Optional) include the `float` package at the top of template.tex

If you got all the way here you are probably a computer scientist. 
The idea for this configuration came from these two blog posts:
- [https://castel.dev/post/lecture-notes-2/][https://castel.dev/post/lecture-notes-2/]
- [https://castel.dev/post/lecture-notes-1/][https://castel.dev/post/lecture-notes-1/]
