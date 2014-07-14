#vim-mathematica
---
This plugin provides functionality for working with _Mathematica_ files in vim. Some of the features are:

 - Syntax highlighting for _Mathematica's_ `.m` files (including built-ins functions)
 - Omni code completion for ``System` `` functions (as of _Mathematica_ 10.0.0) using `Ctrl-X Ctrl-O`
 - Smart concealment of operators such as `:>` with `⧴` and Front-End generated symbols such as `\[Alpha]` with their Greek counterpart, `α`.

Please read the features section for more details.

##Installation

To use the plugin, extract the contents of the [zip file](https://github.com/rsmenon/vim-mathematica/archive/master.zip) to your `~/.vim` directory (or its equivalent on Windows). If you use [Pathogen](https://github.com/tpope/vim-pathogen), then you can either extract the contents to `~/.vim/bundle/vim-mathematica` or clone this git repository

```
git clone git@github.com:rsmenon/vim-mathematica.git ~/.vim/bundle/vim-mathematica
```

##Features

###Syntax highlighting
Highlighting is supported for

 - Built-in symbols (as of 10.0.0)
 - User defined symbols
 - Strings, numbers, operators and comments
 - Messages and patterns (only the LHS of named patterns)

By default, the highlight groups are linked to the standard highlight groups to give the user control over its appearance (depends on their chosen colorscheme). However, if you use the [Solarized](https://github.com/altercation/vim-colors-solarized) colorscheme, then you can add the following to your `.vimrc` for some sane colors that closely resemble the Front End's highlighting:

```
let g:mma_highlight_option = "solarized"
```

**Screenshot:**

<img src="http://i.stack.imgur.com/Knid6.png" height=200></img>

**NOTE:** To use syntax highlighting, vim must have been compiled with the `+syntax` option.

###Code completion
Since the plugin is aware of all the built-in functions in _Mathematica_, it can also perform code completion for these functions. To complete any partially entered function, press `Ctrl-X Ctrl-O` when in insert mode to bring up a list of options

**Screenshot:**

<img src="http://i.stack.imgur.com/IprLF.png" height=200></img>

**NOTE:** To use code completion, you must have `filetype plugin on` in your `.vimrc`
###Smart Conceal
The conceal features make it easier to read code that has been copied from the Front End. It "hides" symbols such as `\[Alpha]`, which are displayed as `α` in the Front End, and shows the equivalent Greek letter instead. Some common operators are also prettified, such as `⧴` for `:>`, `≠` for `!=`, etc.

To enable this feature, ensure that you have a font that has good unicode support (like Deja Vu Mono) and enter the following in your `.vimrc`

```
let g:mma_candy = 1
```
To turn off the conceal features, simply change the value to `0`. Note that the source code is **not** modified. The conceal feature affects **only** the display and is disabled for the current line so that you know what you're editing.

**Screenshot:** (first line shows the concealed characters and the second the actual source)

<img src="http://i.stack.imgur.com/NrWxO.png" height=40></img>

There is a second level of conceal features (in addition to the above) which can be turned on with

```
let g:mma_candy = 2
```
However, these might not look good in all fonts, and are also a tad awkward, so turn it on only if you like it (I don't use them).

<img src="http://i.stack.imgur.com/tZUcE.png" height=40></img>

**NOTE:** To use the conceal features, vim must have been compiled with the `+conceal` option and the encoding must be set to `utf-8`.
